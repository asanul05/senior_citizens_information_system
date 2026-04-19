import { useState, useEffect } from 'react';
import {
    Modal,
    Descriptions,
    Tag,
    Space,
    Typography,
    Tabs,
    Card,
    Row,
    Col,
    Spin,
    Avatar,
    Divider,
    Table,
    Empty,
    Statistic,
    Badge,
    Alert,
    Button,
    Upload,
    message,
} from 'antd';
import {
    UserOutlined,
    PhoneOutlined,
    MailOutlined,
    HomeOutlined,
    CalendarOutlined,
    IdcardOutlined,
    GiftOutlined,
    FileTextOutlined,
    CheckCircleOutlined,
    CloseCircleOutlined,
    ManOutlined,
    WomanOutlined,
    TeamOutlined,
    TagOutlined,
    HeartOutlined,
    CameraOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { seniorsApi, benefitsApi } from '../services/api';
import ReportDeceasedModal from './ReportDeceasedModal';

const { Title, Text, Paragraph } = Typography;
const { TabPane } = Tabs;
const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:8000/api';

function SeniorProfileModal({ visible, seniorId, onClose }) {
    const [loading, setLoading] = useState(false);
    const [senior, setSenior] = useState(null);
    const [claimsLoading, setClaimsLoading] = useState(false);
    const [claims, setClaims] = useState([]);
    const [deceasedModalVisible, setDeceasedModalVisible] = useState(false);
    const [uploadingPhoto, setUploadingPhoto] = useState(false);

    useEffect(() => {
        if (visible && seniorId) {
            fetchSenior();
            fetchClaims();
        }
    }, [visible, seniorId]);

    const fetchSenior = async () => {
        setLoading(true);
        try {
            const response = await seniorsApi.getById(seniorId);
            setSenior(response.data.data);
        } catch (error) {
            console.error('Failed to fetch senior:', error);
        } finally {
            setLoading(false);
        }
    };

    const fetchClaims = async () => {
        setClaimsLoading(true);
        try {
            const response = await benefitsApi.getSeniorClaims(seniorId);
            setClaims(response.data.data?.claims || []);
        } catch (error) {
            console.error('Failed to fetch claims:', error);
        } finally {
            setClaimsLoading(false);
        }
    };

    const getAge = (birthdate) => {
        if (!birthdate) return '-';
        return dayjs().diff(dayjs(birthdate), 'year');
    };

    const getGenderIcon = (genderId) => {
        if (genderId === 1) return <ManOutlined style={{ color: '#1890ff' }} />;
        if (genderId === 2) return <WomanOutlined style={{ color: '#eb2f96' }} />;
        return <UserOutlined />;
    };

    const getStatusTag = (senior) => {
        if (senior?.is_deceased) {
            return <Tag color="default">Deceased</Tag>;
        }
        if (senior?.is_active) {
            return <Tag color="success" icon={<CheckCircleOutlined />}>Active</Tag>;
        }
        return <Tag color="error" icon={<CloseCircleOutlined />}>Inactive</Tag>;
    };

    const formatCurrency = (amount) => {
        return new Intl.NumberFormat('en-PH', {
            style: 'currency',
            currency: 'PHP',
        }).format(amount);
    };

    const getPhotoSrc = () => {
        if (!senior) return undefined;
        if (senior.photo_url) return senior.photo_url;
        if (senior.photo_path) return `${API_URL.replace('/api', '')}/storage/${senior.photo_path}`;
        return undefined;
    };

    const beforeUploadPhoto = (file) => {
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

    const handlePhotoUpload = async ({ file, onSuccess, onError }) => {
        if (!senior?.id) {
            onError?.(new Error('Senior not loaded'));
            return;
        }

        try {
            setUploadingPhoto(true);
            const formData = new FormData();
            formData.append('photo', file);

            const response = await seniorsApi.updatePhoto(senior.id, formData);
            const photoData = response.data?.data || {};

            setSenior((prev) => ({
                ...prev,
                photo_path: photoData.photo_path || prev?.photo_path,
                photo_url: photoData.photo_url || prev?.photo_url,
            }));

            message.success(response.data?.message || 'Profile photo updated successfully.');
            onSuccess?.('ok');
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to update profile photo.');
            onError?.(error);
        } finally {
            setUploadingPhoto(false);
        }
    };

    const renderBasicInfo = () => (
        <Card size="small">
            <Row gutter={24}>
                <Col span={6} style={{ textAlign: 'center' }}>
                    <Avatar
                        size={100}
                        src={getPhotoSrc()}
                        icon={<UserOutlined />}
                        style={{ backgroundColor: senior?.gender_id === 2 ? '#eb2f96' : '#1890ff' }}
                    />
                    <div style={{ marginTop: 10 }}>
                        <Upload
                            showUploadList={false}
                            accept=".jpg,.jpeg,.png"
                            beforeUpload={beforeUploadPhoto}
                            customRequest={handlePhotoUpload}
                        >
                            <Button size="small" icon={<CameraOutlined />} loading={uploadingPhoto}>
                                Change Photo
                            </Button>
                        </Upload>
                    </div>
                    <div style={{ marginTop: 12 }}>
                        {getStatusTag(senior)}
                    </div>
                </Col>
                <Col span={18}>
                    <Title level={4} style={{ margin: 0 }}>
                        {senior?.first_name} {senior?.middle_name} {senior?.last_name} {senior?.extension}
                    </Title>
                    <Text type="secondary">
                        {getGenderIcon(senior?.gender_id)} {senior?.gender?.name || (senior?.gender_id === 1 ? 'Male' : 'Female')}
                        {senior?.civil_status?.name && ` • ${senior?.civil_status?.name}`}
                    </Text>

                    <Divider style={{ margin: '12px 0' }} />

                    <Row gutter={16}>
                        <Col span={8}>
                            <Statistic
                                title="Age"
                                value={getAge(senior?.birthdate)}
                                suffix="years"
                                valueStyle={{ fontSize: 20 }}
                            />
                        </Col>
                        <Col span={8}>
                            <Statistic
                                title="Senior ID"
                                value={senior?.senior_id_number || 'Not yet assigned'}
                                valueStyle={{ fontSize: 16 }}
                            />
                        </Col>
                        <Col span={8}>
                            <Statistic
                                title="Benefits Claimed"
                                value={claims.length}
                                valueStyle={{ fontSize: 20 }}
                            />
                        </Col>
                    </Row>
                </Col>
            </Row>
        </Card>
    );

    const renderPersonalDetails = () => {
        const appData = getApplicantData();
        const targetSectors = senior?.target_sectors?.length ? senior.target_sectors : (appData?.target_sectors || []);
        const subCategories = senior?.sub_categories?.length ? senior.sub_categories : (appData?.sub_categories || []);

        return (
            <Card size="small" title="Personal Information">
                <Descriptions column={2} size="small" bordered>
                    <Descriptions.Item label={<><CalendarOutlined /> Birthdate</>}>
                        {senior?.birthdate ? dayjs(senior.birthdate).format('MMMM D, YYYY') : '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Age">
                        {getAge(senior?.birthdate)} years old
                    </Descriptions.Item>
                    <Descriptions.Item label="Gender">
                        <Space>
                            {getGenderIcon(senior?.gender_id)}
                            {senior?.gender?.name || (senior?.gender_id === 1 ? 'Male' : 'Female')}
                        </Space>
                    </Descriptions.Item>
                    <Descriptions.Item label="Civil Status">
                        {senior?.civil_status?.name || '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Educational Attainment" span={2}>
                        {senior?.educational_attainment?.level || '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Occupation">
                        {senior?.occupation || '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Monthly Salary">
                        {senior?.monthly_salary ? formatCurrency(senior.monthly_salary) : '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Other Skills" span={2}>
                        {senior?.other_skills || '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Target Sectors" span={2}>
                        {targetSectors.length > 0 ? (
                            <Space wrap>{targetSectors.map((s, i) => <Tag key={i} color="blue">{s}</Tag>)}</Space>
                        ) : '-'}
                    </Descriptions.Item>
                    <Descriptions.Item label="Sub-Categories" span={2}>
                        {subCategories.length > 0 ? (
                            <Space wrap>{subCategories.map((c, i) => <Tag key={i} color="green">{c}</Tag>)}</Space>
                        ) : '-'}
                    </Descriptions.Item>
                </Descriptions>
            </Card>
        );
    };

    const renderAddressContact = () => (
        <Card size="small" title="Address & Contact" style={{ marginTop: 16 }}>
            <Descriptions column={2} size="small" bordered>
                <Descriptions.Item label={<><HomeOutlined /> Address</>} span={2}>
                    {[
                        senior?.contact?.house_number,
                        senior?.contact?.street,
                        senior?.barangay?.name
                    ].filter(Boolean).join(', ') || '-'}
                </Descriptions.Item>
                <Descriptions.Item label="Barangay">
                    <Tag color="blue">{senior?.barangay?.name || '-'}</Tag>
                </Descriptions.Item>
                <Descriptions.Item label="Field Office">
                    {senior?.branch?.name || '-'}
                </Descriptions.Item>
                <Descriptions.Item label={<><PhoneOutlined /> Mobile</>}>
                    {senior?.contact?.mobile_number || '-'}
                </Descriptions.Item>
                <Descriptions.Item label="Telephone">
                    {senior?.contact?.telephone_number || '-'}
                </Descriptions.Item>
                <Descriptions.Item label={<><MailOutlined /> Email</>} span={2}>
                    {senior?.contact?.email || '-'}
                </Descriptions.Item>
            </Descriptions>
        </Card>
    );

    // Get applicant_data from the latest application
    const getApplicantData = () => {
        if (!senior?.applications?.length) return null;
        // Find the latest application with applicant_data
        const app = senior.applications
            .filter(a => a.applicant_data)
            .sort((a, b) => new Date(b.created_at) - new Date(a.created_at))[0];
        return app?.applicant_data || null;
    };

    const renderFamily = () => {
        const dbMembers = senior?.family_members || [];
        const appData = getApplicantData();
        const appMembers = appData?.family_members || [];
        const familyMembers = dbMembers.length > 0 ? dbMembers : appMembers;
        const emergencyContact = familyMembers.find(m => m.is_emergency_contact);

        return (
            <div>
                {emergencyContact && (
                    <Alert
                        type="info"
                        showIcon
                        icon={<PhoneOutlined />}
                        style={{ marginBottom: 12 }}
                        message={
                            <span>
                                <strong>Emergency Contact:</strong>{' '}
                                {[emergencyContact.first_name, emergencyContact.middle_name, emergencyContact.last_name].filter(Boolean).join(' ')}
                                {emergencyContact.relationship && ` (${emergencyContact.relationship})`}
                                {emergencyContact.mobile_number && ` · ${emergencyContact.mobile_number}`}
                            </span>
                        }
                    />
                )}
                <Card size="small" title="Family Composition" style={{ marginTop: emergencyContact ? 0 : 16 }}>
                    {familyMembers.length > 0 ? (
                        <Table
                            dataSource={familyMembers}
                            rowKey={(_, index) => index}
                            size="small"
                            pagination={false}
                            scroll={{ x: 900 }}
                            columns={[
                                {
                                    title: 'Name',
                                    key: 'name',
                                    fixed: 'left',
                                    width: 180,
                                    render: (_, record) => {
                                        const parts = [
                                            record.first_name,
                                            record.middle_name,
                                            record.last_name,
                                            record.extension,
                                        ].filter(Boolean);
                                        return (
                                            <Space>
                                                {parts.join(' ') || '-'}
                                                {record.is_emergency_contact && <Tag color="red" style={{ fontSize: 11 }}>EC</Tag>}
                                            </Space>
                                        );
                                    },
                                },
                                {
                                    title: 'Relationship',
                                    dataIndex: 'relationship',
                                    key: 'relationship',
                                    width: 110,
                                    render: (val) => val || '-',
                                },
                                {
                                    title: 'Date of Birth',
                                    dataIndex: 'birthdate',
                                    key: 'birthdate',
                                    width: 120,
                                    render: (val) => val ? dayjs(val).format('MMM D, YYYY') : '-',
                                },
                                {
                                    title: 'Age',
                                    key: 'age',
                                    width: 60,
                                    render: (_, record) => {
                                        if (record.birthdate) return dayjs().diff(dayjs(record.birthdate), 'year');
                                        return record.age || record.computed_age || '-';
                                    },
                                },
                                {
                                    title: 'Monthly Salary',
                                    dataIndex: 'monthly_salary',
                                    key: 'monthly_salary',
                                    width: 120,
                                    render: (val) => val ? `₱${Number(val).toLocaleString()}` : '-',
                                },
                                {
                                    title: 'Mobile',
                                    dataIndex: 'mobile_number',
                                    key: 'mobile_number',
                                    width: 130,
                                    render: (val) => val || '-',
                                },
                                {
                                    title: 'Telephone',
                                    dataIndex: 'telephone_number',
                                    key: 'telephone_number',
                                    width: 130,
                                    render: (val) => val || '-',
                                },
                                {
                                    title: 'Email',
                                    dataIndex: 'email',
                                    key: 'email',
                                    width: 180,
                                    render: (val) => val || '-',
                                },
                            ]}
                        />
                    ) : (
                        <Empty description="No family members recorded" />
                    )}
                </Card>
            </div>
        );
    };

    const renderHealthProfile = () => {
        const hp = senior?.health_profile;
        if (!hp) {
            return <Empty description="No health profile recorded" />;
        }

        const renderTags = (items, color = 'blue') => {
            if (!items || !Array.isArray(items) || items.length === 0) return <Text type="secondary">None</Text>;
            return items.map(item => <Tag key={item} color={color}>{item}</Tag>);
        };

        const frequencyLabels = {
            monthly: 'Monthly',
            quarterly: 'Quarterly',
            semi_annual: 'Semi-Annual',
            annual: 'Annual',
        };

        return (
            <div>
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
                        {hp.has_scheduled_checkup === true ? <Tag color="green">Yes</Tag> : hp.has_scheduled_checkup === false ? <Tag color="default">No</Tag> : <Text type="secondary">Not specified</Text>}
                    </Descriptions.Item>
                    <Descriptions.Item label="Check-up Frequency">
                        {hp.checkup_frequency ? <Tag color="blue">{frequencyLabels[hp.checkup_frequency] || hp.checkup_frequency}</Tag> : <Text type="secondary">N/A</Text>}
                    </Descriptions.Item>
                </Descriptions>
            </div>
        );
    };

    const renderAssociation = () => {
        const appData = getApplicantData();
        const targetSectors = senior?.target_sectors?.length ? senior.target_sectors : (appData?.target_sectors || []);
        const subCategories = senior?.sub_categories?.length ? senior.sub_categories : (appData?.sub_categories || []);

        return (
            <div>
                <Card size="small" title="Target Sectors" style={{ marginTop: 16 }}>
                    {targetSectors.length > 0 ? (
                        <Space wrap>
                            {targetSectors.map((sector, i) => (
                                <Tag key={i} color="blue">{sector}</Tag>
                            ))}
                        </Space>
                    ) : (
                        <Empty description="No target sectors recorded" />
                    )}
                </Card>
                <Card size="small" title="Sub-Categories" style={{ marginTop: 16 }}>
                    {subCategories.length > 0 ? (
                        <Space wrap>
                            {subCategories.map((cat, i) => (
                                <Tag key={i} color="green">{cat}</Tag>
                            ))}
                        </Space>
                    ) : (
                        <Empty description="No sub-categories recorded" />
                    )}
                </Card>
            </div>
        );
    };

    const renderBenefits = () => (
        <div>
            <Card size="small" title="Benefits History" style={{ marginTop: 16 }}>
                {claimsLoading ? (
                    <Spin />
                ) : claims.length > 0 ? (
                    <Table
                        dataSource={claims}
                        rowKey="id"
                        size="small"
                        pagination={false}
                        columns={[
                            {
                                title: 'Benefit',
                                dataIndex: ['benefit_type', 'name'],
                                key: 'benefit',
                                render: (_, record) => record.benefit_name || record.benefit_type?.name || record.benefit?.name || record.benefitType?.name || '-',
                            },
                            {
                                title: 'Amount',
                                dataIndex: 'amount',
                                key: 'amount',
                                render: (amount) => formatCurrency(amount),
                            },
                            {
                                title: 'Status',
                                dataIndex: 'status',
                                key: 'status',
                                render: (status) => {
                                    const colors = {
                                        pending: 'processing',
                                        approved: 'success',
                                        released: 'green',
                                        rejected: 'error',
                                    };
                                    return <Tag color={colors[status] || 'default'}>{status?.toUpperCase()}</Tag>;
                                },
                            },
                            {
                                title: 'Date Filed',
                                dataIndex: 'created_at',
                                key: 'date_filed',
                                render: (date) => date ? dayjs(date).format('MMM D, YYYY') : '-',
                            },
                            {
                                title: 'Filed By',
                                dataIndex: 'filed_by',
                                key: 'filed_by',
                                render: (text) => text || '—',
                            },
                            {
                                title: 'Processed By',
                                dataIndex: 'processed_by',
                                key: 'processed_by',
                                render: (text) => text || '—',
                            },
                            {
                                title: 'Released By',
                                dataIndex: 'released_by',
                                key: 'released_by',
                                render: (text) => text || '—',
                            },
                        ]}
                    />
                ) : (
                    <Empty description="No benefits claimed yet" />
                )}
            </Card>
        </div>
    );

    const renderApplications = () => (
        <Card size="small" title="Applications" style={{ marginTop: 16 }}>
            {senior?.applications?.length > 0 ? (
                <Table
                    dataSource={senior.applications}
                    rowKey="id"
                    size="small"
                    pagination={false}
                    columns={[
                        {
                            title: 'Application #',
                            dataIndex: 'application_number',
                            key: 'application_number',
                        },
                        {
                            title: 'Type',
                            dataIndex: ['application_type', 'name'],
                            key: 'type',
                            render: (_, record) => record.application_type?.name || record.applicationType?.name || '-',
                        },
                        {
                            title: 'Status',
                            dataIndex: 'status',
                            key: 'status',
                            render: (status) => <Tag>{status}</Tag>,
                        },
                        {
                            title: 'Date',
                            dataIndex: 'created_at',
                            key: 'date',
                            render: (date) => date ? dayjs(date).format('MMM D, YYYY') : '-',
                        },
                        {
                            title: 'Submitted By',
                            key: 'submitted_by',
                            render: (_, record) => {
                                if (record.submitter) {
                                    return `${record.submitter.first_name} ${record.submitter.last_name}`;
                                }
                                return '—';
                            },
                        },
                        {
                            title: 'Approved By',
                            key: 'approved_by',
                            render: (_, record) => {
                                if (record.approver) {
                                    return `${record.approver.first_name} ${record.approver.last_name}`;
                                }
                                return '—';
                            },
                        },
                    ]}
                />
            ) : (
                <Empty description="No applications found" />
            )}
        </Card>
    );

    const renderIDs = () => (
        <Card size="small" title="Senior IDs" style={{ marginTop: 16 }}>
            {senior?.senior_ids?.length > 0 ? (
                <Table
                    dataSource={[...senior.senior_ids].sort((a, b) => b.id - a.id)}
                    rowKey="id"
                    size="small"
                    pagination={false}
                    columns={[
                        {
                            title: 'ID Number',
                            dataIndex: 'id_number',
                            key: 'id_number',
                        },
                        {
                            title: 'Status',
                            dataIndex: 'is_active',
                            key: 'is_active',
                            render: (isActive) => <Tag color={isActive ? 'success' : 'default'}>{isActive ? 'Active' : 'Inactive'}</Tag>,
                        },
                        {
                            title: 'Issued',
                            dataIndex: 'issue_date',
                            key: 'issue_date',
                            render: (date) => date ? dayjs(date).format('MMM D, YYYY') : '-',
                        },
                    ]}
                />
            ) : (
                <Empty description="No IDs issued yet" />
            )}
        </Card>
    );

    return (
        <>
        <Modal
            title={
                <Space>
                    <IdcardOutlined />
                    <span>Senior Citizen Profile</span>
                </Space>
            }
            open={visible}
            onCancel={onClose}
            width={900}
            footer={
                !senior?.is_deceased ? (
                    <Button
                        danger
                        onClick={() => setDeceasedModalVisible(true)}
                        icon={<CloseCircleOutlined />}
                    >
                        Report Deceased
                    </Button>
                ) : null
            }
        >
            <Spin spinning={loading}>
                {senior && (
                    <>
                        {renderBasicInfo()}

                        {senior.is_deceased && senior.deceased_report && (
                            <Card
                                size="small"
                                title={<span style={{ color: '#8B0000' }}>☦ Death Record</span>}
                                style={{ marginTop: 12, border: '1px solid #ffccc7', background: '#fff2f0' }}
                            >
                                <Descriptions column={2} size="small" title="Death Details">
                                    <Descriptions.Item label="Date of Death">
                                        {senior.deceased_report.date_of_death ? dayjs(senior.deceased_report.date_of_death).format('MMM D, YYYY') : '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Time of Death">
                                        {senior.deceased_report.time_of_death || 'Not recorded'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Location" span={2}>
                                        {[senior.deceased_report.death_barangay, senior.deceased_report.death_city, senior.deceased_report.death_province, senior.deceased_report.death_country]
                                            .filter(Boolean).join(', ') || '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Location Type">
                                        <Tag>{
                                            {hospital: 'Hospital', residence: 'Residence', nursing_home: 'Nursing Home', public_place: 'Public Place', other: senior.deceased_report.death_location_type_other || 'Other'}[senior.deceased_report.death_location_type] || '-'
                                        }</Tag>
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Cause of Death">
                                        {senior.deceased_report.cause_of_death || 'Not specified'}
                                    </Descriptions.Item>
                                </Descriptions>

                                <Divider style={{ margin: '8px 0' }} />
                                <Descriptions column={2} size="small" title="Certificate Info">
                                    <Descriptions.Item label="Certificate #">
                                        {senior.deceased_report.certificate_number || '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Registry #">
                                        {senior.deceased_report.registry_number || '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Date Registered">
                                        {senior.deceased_report.date_registered ? dayjs(senior.deceased_report.date_registered).format('MMM D, YYYY') : '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Registered At">
                                        {senior.deceased_report.registered_at === 'lcro' ? 'LCRO' : senior.deceased_report.registered_at === 'psa' ? 'PSA' : '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Death Certificate">
                                        {senior.deceased_report.death_certificate_path ? (
                                            <a href={`http://localhost:8000/storage/${senior.deceased_report.death_certificate_path}`} target="_blank" rel="noopener noreferrer">
                                                📄 View Document
                                            </a>
                                        ) : '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Supporting Document">
                                        {senior.deceased_report.supporting_doc_path ? (
                                            <a href={`http://localhost:8000/storage/${senior.deceased_report.supporting_doc_path}`} target="_blank" rel="noopener noreferrer">
                                                📄 View ({
                                                    {burial_permit: 'Burial Permit', hospital_cert: 'Hospital Cert', barangay_cert: 'Barangay Cert', funeral_doc: 'Funeral Doc', other: 'Other'}[senior.deceased_report.supporting_doc_type] || 'Document'
                                                })
                                            </a>
                                        ) : 'None'}
                                    </Descriptions.Item>
                                </Descriptions>

                                <Divider style={{ margin: '8px 0' }} />
                                <Descriptions column={2} size="small" title="Informant">
                                    <Descriptions.Item label="Reported By">
                                        {senior.deceased_report.reporter_full_name} ({
                                            {child: 'Child', spouse: 'Spouse', relative: 'Relative', barangay_official: 'Barangay Official', other: senior.deceased_report.relationship_other || 'Other'}[senior.deceased_report.relationship_to_deceased] || senior.deceased_report.relationship_to_deceased
                                        })
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Contact">
                                        {senior.deceased_report.reporter_contact_number}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Submitted By">
                                        {senior.deceased_report.reported_by || '-'}
                                    </Descriptions.Item>
                                    <Descriptions.Item label="Address">
                                        {senior.deceased_report.reporter_address || '-'}
                                    </Descriptions.Item>
                                </Descriptions>

                                {(senior.deceased_report.burial_date || senior.deceased_report.cemetery_name) && (
                                    <>
                                        <Divider style={{ margin: '8px 0' }} />
                                        <Descriptions column={2} size="small" title="Burial Info">
                                            <Descriptions.Item label="Burial Date">
                                                {senior.deceased_report.burial_date ? dayjs(senior.deceased_report.burial_date).format('MMM D, YYYY') : '-'}
                                            </Descriptions.Item>
                                            <Descriptions.Item label="Location">
                                                {senior.deceased_report.burial_location || '-'}
                                            </Descriptions.Item>
                                            <Descriptions.Item label="Cemetery">
                                                {senior.deceased_report.cemetery_name || '-'}
                                            </Descriptions.Item>
                                            <Descriptions.Item label="Funeral Provider">
                                                {senior.deceased_report.funeral_service_provider || '-'}
                                            </Descriptions.Item>
                                        </Descriptions>
                                    </>
                                )}
                            </Card>
                        )}

                        <Tabs defaultActiveKey="personal" style={{ marginTop: 16 }} size="small">
                            <TabPane
                                tab={<span><UserOutlined /> Personal</span>}
                                key="personal"
                            >
                                {renderPersonalDetails()}
                                {renderAddressContact()}
                            </TabPane>
                            <TabPane
                                tab={
                                    <span><TeamOutlined /> Family</span>
                                }
                                key="family"
                            >
                                {renderFamily()}
                            </TabPane>
                            <TabPane
                                tab={
                                    <span><TagOutlined /> Association</span>
                                }
                                key="association"
                            >
                                {renderAssociation()}
                            </TabPane>
                            <TabPane
                                tab={
                                    <span><HeartOutlined /> Health</span>
                                }
                                key="health"
                            >
                                {renderHealthProfile()}
                            </TabPane>
                            <TabPane
                                tab={
                                    <Badge count={claims.length} size="small" offset={[10, 0]}>
                                        <span><GiftOutlined /> Benefits</span>
                                    </Badge>
                                }
                                key="benefits"
                            >
                                {renderBenefits()}
                            </TabPane>
                            <TabPane
                                tab={
                                    <Badge count={senior.applications?.length || 0} size="small" offset={[10, 0]}>
                                        <span><FileTextOutlined /> Applications</span>
                                    </Badge>
                                }
                                key="applications"
                            >
                                {renderApplications()}
                            </TabPane>
                            <TabPane
                                tab={
                                    <Badge count={senior.senior_ids?.length || 0} size="small" offset={[10, 0]}>
                                        <span><IdcardOutlined /> IDs</span>
                                    </Badge>
                                }
                                key="ids"
                            >
                                {renderIDs()}
                            </TabPane>
                        </Tabs>
                    </>
                )}
            </Spin>
        </Modal>

        <ReportDeceasedModal
            visible={deceasedModalVisible}
            senior={senior}
            onClose={() => setDeceasedModalVisible(false)}
            onSuccess={() => {
                fetchSenior();
                fetchClaims();
            }}
        />
        </>
    );
}

export default SeniorProfileModal;
