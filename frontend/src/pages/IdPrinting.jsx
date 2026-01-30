import { useState, useEffect, useCallback } from 'react';
import {
    Table,
    Card,
    Input,
    Select,
    Button,
    Space,
    Tag,
    Row,
    Col,
    Statistic,
    Typography,
    Modal,
    Form,
    message,
    Tooltip,
    Spin,
    Empty,
    Badge,
} from 'antd';
import {
    SearchOutlined,
    PrinterOutlined,
    CheckCircleOutlined,
    ClockCircleOutlined,
    PlusOutlined,
    EyeOutlined,
    ReloadOutlined,
    UserOutlined,
    ExclamationCircleOutlined,
    LoadingOutlined,
    GiftOutlined,
} from '@ant-design/icons';
import { idPrintingApi } from '../services/api';
import IdCardPreview from '../components/IdCardPreview';
import dayjs from 'dayjs';

const { Title, Text } = Typography;
const { Option } = Select;

const IdPrinting = () => {
    const [loading, setLoading] = useState(false);
    const [items, setItems] = useState([]);
    const [pagination, setPagination] = useState({
        current: 1,
        pageSize: 15,
        total: 0,
    });
    const [filters, setFilters] = useState({
        search: '',
        status: '',
        id_type: '',
    });
    const [stats, setStats] = useState({
        total: 0,
        pending: 0,
        printed: 0,
        claimed: 0,
        claimed_this_month: 0,
        printed_today: 0,
    });
    const [selectedRowKeys, setSelectedRowKeys] = useState([]);

    // Modal states
    const [statusModal, setStatusModal] = useState({ visible: false, item: null });
    const [addModal, setAddModal] = useState({ visible: false, loading: false });
    const [previewModal, setPreviewModal] = useState({ visible: false, item: null, loading: false, cardData: null });

    // Add to queue state
    const [availableSeniors, setAvailableSeniors] = useState([]);
    const [searchingSeniors, setSearchingSeniors] = useState(false);
    const [selectedSenior, setSelectedSenior] = useState(null);

    const [form] = Form.useForm();
    const [addForm] = Form.useForm();

    useEffect(() => {
        fetchItems();
        fetchStatistics();
    }, [filters]);

    const fetchItems = async (page = 1, pageSize = 15) => {
        setLoading(true);
        try {
            const params = { page, per_page: pageSize, ...filters };
            const response = await idPrintingApi.getList(params);
            const { data, current_page, per_page, total } = response.data.data;
            setItems(data);
            setPagination({ current: current_page, pageSize: per_page, total });
        } catch (error) {
            console.error('Error fetching items:', error);
            message.error('Failed to load printing queue');
        } finally {
            setLoading(false);
        }
    };

    const fetchStatistics = async () => {
        try {
            const response = await idPrintingApi.getStatistics();
            setStats(response.data.data);
        } catch (error) {
            console.error('Error fetching statistics:', error);
        }
    };

    const handleTableChange = (paginationConfig) => {
        fetchItems(paginationConfig.current, paginationConfig.pageSize);
    };

    const handleSearch = (value) => {
        setFilters((prev) => ({ ...prev, search: value }));
    };

    const handleFilterChange = (key, value) => {
        setFilters((prev) => ({ ...prev, [key]: value || '' }));
    };

    // Status Modal
    const openStatusModal = (item) => {
        setStatusModal({ visible: true, item });
        form.setFieldsValue({ status: item.status, notes: item.notes || '' });
    };

    const handleStatusUpdate = async (values) => {
        try {
            await idPrintingApi.updateStatus(statusModal.item.id, values);
            message.success('Status updated');
            setStatusModal({ visible: false, item: null });
            fetchItems(pagination.current);
            fetchStatistics();
        } catch (error) {
            message.error('Failed to update status');
        }
    };

    // Add to Queue Modal
    const openAddModal = () => {
        setAddModal({ visible: true, loading: false });
        setAvailableSeniors([]);
        setSelectedSenior(null);
        addForm.resetFields();
    };

    const searchSeniors = useCallback(async (search) => {
        if (!search || search.length < 2) {
            setAvailableSeniors([]);
            return;
        }
        setSearchingSeniors(true);
        try {
            const response = await idPrintingApi.getAvailableSeniors(search);
            setAvailableSeniors(response.data.data);
        } catch (error) {
            console.error('Search seniors error:', error);
        } finally {
            setSearchingSeniors(false);
        }
    }, []);

    const handleAddToQueue = async (values) => {
        if (!selectedSenior) {
            message.warning('Please select a senior citizen');
            return;
        }
        setAddModal(prev => ({ ...prev, loading: true }));
        try {
            await idPrintingApi.addToQueue({
                senior_id: selectedSenior.id,
                id_type: values.id_type,
                notes: values.notes,
            });
            message.success(`${selectedSenior.full_name} added to print queue`);
            setAddModal({ visible: false, loading: false });
            setSelectedSenior(null);
            fetchItems(1);
            fetchStatistics();
        } catch (error) {
            const errorMsg = error.response?.data?.message || 'Failed to add to queue';
            message.error(errorMsg);
            setAddModal(prev => ({ ...prev, loading: false }));
        }
    };

    // Preview Modal
    const openPreviewModal = async (item) => {
        setPreviewModal({ visible: true, item, loading: true, cardData: null });
        try {
            const response = await idPrintingApi.getCardData(item.id);
            setPreviewModal(prev => ({
                ...prev,
                loading: false,
                cardData: response.data.data.card_data,
            }));
        } catch (error) {
            message.error('Failed to load ID card data');
            setPreviewModal(prev => ({ ...prev, loading: false }));
        }
    };

    // Bulk Actions
    const handleBulkPrint = async () => {
        if (selectedRowKeys.length === 0) {
            message.warning('Please select items to print');
            return;
        }
        try {
            const response = await idPrintingApi.bulkPrint(selectedRowKeys);
            message.success(response.data.message);
            setSelectedRowKeys([]);
            fetchItems(pagination.current);
            fetchStatistics();
        } catch (error) {
            message.error('Bulk print failed');
        }
    };

    const handleBulkClaim = async () => {
        if (selectedRowKeys.length === 0) {
            message.warning('Please select items to mark as claimed');
            return;
        }
        try {
            const response = await idPrintingApi.bulkClaim(selectedRowKeys);
            message.success(response.data.message);
            setSelectedRowKeys([]);
            fetchItems(pagination.current);
            fetchStatistics();
        } catch (error) {
            message.error('Bulk claim failed');
        }
    };

    // Status tag renderer
    const getStatusTag = (status) => {
        const config = {
            pending: { color: 'default', icon: <ClockCircleOutlined /> },
            printed: { color: 'blue', icon: <PrinterOutlined /> },
            claimed: { color: 'green', icon: <CheckCircleOutlined /> },
            cancelled: { color: 'error', icon: <ExclamationCircleOutlined /> },
        };
        const c = config[status] || { color: 'default' };
        const label = status?.replace('_', ' ').toUpperCase();
        return <Tag color={c.color} icon={c.icon}>{label}</Tag>;
    };

    const columns = [
        {
            title: 'Queue #',
            dataIndex: 'queue_number',
            key: 'queue_number',
            width: 130,
            render: (num) => <Text code>{num}</Text>,
        },
        {
            title: 'Senior Citizen',
            key: 'senior',
            render: (_, record) => (
                <div>
                    <Text strong>
                        {record.senior?.first_name} {record.senior?.last_name}
                    </Text>
                    <br />
                    <Text type="secondary" style={{ fontSize: 12 }}>
                        {record.senior?.osca_id || 'Pending OSCA ID'}
                    </Text>
                </div>
            ),
        },
        {
            title: 'Barangay',
            key: 'barangay',
            render: (_, record) => record.senior?.barangay?.name || '-',
        },
        {
            title: 'Type',
            dataIndex: 'id_type',
            key: 'id_type',
            width: 100,
            render: (type) => <Tag color="purple">{type?.toUpperCase()}</Tag>,
        },
        {
            title: 'Requested',
            dataIndex: 'requested_date',
            key: 'requested_date',
            width: 120,
            render: (date) => date ? dayjs(date).format('MMM D, YYYY') : '-',
        },
        {
            title: 'Status',
            dataIndex: 'status',
            key: 'status',
            width: 120,
            render: (status) => getStatusTag(status),
        },
        {
            title: 'Actions',
            key: 'actions',
            width: 120,
            render: (_, record) => (
                <Space size="small">
                    <Tooltip title="Preview ID">
                        <Button
                            type="text"
                            size="small"
                            icon={<EyeOutlined />}
                            onClick={() => openPreviewModal(record)}
                        />
                    </Tooltip>
                    <Tooltip title="Update Status">
                        <Button
                            type="text"
                            size="small"
                            onClick={() => openStatusModal(record)}
                        >
                            Update
                        </Button>
                    </Tooltip>
                </Space>
            ),
        },
    ];

    const rowSelection = {
        selectedRowKeys,
        onChange: setSelectedRowKeys,
        getCheckboxProps: (record) => ({
            disabled: record.status === 'claimed' || record.status === 'cancelled',
        }),
    };

    return (
        <div>
            <div style={{ marginBottom: 24, display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                <div>
                    <Title level={3} style={{ margin: 0 }}>ID Printing Queue</Title>
                    <Text type="secondary">Manage senior citizen ID printing and claims</Text>
                </div>
                <Button
                    type="primary"
                    icon={<PlusOutlined />}
                    onClick={openAddModal}
                >
                    Add to Queue
                </Button>
            </div>

            {/* Stats */}
            <Row gutter={[16, 16]} style={{ marginBottom: 24 }}>
                <Col xs={12} sm={8} lg={4}>
                    <Card bodyStyle={{ padding: 16 }}>
                        <Statistic title="Total" value={stats.total} />
                    </Card>
                </Col>
                <Col xs={12} sm={8} lg={4}>
                    <Card bodyStyle={{ padding: 16 }}>
                        <Statistic
                            title="Pending"
                            value={stats.pending}
                            valueStyle={{ color: '#8c8c8c' }}
                            prefix={<ClockCircleOutlined />}
                        />
                    </Card>
                </Col>
                <Col xs={12} sm={8} lg={4}>
                    <Card bodyStyle={{ padding: 16 }}>
                        <Statistic
                            title="Printed"
                            value={stats.printed}
                            valueStyle={{ color: '#1890ff' }}
                            prefix={<PrinterOutlined />}
                        />
                    </Card>
                </Col>
                <Col xs={12} sm={8} lg={4}>
                    <Card bodyStyle={{ padding: 16 }}>
                        <Statistic
                            title="Claimed"
                            value={stats.claimed}
                            valueStyle={{ color: '#52c41a' }}
                            prefix={<CheckCircleOutlined />}
                        />
                    </Card>
                </Col>
                <Col xs={12} sm={8} lg={4}>
                    <Card bodyStyle={{ padding: 16 }}>
                        <Statistic
                            title="Printed Today"
                            value={stats.printed_today}
                            valueStyle={{ color: '#722ed1' }}
                            prefix={<GiftOutlined />}
                        />
                    </Card>
                </Col>
            </Row>

            {/* Filters */}
            <Card style={{ marginBottom: 16, borderRadius: 8 }}>
                <Row gutter={[16, 16]} align="middle">
                    <Col xs={24} sm={8}>
                        <Input
                            placeholder="Search by name, OSCA ID, or queue #..."
                            prefix={<SearchOutlined style={{ color: '#bfbfbf' }} />}
                            allowClear
                            onChange={(e) => handleSearch(e.target.value)}
                        />
                    </Col>
                    <Col xs={8} sm={4}>
                        <Select
                            placeholder="Status"
                            style={{ width: '100%' }}
                            allowClear
                            onChange={(v) => handleFilterChange('status', v)}
                        >
                            <Option value="pending">Pending</Option>
                            <Option value="printed">Printed</Option>
                            <Option value="claimed">Claimed</Option>
                        </Select>
                    </Col>
                    <Col xs={8} sm={4}>
                        <Select
                            placeholder="Type"
                            style={{ width: '100%' }}
                            allowClear
                            onChange={(v) => handleFilterChange('id_type', v)}
                        >
                            <Option value="new">New</Option>
                            <Option value="renewal">Renewal</Option>
                            <Option value="replacement">Replacement</Option>
                        </Select>
                    </Col>
                    <Col xs={24} sm={6} style={{ textAlign: 'right' }}>
                        <Space>
                            <Button
                                icon={<ReloadOutlined />}
                                onClick={() => { fetchItems(1); fetchStatistics(); }}
                            >
                                Refresh
                            </Button>
                            {selectedRowKeys.length > 0 && (
                                <>
                                    <Button
                                        icon={<PrinterOutlined />}
                                        onClick={handleBulkPrint}
                                    >
                                        Print ({selectedRowKeys.length})
                                    </Button>
                                    <Button
                                        type="primary"
                                        icon={<CheckCircleOutlined />}
                                        onClick={handleBulkClaim}
                                    >
                                        Claim ({selectedRowKeys.length})
                                    </Button>
                                </>
                            )}
                        </Space>
                    </Col>
                </Row>
            </Card>

            {/* Table */}
            <Card style={{ borderRadius: 8 }}>
                <Table
                    rowSelection={rowSelection}
                    columns={columns}
                    dataSource={items}
                    rowKey="id"
                    loading={loading}
                    pagination={{
                        ...pagination,
                        showSizeChanger: true,
                        showTotal: (total, range) => `${range[0]}-${range[1]} of ${total} items`,
                    }}
                    onChange={handleTableChange}
                    scroll={{ x: 900 }}
                />
            </Card>

            {/* Status Update Modal */}
            <Modal
                title="Update Status"
                open={statusModal.visible}
                onCancel={() => setStatusModal({ visible: false, item: null })}
                footer={null}
            >
                <Form form={form} layout="vertical" onFinish={handleStatusUpdate}>
                    <div style={{ marginBottom: 16, padding: 12, background: '#f5f5f5', borderRadius: 8 }}>
                        <Text strong>
                            {statusModal.item?.senior?.first_name} {statusModal.item?.senior?.last_name}
                        </Text>
                        <br />
                        <Text type="secondary">
                            Queue: {statusModal.item?.queue_number} | {statusModal.item?.id_type?.toUpperCase()} ID
                        </Text>
                    </div>
                    <Form.Item name="status" label="Status" rules={[{ required: true }]}>
                        <Select>
                            <Option value="pending">Pending</Option>
                            <Option value="printed">Printed</Option>
                            <Option value="claimed">Claimed</Option>
                            <Option value="cancelled">Cancelled</Option>
                        </Select>
                    </Form.Item>
                    <Form.Item name="notes" label="Notes">
                        <Input.TextArea rows={2} placeholder="Optional notes..." />
                    </Form.Item>
                    <Form.Item style={{ marginBottom: 0, textAlign: 'right' }}>
                        <Space>
                            <Button onClick={() => setStatusModal({ visible: false, item: null })}>Cancel</Button>
                            <Button type="primary" htmlType="submit">Update</Button>
                        </Space>
                    </Form.Item>
                </Form>
            </Modal>

            {/* Add to Queue Modal */}
            <Modal
                title="Add to ID Printing Queue"
                open={addModal.visible}
                onCancel={() => setAddModal({ visible: false, loading: false })}
                footer={null}
                width={500}
            >
                <Form form={addForm} layout="vertical" onFinish={handleAddToQueue}>
                    {/* Senior Search */}
                    <Form.Item label="Search Senior Citizen" required>
                        <Input
                            placeholder="Type name or OSCA ID to search..."
                            prefix={<SearchOutlined />}
                            onChange={(e) => searchSeniors(e.target.value)}
                            allowClear
                        />
                    </Form.Item>

                    {/* Search Results */}
                    <div style={{ marginBottom: 16, maxHeight: 200, overflowY: 'auto' }}>
                        {searchingSeniors ? (
                            <div style={{ textAlign: 'center', padding: 20 }}><Spin /></div>
                        ) : availableSeniors.length > 0 ? (
                            availableSeniors.map((senior) => (
                                <div
                                    key={senior.id}
                                    onClick={() => setSelectedSenior(senior)}
                                    style={{
                                        padding: '8px 12px',
                                        borderRadius: 6,
                                        cursor: 'pointer',
                                        background: selectedSenior?.id === senior.id ? '#e6f7ff' : '#fafafa',
                                        border: selectedSenior?.id === senior.id ? '1px solid #1890ff' : '1px solid #f0f0f0',
                                        marginBottom: 8,
                                    }}
                                >
                                    <Text strong>{senior.full_name}</Text>
                                    <br />
                                    <Text type="secondary" style={{ fontSize: 12 }}>
                                        {senior.osca_id} | {senior.barangay?.name}
                                    </Text>
                                </div>
                            ))
                        ) : (
                            <Empty description="Search for a senior citizen" image={Empty.PRESENTED_IMAGE_SIMPLE} />
                        )}
                    </div>

                    {selectedSenior && (
                        <div style={{ marginBottom: 16, padding: 12, background: '#f6ffed', border: '1px solid #b7eb8f', borderRadius: 8 }}>
                            <Badge status="success" text={<Text strong>Selected: {selectedSenior.full_name}</Text>} />
                        </div>
                    )}

                    <Form.Item name="id_type" label="ID Type" rules={[{ required: true, message: 'Select ID type' }]}>
                        <Select placeholder="Select type">
                            <Option value="new">New ID</Option>
                            <Option value="renewal">Renewal</Option>
                            <Option value="replacement">Replacement (Lost/Damaged)</Option>
                        </Select>
                    </Form.Item>

                    <Form.Item name="notes" label="Notes">
                        <Input.TextArea rows={2} placeholder="Optional notes..." />
                    </Form.Item>

                    <Form.Item style={{ marginBottom: 0, textAlign: 'right' }}>
                        <Space>
                            <Button onClick={() => setAddModal({ visible: false, loading: false })}>Cancel</Button>
                            <Button
                                type="primary"
                                htmlType="submit"
                                loading={addModal.loading}
                                disabled={!selectedSenior}
                            >
                                Add to Queue
                            </Button>
                        </Space>
                    </Form.Item>
                </Form>
            </Modal>

            {/* ID Card Preview Modal */}
            <Modal
                title={`ID Card Preview - ${previewModal.item?.queue_number || ''}`}
                open={previewModal.visible}
                onCancel={() => setPreviewModal({ visible: false, item: null, loading: false, cardData: null })}
                footer={null}
                width={420}
            >
                {previewModal.loading ? (
                    <div style={{ textAlign: 'center', padding: 40 }}>
                        <Spin size="large" />
                        <div style={{ marginTop: 16 }}>Loading ID card data...</div>
                    </div>
                ) : previewModal.cardData ? (
                    <IdCardPreview
                        cardData={previewModal.cardData}
                        onPrint={() => {
                            // Optionally update status to printed after printing
                        }}
                    />
                ) : (
                    <Empty description="Could not load ID card data" />
                )}
            </Modal>
        </div>
    );
};

export default IdPrinting;
