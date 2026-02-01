import { useState, useEffect } from 'react';
import {
    Card,
    Table,
    Button,
    Space,
    Tag,
    Modal,
    Form,
    Input,
    InputNumber,
    Switch,
    message,
    Popconfirm,
    Typography,
    Row,
    Col,
    Tooltip,
    Alert,
} from 'antd';
import {
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    ReloadOutlined,
    GiftOutlined,
    CheckCircleOutlined,
    StopOutlined,
} from '@ant-design/icons';
import { benefitTypesApi } from '../../services/api';

const { Title, Text } = Typography;

function BenefitSettings() {
    const [benefitTypes, setBenefitTypes] = useState([]);
    const [loading, setLoading] = useState(false);
    const [modalVisible, setModalVisible] = useState(false);
    const [modalMode, setModalMode] = useState('create');
    const [selectedType, setSelectedType] = useState(null);
    const [form] = Form.useForm();
    const [submitting, setSubmitting] = useState(false);

    useEffect(() => {
        loadBenefitTypes();
    }, []);

    const loadBenefitTypes = async () => {
        setLoading(true);
        try {
            const response = await benefitTypesApi.getAll();
            setBenefitTypes(response.data.data);
        } catch (error) {
            message.error('Failed to load benefit types');
        } finally {
            setLoading(false);
        }
    };

    const openModal = (mode, record = null) => {
        setModalMode(mode);
        setSelectedType(record);
        if (record) {
            form.setFieldsValue(record);
        } else {
            form.resetFields();
            form.setFieldsValue({ is_one_time: false });
        }
        setModalVisible(true);
    };

    const handleSubmit = async () => {
        try {
            const values = await form.validateFields();
            setSubmitting(true);

            if (modalMode === 'create') {
                await benefitTypesApi.create(values);
                message.success('Benefit type created successfully');
            } else {
                await benefitTypesApi.update(selectedType.id, values);
                message.success('Benefit type updated successfully');
            }

            setModalVisible(false);
            loadBenefitTypes();
        } catch (error) {
            message.error(error.response?.data?.error || 'Operation failed');
        } finally {
            setSubmitting(false);
        }
    };

    const handleToggle = async (record) => {
        try {
            await benefitTypesApi.toggle(record.id);
            message.success(record.is_active ? 'Benefit type deactivated' : 'Benefit type activated');
            loadBenefitTypes();
        } catch (error) {
            message.error('Failed to toggle status');
        }
    };

    const handleDelete = async (id) => {
        try {
            await benefitTypesApi.delete(id);
            message.success('Benefit type deleted successfully');
            loadBenefitTypes();
        } catch (error) {
            message.error(error.response?.data?.error || 'Failed to delete');
        }
    };

    const formatCurrency = (amount) => {
        return new Intl.NumberFormat('en-PH', {
            style: 'currency',
            currency: 'PHP',
        }).format(amount);
    };

    const columns = [
        {
            title: 'Benefit Name',
            dataIndex: 'name',
            key: 'name',
            render: (name, record) => (
                <Space>
                    <GiftOutlined style={{ color: record.is_active ? '#52c41a' : '#d9d9d9' }} />
                    <Text strong={record.is_active} type={!record.is_active ? 'secondary' : undefined}>
                        {name}
                    </Text>
                </Space>
            ),
        },
        {
            title: 'Description',
            dataIndex: 'description',
            key: 'description',
            ellipsis: true,
            render: (desc) => desc || <Text type="secondary">-</Text>,
        },
        {
            title: 'Age Eligibility',
            key: 'age',
            width: 140,
            render: (_, record) => (
                <Tag color="blue">
                    {record.max_age
                        ? `${record.min_age} - ${record.max_age} years`
                        : `${record.min_age}+ years`
                    }
                </Tag>
            ),
        },
        {
            title: 'Amount',
            dataIndex: 'amount',
            key: 'amount',
            width: 150,
            render: (amount) => (
                <Text strong style={{ color: '#52c41a' }}>
                    {formatCurrency(amount)}
                </Text>
            ),
        },
        {
            title: 'Frequency',
            dataIndex: 'is_one_time',
            key: 'is_one_time',
            width: 120,
            render: (isOneTime) => (
                <Tag color={isOneTime ? 'orange' : 'purple'}>
                    {isOneTime ? 'One-time' : 'Recurring'}
                </Tag>
            ),
        },
        {
            title: 'Status',
            dataIndex: 'is_active',
            key: 'is_active',
            width: 100,
            render: (isActive) => (
                <Tag color={isActive ? 'success' : 'error'}>
                    {isActive ? 'Active' : 'Inactive'}
                </Tag>
            ),
        },
        {
            title: 'Actions',
            key: 'actions',
            width: 150,
            render: (_, record) => (
                <Space size="small">
                    <Tooltip title="Edit">
                        <Button
                            type="text"
                            icon={<EditOutlined />}
                            onClick={() => openModal('edit', record)}
                        />
                    </Tooltip>
                    <Tooltip title={record.is_active ? 'Deactivate' : 'Activate'}>
                        <Popconfirm
                            title={`${record.is_active ? 'Deactivate' : 'Activate'} this benefit type?`}
                            onConfirm={() => handleToggle(record)}
                            okText="Yes"
                            cancelText="No"
                        >
                            <Button
                                type="text"
                                icon={record.is_active ? <StopOutlined /> : <CheckCircleOutlined />}
                                danger={record.is_active}
                            />
                        </Popconfirm>
                    </Tooltip>
                    <Tooltip title="Delete">
                        <Popconfirm
                            title="Delete this benefit type?"
                            description="Cannot delete if claims exist"
                            onConfirm={() => handleDelete(record.id)}
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
                <Row justify="space-between" align="middle" style={{ marginBottom: 24 }}>
                    <Col>
                        <Title level={4} style={{ margin: 0 }}>Benefit Types Management</Title>
                        <Text type="secondary">Configure benefits available for senior citizens</Text>
                    </Col>
                    <Col>
                        <Space>
                            <Button icon={<ReloadOutlined />} onClick={loadBenefitTypes}>
                                Refresh
                            </Button>
                            <Button
                                type="primary"
                                icon={<PlusOutlined />}
                                onClick={() => openModal('create')}
                            >
                                Add Benefit Type
                            </Button>
                        </Space>
                    </Col>
                </Row>

                <Alert
                    message="Benefit Eligibility"
                    description="Seniors are automatically eligible for benefits based on their age. Set the minimum age requirement for each benefit type."
                    type="info"
                    showIcon
                    style={{ marginBottom: 16 }}
                />

                <Table
                    columns={columns}
                    dataSource={benefitTypes}
                    rowKey="id"
                    loading={loading}
                    pagination={false}
                />
            </Card>

            {/* Create/Edit Modal */}
            <Modal
                title={modalMode === 'create' ? 'Add Benefit Type' : 'Edit Benefit Type'}
                open={modalVisible}
                onCancel={() => setModalVisible(false)}
                onOk={handleSubmit}
                confirmLoading={submitting}
                width={600}
            >
                <Form form={form} layout="vertical">
                    <Form.Item
                        name="name"
                        label="Benefit Name"
                        rules={[{ required: true, message: 'Required' }]}
                    >
                        <Input placeholder="e.g., Centenarian Cash Gift" />
                    </Form.Item>

                    <Form.Item name="description" label="Description">
                        <Input.TextArea rows={2} placeholder="Brief description of the benefit" />
                    </Form.Item>

                    <Row gutter={16}>
                        <Col span={12}>
                            <Form.Item
                                name="min_age"
                                label="Minimum Age"
                                rules={[{ required: true, message: 'Required' }]}
                            >
                                <InputNumber
                                    min={60}
                                    max={120}
                                    style={{ width: '100%' }}
                                    placeholder="60"
                                />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item
                                name="max_age"
                                label="Maximum Age (optional)"
                                help="Leave empty for no maximum"
                            >
                                <InputNumber
                                    min={60}
                                    max={150}
                                    style={{ width: '100%' }}
                                    placeholder="Optional"
                                />
                            </Form.Item>
                        </Col>
                    </Row>

                    <Form.Item
                        name="amount"
                        label="Amount (PHP)"
                        rules={[{ required: true, message: 'Required' }]}
                    >
                        <InputNumber
                            min={0}
                            step={100}
                            style={{ width: '100%' }}
                            formatter={value => `₱ ${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')}
                            parser={value => value.replace(/₱\s?|(,*)/g, '')}
                        />
                    </Form.Item>

                    <Form.Item
                        name="is_one_time"
                        label="One-time Benefit"
                        valuePropName="checked"
                        help="If enabled, seniors can only claim this benefit once"
                    >
                        <Switch />
                    </Form.Item>
                </Form>
            </Modal>
        </div>
    );
}

export default BenefitSettings;
