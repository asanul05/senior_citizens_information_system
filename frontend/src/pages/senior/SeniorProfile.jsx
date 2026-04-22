import { useState, useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Card, Row, Col, Typography, Button, Tag, Space, Spin, Descriptions, Avatar, Table, Empty, Alert, Upload, message, Grid } from 'antd';
import {
    UserOutlined,
    SafetyOutlined,
    LogoutOutlined,
    IdcardOutlined,
    EnvironmentOutlined,
    PhoneOutlined,
    CalendarOutlined,
    HomeOutlined,
    ArrowLeftOutlined,
    MailOutlined,
    TeamOutlined,
    HeartOutlined,
    TagOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { seniorPortalApi } from '../../services/api';

const { Title, Text, Paragraph } = Typography;

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:8000/api';

const SeniorProfile = () => {
    const [senior, setSenior] = useState(null);
    const [profile, setProfile] = useState(null);
    const [loading, setLoading] = useState(true);
    const [uploadingPhoto, setUploadingPhoto] = useState(false);
    const navigate = useNavigate();
    const screens = Grid.useBreakpoint();
    const isMobile = !screens.sm;

    useEffect(() => {
        const storedSenior = localStorage.getItem('senior');
        if (!storedSenior) {
            navigate('/senior/login');
            return;
        }
        const seniorData = JSON.parse(storedSenior);
        setSenior(seniorData);
        fetchProfile(seniorData.id);
    }, [navigate]);

    const fetchProfile = async (seniorId) => {
        try {
            const response = await seniorPortalApi.getProfile(seniorId);
            const profileData = response.data.data;
            setProfile(profileData);

            const storedSenior = localStorage.getItem('senior');
            if (storedSenior) {
                const parsedSenior = JSON.parse(storedSenior);
                localStorage.setItem('senior', JSON.stringify({
                    ...parsedSenior,
                    photo: profileData.photo || null,
                    photo_url: profileData.photo_url || null,
                }));
            }
        } catch (error) {
            console.error('Failed to fetch profile:', error);
        } finally {
            setLoading(false);
        }
    };

    const getPhotoSrc = () => {
        if (!profile) return undefined;
        if (profile.photo_url) return profile.photo_url;
        if (profile.photo) return `${API_URL.replace('/api', '')}/storage/${profile.photo}`;
        return undefined;
    };

    const handlePhotoUpload = async ({ file, onSuccess, onError }) => {
        if (!senior?.id) {
            message.error('Unable to identify senior account. Please re-login.');
            onError?.(new Error('Missing senior id'));
            return;
        }

        try {
            setUploadingPhoto(true);
            const formData = new FormData();
            formData.append('photo', file);

            const response = await seniorPortalApi.updateProfilePhoto(senior.id, formData);
            const photoData = response.data?.data || {};

            setProfile((prev) => ({
                ...prev,
                photo: photoData.photo || prev?.photo || null,
                photo_url: photoData.photo_url || prev?.photo_url || null,
            }));

            const storedSenior = localStorage.getItem('senior');
            if (storedSenior) {
                const parsedSenior = JSON.parse(storedSenior);
                localStorage.setItem('senior', JSON.stringify({
                    ...parsedSenior,
                    photo: photoData.photo || null,
                    photo_url: photoData.photo_url || null,
                }));
            }

            message.success(response.data?.message || 'Profile photo updated.');
            onSuccess?.('ok');
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to upload profile photo.');
            onError?.(error);
        } finally {
            setUploadingPhoto(false);
        }
    };

    const beforeUpload = (file) => {
        const isValidType = ['image/jpeg', 'image/jpg', 'image/png'].includes(file.type);
        if (!isValidType) {
            message.error('Only JPG or PNG images are allowed.');
            return Upload.LIST_IGNORE;
        }

        const isValidSize = file.size / 1024 / 1024 <= 5;
        if (!isValidSize) {
            message.error('Image must be 5MB or smaller.');
            return Upload.LIST_IGNORE;
        }

        return true;
    };

    const handleLogout = () => {
        localStorage.removeItem('senior_token');
        localStorage.removeItem('senior');
        navigate('/senior/login');
    };

    if (!senior) return null;

    const genderName = profile?.gender || '—';

    /* ─── Helpers ─── */
    const renderTags = (items) => {
        if (!items || !Array.isArray(items) || items.length === 0) return <Text type="secondary">None</Text>;
        return <Text>{items.join(', ')}</Text>;
    };

    const frequencyLabels = {
        monthly: 'Monthly',
        quarterly: 'Quarterly',
        semi_annual: 'Semi-Annual',
        annual: 'Annual',
    };

    /* ─── Family Section ─── */
    const renderFamily = () => {
        const members = profile?.family_members || [];
        const emergency = members.find(m => m.is_emergency_contact);

        return (
            <Card
                title={<><TeamOutlined style={{ marginRight: 8, color: '#f59e0b' }} />Family Composition</>}
                style={{ borderRadius: 16, marginTop: 24 }}
            >
                {emergency && (
                    <Alert
                        type="info"
                        showIcon
                        icon={<PhoneOutlined />}
                        style={{ marginBottom: 16 }}
                        message={
                            <span>
                                <strong>Emergency Contact:</strong>{' '}
                                {[emergency.first_name, emergency.middle_name, emergency.last_name].filter(Boolean).join(' ')}
                                {emergency.relationship && ` (${emergency.relationship})`}
                                {emergency.mobile_number && ` · ${emergency.mobile_number}`}
                            </span>
                        }
                    />
                )}
                {members.length > 0 ? (
                    <Table
                        dataSource={members}
                        rowKey={(_, i) => i}
                        size="small"
                        pagination={false}
                        scroll={{ x: 700 }}
                        columns={[
                            {
                                title: 'Name',
                                key: 'name',
                                fixed: 'left',
                                width: 180,
                                render: (_, r) => {
                                    const name = [r.first_name, r.middle_name, r.last_name, r.extension].filter(Boolean).join(' ');
                                    return (
                                        <Space>
                                            {name || '-'}
                                            {r.is_emergency_contact && <Tag color="red" style={{ fontSize: 11 }}>EC</Tag>}
                                        </Space>
                                    );
                                },
                            },
                            {
                                title: 'Relationship',
                                dataIndex: 'relationship',
                                width: 110,
                                render: v => v || '-',
                            },
                            {
                                title: 'Date of Birth',
                                dataIndex: 'birthdate',
                                width: 120,
                                render: v => v ? dayjs(v).format('MMM D, YYYY') : '-',
                            },
                            {
                                title: 'Age',
                                key: 'age',
                                width: 60,
                                render: (_, r) => r.birthdate ? dayjs().diff(dayjs(r.birthdate), 'year') : (r.age || '-'),
                            },
                            {
                                title: 'Mobile',
                                dataIndex: 'mobile_number',
                                width: 130,
                                render: v => v || '-',
                            },
                        ]}
                    />
                ) : (
                    <Empty description="No family members recorded" />
                )}
            </Card>
        );
    };

    /* ─── Association Section ─── */
    const renderAssociation = () => {
        const sectors = profile?.target_sectors || [];
        const subCats = profile?.sub_categories || [];

        if (sectors.length === 0 && subCats.length === 0) {
            return (
                <Card
                    title={<><TagOutlined style={{ marginRight: 8, color: '#6366f1' }} />Association</>}
                    style={{ borderRadius: 16, marginTop: 24 }}
                >
                    <Empty description="No association data recorded" />
                </Card>
            );
        }

        return (
            <Card
                title={<><TagOutlined style={{ marginRight: 8, color: '#6366f1' }} />Association</>}
                style={{ borderRadius: 16, marginTop: 24 }}
            >
                <Row gutter={[24, 16]}>
                    <Col xs={24} md={12}>
                        <Text strong style={{ display: 'block', marginBottom: 8 }}>Target Sectors</Text>
                        {sectors.length > 0 ? (
                            <Space wrap>{sectors.map((s, i) => <Tag key={i} color="blue">{s}</Tag>)}</Space>
                        ) : (
                            <Text type="secondary">None</Text>
                        )}
                    </Col>
                    <Col xs={24} md={12}>
                        <Text strong style={{ display: 'block', marginBottom: 8 }}>Sub-Categories</Text>
                        {subCats.length > 0 ? (
                            <Space wrap>{subCats.map((c, i) => <Tag key={i} color="green">{c}</Tag>)}</Space>
                        ) : (
                            <Text type="secondary">None</Text>
                        )}
                    </Col>
                </Row>
            </Card>
        );
    };

    /* ─── Health Profile Section ─── */
    const renderHealth = () => {
        const hp = profile?.health_profile;
        if (!hp) {
            return (
                <Card
                    title={<><HeartOutlined style={{ marginRight: 8, color: '#dc2626' }} />Health Profile</>}
                    style={{ borderRadius: 16, marginTop: 24 }}
                >
                    <Empty description="No health profile recorded" />
                </Card>
            );
        }

        return (
            <Card
                title={<><HeartOutlined style={{ marginRight: 8, color: '#dc2626' }} />Health Profile</>}
                style={{ borderRadius: 16, marginTop: 24 }}
            >
                <Descriptions bordered size="small" column={{ xs: 1, sm: 2 }} style={{ marginBottom: 16 }}>
                    <Descriptions.Item label="Blood Type">
                        {hp.blood_type ? <Tag color="red">{hp.blood_type}</Tag> : <Text type="secondary">Not specified</Text>}
                    </Descriptions.Item>
                    <Descriptions.Item label="Physical Disability">
                        {hp.physical_disability || <Text type="secondary">None</Text>}
                    </Descriptions.Item>
                </Descriptions>

                <Title level={5} style={{ marginTop: 16, marginBottom: 8 }}>Health Problems / Ailments</Title>
                <div style={{ marginBottom: 8 }}>{renderTags(hp.health_problems, 'red')}</div>
                {hp.health_problems_other && <Text type="secondary">Others: {hp.health_problems_other}</Text>}

                <Row gutter={16} style={{ marginTop: 16 }}>
                    <Col xs={24} md={8}>
                        <Title level={5} style={{ marginBottom: 8 }}>Dental Concerns</Title>
                        <div style={{ marginBottom: 4 }}>{renderTags(hp.dental_concerns, 'orange')}</div>
                        {hp.dental_concerns_other && <Text type="secondary">Others: {hp.dental_concerns_other}</Text>}
                    </Col>
                    <Col xs={24} md={8}>
                        <Title level={5} style={{ marginBottom: 8 }}>Visual Concerns</Title>
                        <div style={{ marginBottom: 4 }}>{renderTags(hp.visual_concerns, 'purple')}</div>
                        {hp.visual_concerns_other && <Text type="secondary">Others: {hp.visual_concerns_other}</Text>}
                    </Col>
                    <Col xs={24} md={8}>
                        <Title level={5} style={{ marginBottom: 8 }}>Hearing Concerns</Title>
                        <div style={{ marginBottom: 4 }}>{renderTags(hp.hearing_concerns, 'cyan')}</div>
                        {hp.hearing_concerns_other && <Text type="secondary">Others: {hp.hearing_concerns_other}</Text>}
                    </Col>
                </Row>

                <Row gutter={16} style={{ marginTop: 16 }}>
                    <Col xs={24} md={12}>
                        <Title level={5} style={{ marginBottom: 8 }}>Social / Emotional</Title>
                        <div style={{ marginBottom: 4 }}>{renderTags(hp.social_emotional, 'volcano')}</div>
                        {hp.social_emotional_other && <Text type="secondary">Others: {hp.social_emotional_other}</Text>}
                    </Col>
                    <Col xs={24} md={12}>
                        <Title level={5} style={{ marginBottom: 8 }}>Area of Difficulty</Title>
                        <div>{renderTags(hp.area_of_difficulty, 'gold')}</div>
                    </Col>
                </Row>

                {hp.maintenance_medicines && (
                    <div style={{ marginTop: 16 }}>
                        <Title level={5} style={{ marginBottom: 8 }}>Maintenance Medicines</Title>
                        <Paragraph style={{ background: '#f5f5f5', padding: 12, borderRadius: 8 }}>
                            {hp.maintenance_medicines}
                        </Paragraph>
                    </div>
                )}

                <Descriptions bordered size="small" column={{ xs: 1, sm: 2 }} style={{ marginTop: 16 }}>
                    <Descriptions.Item label="Scheduled Check-up">
                        {hp.has_scheduled_checkup === true ? <Tag color="green">Yes</Tag> : hp.has_scheduled_checkup === false ? <Tag>No</Tag> : <Text type="secondary">Not specified</Text>}
                    </Descriptions.Item>
                    <Descriptions.Item label="Check-up Frequency">
                        {hp.checkup_frequency ? <Tag color="blue">{frequencyLabels[hp.checkup_frequency] || hp.checkup_frequency}</Tag> : <Text type="secondary">N/A</Text>}
                    </Descriptions.Item>
                </Descriptions>
            </Card>
        );
    };

    return (
        <div style={{ minHeight: '100vh', background: '#f9fafb' }}>
            {/* Header */}
            <div style={{
                background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                color: 'white',
                padding: '24px',
            }}>
                <div style={{
                    maxWidth: 1000,
                    margin: '0 auto',
                    display: 'flex',
                    justifyContent: 'space-between',
                    alignItems: isMobile ? 'flex-start' : 'center',
                    flexWrap: 'wrap',
                    rowGap: 12,
                    columnGap: 16,
                }}>
                    <div style={{
                        display: 'flex',
                        alignItems: 'center',
                        gap: 16,
                        minWidth: 0,
                        flex: isMobile ? '1 1 100%' : '1 1 auto',
                    }}>
                        <SafetyOutlined style={{ fontSize: 28 }} />
                        <div style={{ minWidth: 0 }}>
                            <Title level={4} style={{ color: 'white', margin: 0, whiteSpace: 'nowrap' }}>Senior Portal</Title>
                            <Text style={{ color: 'rgba(255,255,255,0.8)' }}>My Profile</Text>
                        </div>
                    </div>
                    <Space
                        wrap
                        size="middle"
                        style={{
                            marginLeft: isMobile ? 0 : 'auto',
                            width: isMobile ? '100%' : 'auto',
                            justifyContent: isMobile ? 'flex-start' : 'flex-end',
                        }}
                    >
                        <Button ghost onClick={() => navigate('/senior/dashboard')} icon={<ArrowLeftOutlined />}>
                            Dashboard
                        </Button>
                        <Button ghost onClick={handleLogout} icon={<LogoutOutlined />}>
                            Logout
                        </Button>
                    </Space>
                </div>
            </div>

            {/* Content */}
            <div style={{ maxWidth: 1000, margin: '0 auto', padding: '24px' }}>
                {loading ? (
                    <div style={{ textAlign: 'center', padding: 60 }}>
                        <Spin size="large" />
                    </div>
                ) : profile ? (
                    <>
                        {/* Profile Header Card */}
                        <Card style={{ marginBottom: 24, borderRadius: 16, overflow: 'hidden' }}>
                            <div style={{
                                background: 'linear-gradient(135deg, #4338ca15 0%, #6366f115 100%)',
                                margin: -24, marginBottom: 24, padding: '32px 24px',
                                display: 'flex', alignItems: 'center', gap: 24,
                                flexWrap: 'wrap',
                            }}>
                                <Avatar
                                    size={100}
                                    icon={<UserOutlined />}
                                    style={{
                                        background: '#4338ca',
                                        fontSize: 48,
                                        boxShadow: '0 8px 24px rgba(0,0,0,0.12)',
                                    }}
                                    src={getPhotoSrc()}
                                />
                                <div>
                                    <Title level={2} style={{ margin: 0 }}>
                                        {profile.first_name} {profile.middle_name ? profile.middle_name + ' ' : ''}{profile.last_name}{profile.extension ? ' ' + profile.extension : ''}
                                    </Title>
                                    <Space size="middle" style={{ marginTop: 8 }} wrap>
                                        <Tag color="blue" icon={<IdcardOutlined />} style={{ fontSize: 14, padding: '4px 12px' }}>
                                            OSCA ID: {profile.osca_id}
                                        </Tag>
                                        <Tag color="green" icon={<EnvironmentOutlined />} style={{ fontSize: 14, padding: '4px 12px' }}>
                                            {profile.barangay}
                                        </Tag>
                                        <Tag color="purple" style={{ fontSize: 14, padding: '4px 12px' }}>
                                            {profile.age} years old
                                        </Tag>
                                    </Space>
                                    <div style={{ marginTop: 12 }}>
                                        <Upload
                                            showUploadList={false}
                                            accept=".jpg,.jpeg,.png"
                                            beforeUpload={beforeUpload}
                                            customRequest={handlePhotoUpload}
                                        >
                                            <Button loading={uploadingPhoto}>Change Profile Picture</Button>
                                        </Upload>
                                    </div>
                                </div>
                            </div>
                        </Card>

                        {/* Personal Information + Contact */}
                        <Row gutter={[24, 24]}>
                            <Col xs={24} md={12}>
                                <Card
                                    title={<><UserOutlined style={{ marginRight: 8, color: '#4338ca' }} />Personal Information</>}
                                    style={{ borderRadius: 16, height: '100%' }}
                                >
                                    <Descriptions column={1} labelStyle={{ fontWeight: 500, color: '#6b7280', width: 140 }} contentStyle={{ color: '#1f2937' }}>
                                        <Descriptions.Item label="First Name">{profile.first_name}</Descriptions.Item>
                                        <Descriptions.Item label="Middle Name">{profile.middle_name || '—'}</Descriptions.Item>
                                        <Descriptions.Item label="Last Name">{profile.last_name}</Descriptions.Item>
                                        <Descriptions.Item label="Gender">
                                            <Tag color="blue">{genderName}</Tag>
                                        </Descriptions.Item>
                                        <Descriptions.Item label="Civil Status">{profile.civil_status || '—'}</Descriptions.Item>
                                        <Descriptions.Item label="Birthdate">
                                            <Space>
                                                <CalendarOutlined style={{ color: '#6366f1' }} />
                                                {profile.birthdate ? dayjs(profile.birthdate).format('MMMM D, YYYY') : '—'}
                                            </Space>
                                        </Descriptions.Item>
                                        <Descriptions.Item label="Age">
                                            <Tag color="purple" style={{ fontWeight: 600 }}>{profile.age} years old</Tag>
                                        </Descriptions.Item>
                                    </Descriptions>
                                </Card>
                            </Col>

                            <Col xs={24} md={12}>
                                <Card
                                    title={<><EnvironmentOutlined style={{ marginRight: 8, color: '#059669' }} />Contact & Address</>}
                                    style={{ borderRadius: 16, height: '100%' }}
                                >
                                    <Descriptions column={1} labelStyle={{ fontWeight: 500, color: '#6b7280', width: 140 }} contentStyle={{ color: '#1f2937' }}>
                                        <Descriptions.Item label="Mobile Number">
                                            <Space>
                                                <PhoneOutlined style={{ color: '#059669' }} />
                                                {profile.mobile_number || '—'}
                                            </Space>
                                        </Descriptions.Item>
                                        {profile.telephone_number && (
                                            <Descriptions.Item label="Telephone">
                                                <Space>
                                                    <PhoneOutlined style={{ color: '#059669' }} />
                                                    {profile.telephone_number}
                                                </Space>
                                            </Descriptions.Item>
                                        )}
                                        {profile.email && (
                                            <Descriptions.Item label="Email">
                                                <Space>
                                                    <MailOutlined style={{ color: '#6366f1' }} />
                                                    {profile.email}
                                                </Space>
                                            </Descriptions.Item>
                                        )}
                                        <Descriptions.Item label="Barangay">
                                            <Tag color="green" icon={<EnvironmentOutlined />}>{profile.barangay}</Tag>
                                        </Descriptions.Item>
                                        <Descriptions.Item label="Address">
                                            <Space>
                                                <HomeOutlined style={{ color: '#6366f1' }} />
                                                {profile.address || '—'}
                                            </Space>
                                        </Descriptions.Item>
                                    </Descriptions>
                                </Card>
                            </Col>
                        </Row>

                        {/* Family Composition */}
                        {renderFamily()}

                        {/* Association */}
                        {renderAssociation()}

                        {/* Health Profile */}
                        {renderHealth()}

                        {/* Info Note */}
                        <Card style={{ marginTop: 24, borderRadius: 16, background: '#fffbeb', border: '1px solid #fde68a' }}>
                            <Text style={{ color: '#92400e' }}>
                                <strong>Need to update your information?</strong> Please visit your nearest OSCA Field Office to request profile changes.
                            </Text>
                        </Card>
                    </>
                ) : (
                    <Card style={{ textAlign: 'center', padding: 40, borderRadius: 16 }}>
                        <Text type="secondary">Unable to load profile information. Please try again later.</Text>
                    </Card>
                )}

                {/* Footer */}
                <div style={{ textAlign: 'center', marginTop: 32 }}>
                    <Link to="/senior/dashboard" style={{ color: '#4338ca' }}>← Back to Dashboard</Link>
                </div>
            </div>
        </div>
    );
};

export default SeniorProfile;

