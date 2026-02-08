import { useState, useEffect } from 'react';
import {
    Card,
    Tabs,
    Table,
    Button,
    Space,
    Tag,
    Input,
    Select,
    Modal,
    Form,
    message,
    Popconfirm,
    Typography,
    Row,
    Col,
    Badge,
    Tooltip,
    Divider,
    Transfer,
} from 'antd';
import {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    SearchOutlined,
    ReloadOutlined,
    BranchesOutlined,
    EnvironmentOutlined,
    SwapOutlined,
} from '@ant-design/icons';
import { branchApi, barangayManagementApi } from '../../services/api';

const { Title, Text } = Typography;
const { Option } = Select;
const { TabPane } = Tabs;

function BranchManagement() {
    // Branch state
    const [branches, setBranches] = useState([]);
    const [branchLoading, setBranchLoading] = useState(false);
    const [branchModalVisible, setBranchModalVisible] = useState(false);
    const [branchModalMode, setBranchModalMode] = useState('create');
    const [selectedBranch, setSelectedBranch] = useState(null);
    const [branchForm] = Form.useForm();

    // Barangay state
    const [barangays, setBarangays] = useState([]);
    const [barangayLoading, setBarangayLoading] = useState(false);
    const [barangayFilters, setBarangayFilters] = useState({ search: '', branch_id: null });
    const [barangayModalVisible, setBarangayModalVisible] = useState(false);
    const [barangayModalMode, setBarangayModalMode] = useState('create');
    const [selectedBarangay, setSelectedBarangay] = useState(null);
    const [barangayForm] = Form.useForm();

    // Assignment state
    const [assignModalVisible, setAssignModalVisible] = useState(false);
    const [assignTargetBranch, setAssignTargetBranch] = useState(null);
    const [selectedBarangayIds, setSelectedBarangayIds] = useState([]);

    const [submitting, setSubmitting] = useState(false);

    useEffect(() => {
        loadBranches();
        loadBarangays();
    }, []);

    // ==========================================
    // BRANCH OPERATIONS
    // ==========================================
    const loadBranches = async () => {
        setBranchLoading(true);
        try {
            const response = await branchApi.getList();
            setBranches(response.data.data);
        } catch (error) {
            message.error('Failed to load Field Offices');
        } finally {
            setBranchLoading(false);
        }
    };

    const openBranchModal = (mode, record = null) => {
        setBranchModalMode(mode);
        setSelectedBranch(record);
        if (record) {
            branchForm.setFieldsValue(record);
        } else {
            branchForm.resetFields();
        }
        setBranchModalVisible(true);
    };

    const handleBranchSubmit = async () => {
        try {
            const values = await branchForm.validateFields();
            setSubmitting(true);

            if (branchModalMode === 'create') {
                await branchApi.create(values);
                message.success('Field Office created successfully');
            } else {
                await branchApi.update(selectedBranch.id, values);
                message.success('Field Office updated successfully');
            }

            setBranchModalVisible(false);
            loadBranches();
        } catch (error) {
            message.error(error.response?.data?.error || 'Operation failed');
        } finally {
            setSubmitting(false);
        }
    };

    const handleBranchDelete = async (id) => {
        try {
            await branchApi.delete(id);
            message.success('Field Office deleted successfully');
            loadBranches();
        } catch (error) {
            message.error(error.response?.data?.error || 'Failed to delete');
        }
    };

    // ==========================================
    // BARANGAY OPERATIONS
    // ==========================================
    const loadBarangays = async () => {
        setBarangayLoading(true);
        try {
            const params = { ...barangayFilters };
            Object.keys(params).forEach(key => {
                if (!params[key]) delete params[key];
            });
            const response = await barangayManagementApi.getList(params);
            setBarangays(response.data.data);
        } catch (error) {
            message.error('Failed to load barangays');
        } finally {
            setBarangayLoading(false);
        }
    };

    const openBarangayModal = (mode, record = null) => {
        setBarangayModalMode(mode);
        setSelectedBarangay(record);
        if (record) {
            barangayForm.setFieldsValue(record);
        } else {
            barangayForm.resetFields();
        }
        setBarangayModalVisible(true);
    };

    const handleBarangaySubmit = async () => {
        try {
            const values = await barangayForm.validateFields();
            setSubmitting(true);

            if (barangayModalMode === 'create') {
                await barangayManagementApi.create(values);
                message.success('Barangay created successfully');
            } else {
                await barangayManagementApi.update(selectedBarangay.id, values);
                message.success('Barangay updated successfully');
            }

            setBarangayModalVisible(false);
            loadBarangays();
        } catch (error) {
            message.error(error.response?.data?.error || 'Operation failed');
        } finally {
            setSubmitting(false);
        }
    };

    const handleBarangayDelete = async (id) => {
        try {
            await barangayManagementApi.delete(id);
            message.success('Barangay deleted successfully');
            loadBarangays();
        } catch (error) {
            message.error(error.response?.data?.error || 'Failed to delete');
        }
    };

    const handleQuickAssign = async (barangayId, branchId) => {
        try {
            await barangayManagementApi.assign(barangayId, branchId);
            message.success('Assignment updated');
            loadBarangays();
            loadBranches(); // Update counts
        } catch (error) {
            message.error('Failed to assign');
        }
    };

    const handleUnassign = async (barangayId) => {
        try {
            await barangayManagementApi.unassign(barangayId);
            message.success('Barangay unassigned');
            loadBarangays();
            loadBranches();
        } catch (error) {
            message.error('Failed to unassign');
        }
    };

    // ==========================================
    // BULK ASSIGNMENT
    // ==========================================
    const openAssignModal = (branch) => {
        setAssignTargetBranch(branch);
        // Pre-select currently assigned barangays
        const currentIds = barangays
            .filter(b => b.branch_id === branch.id)
            .map(b => b.id);
        setSelectedBarangayIds(currentIds);
        setAssignModalVisible(true);
    };

    const handleBulkAssign = async () => {
        try {
            setSubmitting(true);
            await barangayManagementApi.bulkAssign(assignTargetBranch.id, selectedBarangayIds);
            message.success('Barangays assigned successfully');
            setAssignModalVisible(false);
            loadBarangays();
            loadBranches();
        } catch (error) {
            message.error('Failed to assign barangays');
        } finally {
            setSubmitting(false);
        }
    };

    // ==========================================
    // TABLE COLUMNS
    // ==========================================
    const branchColumns = [
        {
            title: 'Code',
            dataIndex: 'code',
            key: 'code',
            width: 120,
        },
        {
            title: 'Name',
            dataIndex: 'name',
            key: 'name',
            render: (name, record) => (
                <Space>
                    <BranchesOutlined />
                    <span>{name}</span>
                    {record.id === 1 && <Tag color="gold">Main Office</Tag>}
                </Space>
            ),
        },
        {
            title: 'Address',
            dataIndex: 'address',
            key: 'address',
            ellipsis: true,
        },
        {
            title: 'Contact',
            dataIndex: 'contact_number',
            key: 'contact_number',
        },
        {
            title: 'Barangays',
            dataIndex: 'barangays_count',
            key: 'barangays_count',
            render: (count, record) => (
                record.id > 1 ? (
                    <Badge count={count || 0} showZero style={{ backgroundColor: count ? '#52c41a' : '#d9d9d9' }} />
                ) : '-'
            ),
        },
        {
            title: 'Status',
            dataIndex: 'is_active',
            key: 'is_active',
            render: (isActive) => (
                <Tag color={isActive ? 'success' : 'error'}>
                    {isActive ? 'Active' : 'Inactive'}
                </Tag>
            ),
        },
        {
            title: 'Actions',
            key: 'actions',
            width: 180,
            render: (_, record) => (
                record.id > 1 ? (
                    <Space size="small">
                        <Tooltip title="Edit">
                            <Button
                                type="text"
                                icon={<EditOutlined />}
                                onClick={() => openBranchModal('edit', record)}
                            />
                        </Tooltip>
                        <Tooltip title="Manage Barangays">
                            <Button
                                type="text"
                                icon={<SwapOutlined />}
                                onClick={() => openAssignModal(record)}
                            />
                        </Tooltip>
                        <Tooltip title="Delete">
                            <Popconfirm
                                title="Delete this Field Office?"
                                description="Must have no assigned barangays"
                                onConfirm={() => handleBranchDelete(record.id)}
                                okText="Delete"
                                okButtonProps={{ danger: true }}
                            >
                                <Button type="text" icon={<DeleteOutlined />} danger />
                            </Popconfirm>
                        </Tooltip>
                    </Space>
                ) : <Text type="secondary">-</Text>
            ),
        },
    ];

    const barangayColumns = [
        {
            title: 'Code',
            dataIndex: 'code',
            key: 'code',
            width: 100,
        },
        {
            title: 'Name',
            dataIndex: 'name',
            key: 'name',
            render: (name) => (
                <Space>
                    <EnvironmentOutlined />
                    <span>{name}</span>
                </Space>
            ),
        },
        {
            title: 'District',
            dataIndex: 'district',
            key: 'district',
        },
        {
            title: 'Assigned To',
            key: 'branch',
            render: (_, record) => (
                record.branch_name ? (
                    <Tag color="blue">{record.branch_name}</Tag>
                ) : (
                    <Tag color="warning">Unassigned</Tag>
                )
            ),
        },
        {
            title: 'Quick Assign',
            key: 'assign',
            width: 200,
            render: (_, record) => (
                <Select
                    placeholder="Assign to..."
                    size="small"
                    style={{ width: 150 }}
                    value={record.branch_id}
                    onChange={(value) => handleQuickAssign(record.id, value)}
                    allowClear
                    onClear={() => handleUnassign(record.id)}
                >
                    {branches.filter(b => b.id > 1).map(branch => (
                        <Option key={branch.id} value={branch.id}>{branch.name}</Option>
                    ))}
                </Select>
            ),
        },
        {
            title: 'Actions',
            key: 'actions',
            width: 120,
            render: (_, record) => (
                <Space size="small">
                    <Tooltip title="Edit">
                        <Button
                            type="text"
                            icon={<EditOutlined />}
                            onClick={() => openBarangayModal('edit', record)}
                        />
                    </Tooltip>
                    <Tooltip title="Delete">
                        <Popconfirm
                            title="Delete this barangay?"
                            description="Cannot delete if has registered seniors"
                            onConfirm={() => handleBarangayDelete(record.id)}
                            okText="Delete"
                            okButtonProps={{ danger: true }}
                        >
                            <Button type="text" icon={<DeleteOutlined />} danger />
                        </Popconfirm>
                    </Tooltip>
                </Space>
            ),
        },
    ];

    return (
        <div style={{ padding: '24px' }}>
            <Card>
                <Title level={4} style={{ marginBottom: 24 }}>Field Office & Barangay Management</Title>

                <Tabs defaultActiveKey="branches">
                    <TabPane tab={<span><BranchesOutlined /> Field Offices</span>} key="branches">
                        <Row justify="end" style={{ marginBottom: 16 }}>
                            <Space>
                                <Button icon={<ReloadOutlined />} onClick={loadBranches}>
                                    Refresh
                                </Button>
                                <Button
                                    type="primary"
                                    icon={<PlusOutlined />}
                                    onClick={() => openBranchModal('create')}
                                >
                                    Add Field Office
                                </Button>
                            </Space>
                        </Row>
                        <Table
                            columns={branchColumns}
                            dataSource={branches}
                            rowKey="id"
                            loading={branchLoading}
                            pagination={false}
                        />
                    </TabPane>

                    <TabPane tab={<span><EnvironmentOutlined /> Barangays</span>} key="barangays">
                        <Row gutter={16} style={{ marginBottom: 16 }}>
                            <Col span={8}>
                                <Input
                                    placeholder="Search barangay name..."
                                    prefix={<SearchOutlined />}
                                    value={barangayFilters.search}
                                    onChange={(e) => setBarangayFilters(prev => ({ ...prev, search: e.target.value }))}
                                    onPressEnter={loadBarangays}
                                />
                            </Col>
                            <Col span={6}>
                                <Select
                                    placeholder="Filter by Field Office"
                                    allowClear
                                    style={{ width: '100%' }}
                                    value={barangayFilters.branch_id}
                                    onChange={(value) => setBarangayFilters(prev => ({ ...prev, branch_id: value }))}
                                >
                                    <Option value="unassigned">Unassigned</Option>
                                    {branches.filter(b => b.id > 1).map(branch => (
                                        <Option key={branch.id} value={branch.id}>{branch.name}</Option>
                                    ))}
                                </Select>
                            </Col>
                            <Col>
                                <Space>
                                    <Button icon={<SearchOutlined />} onClick={loadBarangays}>Search</Button>
                                    <Button icon={<ReloadOutlined />} onClick={() => {
                                        setBarangayFilters({ search: '', branch_id: null });
                                        loadBarangays();
                                    }}>Reset</Button>
                                    <Button
                                        type="primary"
                                        icon={<PlusOutlined />}
                                        onClick={() => openBarangayModal('create')}
                                    >
                                        Add Barangay
                                    </Button>
                                </Space>
                            </Col>
                        </Row>
                        <Table
                            columns={barangayColumns}
                            dataSource={barangays}
                            rowKey="id"
                            loading={barangayLoading}
                            pagination={{ pageSize: 20 }}
                            size="small"
                        />
                    </TabPane>
                </Tabs>
            </Card>

            {/* Branch Modal */}
            <Modal
                title={branchModalMode === 'create' ? 'Add Field Office' : 'Edit Field Office'}
                open={branchModalVisible}
                onCancel={() => setBranchModalVisible(false)}
                onOk={handleBranchSubmit}
                confirmLoading={submitting}
            >
                <Form form={branchForm} layout="vertical">
                    <Form.Item
                        name="code"
                        label="Code"
                        rules={[{ required: true, message: 'Required' }]}
                    >
                        <Input placeholder="e.g., OSCA-FO8" />
                    </Form.Item>
                    <Form.Item
                        name="name"
                        label="Name"
                        rules={[{ required: true, message: 'Required' }]}
                    >
                        <Input placeholder="e.g., Field Office 8" />
                    </Form.Item>
                    <Form.Item name="address" label="Address">
                        <Input.TextArea rows={2} />
                    </Form.Item>
                    <Form.Item name="contact_number" label="Contact Number">
                        <Input />
                    </Form.Item>
                    <Form.Item name="email" label="Email">
                        <Input type="email" />
                    </Form.Item>
                    <Form.Item name="branch_head" label="Branch Head">
                        <Input />
                    </Form.Item>
                </Form>
            </Modal>

            {/* Barangay Modal */}
            <Modal
                title={barangayModalMode === 'create' ? 'Add Barangay' : 'Edit Barangay'}
                open={barangayModalVisible}
                onCancel={() => setBarangayModalVisible(false)}
                onOk={handleBarangaySubmit}
                confirmLoading={submitting}
            >
                <Form form={barangayForm} layout="vertical">
                    <Form.Item
                        name="code"
                        label="Code"
                        rules={[{ required: true, message: 'Required' }]}
                    >
                        <Input placeholder="e.g., ZC-099" />
                    </Form.Item>
                    <Form.Item
                        name="name"
                        label="Name"
                        rules={[{ required: true, message: 'Required' }]}
                    >
                        <Input placeholder="Barangay name" />
                    </Form.Item>
                    <Form.Item name="district" label="District">
                        <Select allowClear>
                            <Option value="District 1">District 1</Option>
                            <Option value="District 2">District 2</Option>
                        </Select>
                    </Form.Item>
                    {barangayModalMode === 'create' && (
                        <Form.Item name="branch_id" label="Assign to Field Office">
                            <Select allowClear placeholder="Select Field Office (optional)">
                                {branches.filter(b => b.id > 1).map(branch => (
                                    <Option key={branch.id} value={branch.id}>{branch.name}</Option>
                                ))}
                            </Select>
                        </Form.Item>
                    )}
                </Form>
            </Modal>

            {/* Bulk Assignment Modal */}
            <Modal
                title={`Manage Barangays - ${assignTargetBranch?.name}`}
                open={assignModalVisible}
                onCancel={() => setAssignModalVisible(false)}
                onOk={handleBulkAssign}
                confirmLoading={submitting}
                width={800}
            >
                <Text type="secondary" style={{ display: 'block', marginBottom: 16 }}>
                    Select barangays to assign to this Field Office.
                    Previously assigned barangays from other FOs will be automatically reassigned.
                </Text>
                <Select
                    mode="multiple"
                    placeholder="Select barangays"
                    style={{ width: '100%' }}
                    value={selectedBarangayIds}
                    onChange={setSelectedBarangayIds}
                    optionFilterProp="children"
                    showSearch
                    maxTagCount="responsive"
                >
                    {barangays.map(barangay => (
                        <Option key={barangay.id} value={barangay.id}>
                            {barangay.name}
                            {barangay.branch_name && barangay.branch_id !== assignTargetBranch?.id && (
                                <Text type="secondary"> (currently: {barangay.branch_name})</Text>
                            )}
                        </Option>
                    ))}
                </Select>
            </Modal>
        </div>
    );
}

export default BranchManagement;
