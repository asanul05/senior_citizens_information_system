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
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { seniorsApi, benefitsApi } from '../services/api';

const { Title, Text, Paragraph } = Typography;
const { TabPane } = Tabs;

function SeniorProfileModal({ visible, seniorId, onClose }) {
    const [loading, setLoading] = useState(false);
    const [senior, setSenior] = useState(null);
    const [claimsLoading, setClaimsLoading] = useState(false);
    const [claims, setClaims] = useState([]);

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

    const renderBasicInfo = () => (
        <Card size="small">
            <Row gutter={24}>
                <Col span={6} style={{ textAlign: 'center' }}>
                    <Avatar
                        size={100}
                        icon={<UserOutlined />}
                        style={{ backgroundColor: senior?.gender_id === 2 ? '#eb2f96' : '#1890ff' }}
                    />
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

    const renderPersonalDetails = () => (
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
                    {senior?.educational_attainment?.name || '-'}
                </Descriptions.Item>
            </Descriptions>
        </Card>
    );

    const renderAddressContact = () => (
        <Card size="small" title="Address & Contact" style={{ marginTop: 16 }}>
            <Descriptions column={2} size="small" bordered>
                <Descriptions.Item label={<><HomeOutlined /> Address</>} span={2}>
                    {[
                        senior?.house_number,
                        senior?.street,
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
                    {senior?.contact?.mobile || '-'}
                </Descriptions.Item>
                <Descriptions.Item label="Telephone">
                    {senior?.contact?.telephone || '-'}
                </Descriptions.Item>
                <Descriptions.Item label={<><MailOutlined /> Email</>} span={2}>
                    {senior?.contact?.email || '-'}
                </Descriptions.Item>
            </Descriptions>
        </Card>
    );

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
                                title: 'Date',
                                dataIndex: 'created_at',
                                key: 'created_at',
                                render: (date) => date ? dayjs(date).format('MMM D, YYYY') : '-',
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
                    dataSource={senior.senior_ids}
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
                            dataIndex: 'status',
                            key: 'status',
                            render: (status) => <Tag color={status === 'active' ? 'success' : 'default'}>{status}</Tag>,
                        },
                        {
                            title: 'Issued',
                            dataIndex: 'issued_at',
                            key: 'issued_at',
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
            footer={null}
        >
            <Spin spinning={loading}>
                {senior && (
                    <>
                        {renderBasicInfo()}

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
    );
}

export default SeniorProfileModal;
