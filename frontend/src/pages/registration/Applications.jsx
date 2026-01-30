import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import {
    Card,
    Table,
    Input,
    Select,
    Button,
    Space,
    Tag,
    Typography,
    Row,
    Col,
    Statistic,
    Modal,
    Descriptions,
    message,
    Tooltip,
    Popconfirm,
} from 'antd';
import {
    SearchOutlined,
    PlusOutlined,
    EyeOutlined,
    EditOutlined,
    CheckCircleOutlined,
    CloseCircleOutlined,
    FileTextOutlined,
    ReloadOutlined,
    ClockCircleOutlined,
    SyncOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { applicationsApi } from '../../services/api';

const { Title, Text } = Typography;
const { Option } = Select;

const Applications = () => {
    const navigate = useNavigate();
    const [loading, setLoading] = useState(false);
    const [applications, setApplications] = useState([]);
    const [statistics, setStatistics] = useState(null);
    const [pagination, setPagination] = useState({
        current: 1,
        pageSize: 10,
        total: 0,
    });
    const [filters, setFilters] = useState({
        search: '',
        status: '',
    });
    const [viewModal, setViewModal] = useState({ visible: false, data: null });

    useEffect(() => {
        fetchApplications();
        fetchStatistics();
    }, [pagination.current, pagination.pageSize, filters]);

    const fetchApplications = async () => {
        try {
            setLoading(true);
            const params = {
                page: pagination.current,
                per_page: pagination.pageSize,
                search: filters.search || undefined,
                status: filters.status || undefined,
            };
            const response = await applicationsApi.getList(params);
            const data = response.data;

            setApplications(data.data || []);
            setPagination(prev => ({
                ...prev,
                total: data.meta?.total || data.total || 0,
            }));
        } catch (error) {
            console.error('Failed to fetch applications:', error);
            message.error('Failed to load applications');
        } finally {
            setLoading(false);
        }
    };

    const fetchStatistics = async () => {
        try {
            const response = await applicationsApi.getStatistics();
            setStatistics(response.data.data || response.data);
        } catch (error) {
            console.error('Failed to fetch statistics:', error);
        }
    };

    const handleSearch = (value) => {
        setFilters(prev => ({ ...prev, search: value }));
        setPagination(prev => ({ ...prev, current: 1 }));
    };

    const handleStatusFilter = (value) => {
        setFilters(prev => ({ ...prev, status: value }));
        setPagination(prev => ({ ...prev, current: 1 }));
    };

    const handleTableChange = (paginationInfo) => {
        setPagination(prev => ({
            ...prev,
            current: paginationInfo.current,
            pageSize: paginationInfo.pageSize,
        }));
    };

    const handleView = (record) => {
        setViewModal({ visible: true, data: record });
    };

    const handleEdit = (record) => {
        // Navigate to edit page with application data
        navigate(`/admin/registration/new?edit=${record.id}`);
    };

    const handleStatusUpdate = async (id, newStatus) => {
        try {
            await applicationsApi.updateStatus(id, { status: newStatus });
            message.success(`Application ${newStatus.toLowerCase()} successfully`);
            fetchApplications();
            fetchStatistics();
        } catch (error) {
            console.error('Failed to update status:', error);
            message.error('Failed to update application status');
        }
    };

    const getStatusTag = (status) => {
        const statusConfig = {
            'Pending': { color: 'default', icon: <ClockCircleOutlined /> },
            'Draft': { color: 'default', icon: <FileTextOutlined /> },
            'For Verification': { color: 'processing', icon: <SyncOutlined spin /> },
            'Verified': { color: 'blue', icon: <CheckCircleOutlined /> },
            'Approved': { color: 'success', icon: <CheckCircleOutlined /> },
            'Rejected': { color: 'error', icon: <CloseCircleOutlined /> },
            'Printed': { color: 'purple', icon: <FileTextOutlined /> },
            'Claimed': { color: 'green', icon: <CheckCircleOutlined /> },
        };
        const config = statusConfig[status] || { color: 'default', icon: null };
        return <Tag color={config.color} icon={config.icon}>{status}</Tag>;
    };

    const columns = [
        {
            title: 'Application #',
            dataIndex: 'application_number',
            key: 'application_number',
            width: 150,
            render: (text) => <Text strong>{text}</Text>,
        },
        {
            title: 'Applicant Name',
            key: 'applicant_name',
            render: (_, record) => {
                // First try to get applicant_name from backend (for drafts without senior)
                if (record.applicant_name) {
                    return record.applicant_name;
                }
                // Fallback to senior data if available
                if (record.senior) {
                    return `${record.senior.first_name} ${record.senior.middle_name || ''} ${record.senior.last_name}`.trim();
                }
                // Last resort: try parsing applicant_data
                if (record.applicant_data?.personal_info) {
                    const p = record.applicant_data.personal_info;
                    return `${p.first_name || ''} ${p.middle_name || ''} ${p.last_name || ''}`.trim();
                }
                return <Text type="secondary">-</Text>;
            },
        },
        {
            title: 'Type',
            dataIndex: ['application_type', 'name'],
            key: 'type',
            width: 120,
            render: (text) => text || 'New ID',
        },
        {
            title: 'Status',
            dataIndex: 'status',
            key: 'status',
            width: 150,
            render: (status) => getStatusTag(status),
        },
        {
            title: 'Date',
            key: 'date',
            width: 150,
            render: (_, record) => {
                const date = record.submission_date || record.created_at;
                return date ? dayjs(date).format('MMM D, YYYY') : '-';
            },
        },
        {
            title: 'Actions',
            key: 'actions',
            width: 200,
            render: (_, record) => (
                <Space size="small">
                    <Tooltip title="View Details">
                        <Button
                            type="text"
                            icon={<EyeOutlined />}
                            onClick={() => handleView(record)}
                        />
                    </Tooltip>
                    {(record.status === 'Pending' || record.status === 'Draft') && (
                        <Tooltip title="Edit Application">
                            <Button
                                type="text"
                                icon={<EditOutlined />}
                                onClick={() => handleEdit(record)}
                            />
                        </Tooltip>
                    )}
                    {record.status === 'For Verification' && (
                        <>
                            <Popconfirm
                                title="Approve this application?"
                                onConfirm={() => handleStatusUpdate(record.id, 'Approved')}
                            >
                                <Tooltip title="Approve">
                                    <Button
                                        type="text"
                                        icon={<CheckCircleOutlined />}
                                        style={{ color: '#52c41a' }}
                                    />
                                </Tooltip>
                            </Popconfirm>
                            <Popconfirm
                                title="Reject this application?"
                                onConfirm={() => handleStatusUpdate(record.id, 'Rejected')}
                            >
                                <Tooltip title="Reject">
                                    <Button
                                        type="text"
                                        icon={<CloseCircleOutlined />}
                                        danger
                                    />
                                </Tooltip>
                            </Popconfirm>
                        </>
                    )}
                </Space>
            ),
        },
    ];

    return (
        <div>
            {/* Header */}
            <div style={{ marginBottom: 24, display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <div>
                    <Title level={3} style={{ margin: 0 }}>Applications</Title>
                    <Text type="secondary">Manage senior citizen ID applications</Text>
                </div>
                <Button
                    type="primary"
                    icon={<PlusOutlined />}
                    size="large"
                    onClick={() => navigate('/admin/registration/new')}
                >
                    New Application
                </Button>
            </div>

            {/* Statistics Cards */}
            {statistics && (
                <Row gutter={16} style={{ marginBottom: 24 }}>
                    <Col xs={12} sm={6}>
                        <Card size="small">
                            <Statistic
                                title="Pending"
                                value={statistics.pending || 0}
                                valueStyle={{ color: '#8c8c8c' }}
                            />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card size="small">
                            <Statistic
                                title="For Verification"
                                value={statistics.for_verification || 0}
                                valueStyle={{ color: '#1890ff' }}
                            />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card size="small">
                            <Statistic
                                title="Approved"
                                value={statistics.approved || 0}
                                valueStyle={{ color: '#52c41a' }}
                            />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card size="small">
                            <Statistic
                                title="Total"
                                value={statistics.total || 0}
                            />
                        </Card>
                    </Col>
                </Row>
            )}

            {/* Quick Status Filters */}
            <Card size="small" style={{ marginBottom: 16 }}>
                <Space wrap>
                    <Text strong style={{ marginRight: 8 }}>Quick Filters:</Text>
                    <Tag
                        color={!filters.status ? 'blue' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('')}
                    >
                        All
                    </Tag>
                    <Tag
                        color={filters.status === 'Draft' ? 'blue' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('Draft')}
                    >
                        <FileTextOutlined /> Draft
                    </Tag>
                    <Tag
                        color={filters.status === 'For Verification' ? 'processing' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('For Verification')}
                    >
                        <SyncOutlined /> For Verification
                    </Tag>
                    <Tag
                        color={filters.status === 'Approved' ? 'success' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('Approved')}
                    >
                        <CheckCircleOutlined /> Approved
                    </Tag>
                    <Tag
                        color={filters.status === 'Rejected' ? 'error' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('Rejected')}
                    >
                        <CloseCircleOutlined /> Rejected
                    </Tag>
                    <Tag
                        color={filters.status === 'Printed' ? 'purple' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('Printed')}
                    >
                        <FileTextOutlined /> Printed
                    </Tag>
                    <Tag
                        color={filters.status === 'Claimed' ? 'green' : 'default'}
                        style={{ cursor: 'pointer', padding: '4px 12px' }}
                        onClick={() => handleStatusFilter('Claimed')}
                    >
                        <CheckCircleOutlined /> Claimed
                    </Tag>
                </Space>
            </Card>

            {/* Filters */}
            <Card style={{ marginBottom: 16 }}>
                <Row gutter={16} align="middle">
                    <Col xs={24} sm={12} md={8}>
                        <Input.Search
                            placeholder="Search by name or application number"
                            allowClear
                            enterButton={<SearchOutlined />}
                            onSearch={handleSearch}
                            onChange={(e) => !e.target.value && handleSearch('')}
                        />
                    </Col>
                    <Col xs={24} sm={8} md={6}>
                        <Select
                            placeholder="Filter by Status"
                            allowClear
                            style={{ width: '100%' }}
                            onChange={handleStatusFilter}
                            value={filters.status || undefined}
                        >
                            <Option value="Pending">Pending</Option>
                            <Option value="Draft">Draft</Option>
                            <Option value="For Verification">For Verification</Option>
                            <Option value="Approved">Approved</Option>
                            <Option value="Rejected">Rejected</Option>
                            <Option value="Printed">Printed</Option>
                            <Option value="Claimed">Claimed</Option>
                        </Select>
                    </Col>
                    <Col>
                        <Button
                            icon={<ReloadOutlined />}
                            onClick={() => {
                                setFilters({ search: '', status: '' });
                                setPagination(prev => ({ ...prev, current: 1 }));
                            }}
                        >
                            Reset
                        </Button>
                    </Col>
                </Row>
            </Card>

            {/* Applications Table */}
            <Card>
                <Table
                    columns={columns}
                    dataSource={applications}
                    rowKey="id"
                    loading={loading}
                    pagination={{
                        ...pagination,
                        showSizeChanger: true,
                        showQuickJumper: true,
                        showTotal: (total, range) => `${range[0]}-${range[1]} of ${total} applications`,
                    }}
                    onChange={handleTableChange}
                />
            </Card>

            {/* View Modal */}
            <Modal
                title="Application Details"
                open={viewModal.visible}
                onCancel={() => setViewModal({ visible: false, data: null })}
                footer={[
                    <Button key="close" onClick={() => setViewModal({ visible: false, data: null })}>
                        Close
                    </Button>,
                ]}
                width={700}
            >
                {viewModal.data && (
                    <Descriptions bordered column={2} size="small">
                        <Descriptions.Item label="Application #" span={2}>
                            {viewModal.data.application_number}
                        </Descriptions.Item>
                        <Descriptions.Item label="Status" span={2}>
                            {getStatusTag(viewModal.data.status)}
                        </Descriptions.Item>
                        <Descriptions.Item label="Applicant Name" span={2}>
                            {viewModal.data.senior ?
                                `${viewModal.data.senior.first_name} ${viewModal.data.senior.middle_name || ''} ${viewModal.data.senior.last_name}`.trim()
                                : '-'
                            }
                        </Descriptions.Item>
                        <Descriptions.Item label="Application Type">
                            {viewModal.data.application_type?.name || 'New ID'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Submission Date">
                            {viewModal.data.submission_date ?
                                dayjs(viewModal.data.submission_date).format('MMMM D, YYYY h:mm A')
                                : '-'
                            }
                        </Descriptions.Item>
                        {viewModal.data.notes && (
                            <Descriptions.Item label="Notes" span={2}>
                                <pre style={{ margin: 0, whiteSpace: 'pre-wrap' }}>{viewModal.data.notes}</pre>
                            </Descriptions.Item>
                        )}
                    </Descriptions>
                )}
            </Modal>
        </div>
    );
};

export default Applications;
