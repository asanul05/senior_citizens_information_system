import { useState, useEffect } from 'react';
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
    Typography,
    Modal,
    Form,
    DatePicker,
    Switch,
    message,
    Popconfirm,
} from 'antd';
import {
    SearchOutlined,
    PlusOutlined,
    EditOutlined,
    DeleteOutlined,
    NotificationOutlined,
    CalendarOutlined,
    EnvironmentOutlined,
} from '@ant-design/icons';
import { announcementsApi } from '../services/api';
import dayjs from 'dayjs';

const { Title, Text, Paragraph } = Typography;
const { Option } = Select;
const { TextArea } = Input;

const Announcements = () => {
    const [loading, setLoading] = useState(false);
    const [announcements, setAnnouncements] = useState([]);
    const [types, setTypes] = useState([]);
    const [pagination, setPagination] = useState({
        current: 1,
        pageSize: 10,
        total: 0,
    });
    const [filters, setFilters] = useState({
        search: '',
        is_published: '',
    });
    const [formModal, setFormModal] = useState({ visible: false, mode: 'create', item: null });
    const [form] = Form.useForm();

    useEffect(() => {
        fetchAnnouncements();
        fetchTypes();
    }, []);

    const fetchAnnouncements = async (page = 1, pageSize = 10) => {
        setLoading(true);
        try {
            const params = { page, per_page: pageSize, ...filters };
            const response = await announcementsApi.getList(params);
            const { data, current_page, per_page, total } = response.data.data;
            setAnnouncements(data);
            setPagination({ current: current_page, pageSize: per_page, total });
        } catch (error) {
            console.error('Error:', error);
            message.error('Failed to load announcements');
        } finally {
            setLoading(false);
        }
    };

    const fetchTypes = async () => {
        try {
            const response = await announcementsApi.getTypes();
            setTypes(response.data.data);
        } catch (error) {
            console.error('Error fetching types:', error);
        }
    };

    const handleTableChange = (paginationConfig) => {
        fetchAnnouncements(paginationConfig.current, paginationConfig.pageSize);
    };

    const handleSearch = (value) => {
        setFilters((prev) => ({ ...prev, search: value }));
        setTimeout(() => fetchAnnouncements(1), 300);
    };

    const openCreateModal = () => {
        form.resetFields();
        setFormModal({ visible: true, mode: 'create', item: null });
    };

    const openEditModal = (item) => {
        form.setFieldsValue({
            ...item,
            event_date: item.event_date ? dayjs(item.event_date) : null,
        });
        setFormModal({ visible: true, mode: 'edit', item });
    };

    const handleSubmit = async (values) => {
        try {
            const data = {
                ...values,
                event_date: values.event_date?.format('YYYY-MM-DD'),
            };

            if (formModal.mode === 'create') {
                await announcementsApi.create(data);
                message.success('Announcement created');
            } else {
                await announcementsApi.update(formModal.item.id, data);
                message.success('Announcement updated');
            }

            setFormModal({ visible: false, mode: 'create', item: null });
            fetchAnnouncements(pagination.current);
        } catch (error) {
            message.error('Failed to save announcement');
        }
    };

    const handleDelete = async (id) => {
        try {
            await announcementsApi.delete(id);
            message.success('Announcement deleted');
            fetchAnnouncements(pagination.current);
        } catch (error) {
            message.error('Failed to delete');
        }
    };

    const columns = [
        {
            title: 'Title',
            dataIndex: 'title',
            key: 'title',
            render: (title, record) => (
                <div>
                    <Text strong>{title}</Text>
                    <br />
                    {record.type && <Tag color="blue">{record.type.name}</Tag>}
                </div>
            ),
        },
        {
            title: 'Content',
            dataIndex: 'content',
            key: 'content',
            width: 300,
            render: (content) => (
                <Paragraph ellipsis={{ rows: 2 }} style={{ marginBottom: 0, fontSize: 13 }}>
                    {content}
                </Paragraph>
            ),
        },
        {
            title: 'Event',
            key: 'event',
            width: 150,
            render: (_, record) => (
                record.event_date ? (
                    <Space direction="vertical" size={0}>
                        <Space size={4}>
                            <CalendarOutlined />
                            <Text style={{ fontSize: 12 }}>{record.event_date}</Text>
                        </Space>
                        {record.location && (
                            <Space size={4}>
                                <EnvironmentOutlined />
                                <Text type="secondary" style={{ fontSize: 12 }}>{record.location}</Text>
                            </Space>
                        )}
                    </Space>
                ) : '-'
            ),
        },
        {
            title: 'Status',
            dataIndex: 'is_published',
            key: 'is_published',
            width: 100,
            render: (published) => (
                <Tag color={published ? 'green' : 'default'}>
                    {published ? 'Published' : 'Draft'}
                </Tag>
            ),
        },
        {
            title: 'Created',
            dataIndex: 'created_at',
            key: 'created_at',
            width: 120,
            render: (date) => date ? dayjs(date).format('MMM D, YYYY') : '-',
        },
        {
            title: 'Actions',
            key: 'actions',
            width: 100,
            render: (_, record) => (
                <Space>
                    <Button type="text" icon={<EditOutlined />} onClick={() => openEditModal(record)} />
                    <Popconfirm
                        title="Delete this announcement?"
                        onConfirm={() => handleDelete(record.id)}
                        okText="Yes"
                        cancelText="No"
                    >
                        <Button type="text" icon={<DeleteOutlined />} danger />
                    </Popconfirm>
                </Space>
            ),
        },
    ];

    return (
        <div>
            <div style={{ marginBottom: 24 }}>
                <Title level={3} style={{ margin: 0 }}>
                    <NotificationOutlined /> Announcements
                </Title>
                <Text type="secondary">Manage announcements and events for senior citizens</Text>
            </div>

            {/* Filters */}
            <Card style={{ marginBottom: 16, borderRadius: 8 }}>
                <Row gutter={[16, 16]} align="middle">
                    <Col xs={24} sm={10}>
                        <Input
                            placeholder="Search announcements..."
                            prefix={<SearchOutlined style={{ color: '#bfbfbf' }} />}
                            allowClear
                            onChange={(e) => handleSearch(e.target.value)}
                        />
                    </Col>
                    <Col xs={12} sm={6}>
                        <Select
                            placeholder="Filter status"
                            style={{ width: '100%' }}
                            allowClear
                            onChange={(value) => {
                                setFilters((prev) => ({ ...prev, is_published: value }));
                                setTimeout(() => fetchAnnouncements(1), 100);
                            }}
                        >
                            <Option value="1">Published</Option>
                            <Option value="0">Draft</Option>
                        </Select>
                    </Col>
                    <Col xs={12} sm={8} style={{ textAlign: 'right' }}>
                        <Button type="primary" icon={<PlusOutlined />} onClick={openCreateModal}>
                            New Announcement
                        </Button>
                    </Col>
                </Row>
            </Card>

            {/* Table */}
            <Card style={{ borderRadius: 8 }}>
                <Table
                    columns={columns}
                    dataSource={announcements}
                    rowKey="id"
                    loading={loading}
                    pagination={{
                        ...pagination,
                        showSizeChanger: true,
                        showTotal: (total) => `${total} announcements`,
                    }}
                    onChange={handleTableChange}
                />
            </Card>

            {/* Create/Edit Modal */}
            <Modal
                title={formModal.mode === 'create' ? 'New Announcement' : 'Edit Announcement'}
                open={formModal.visible}
                onCancel={() => setFormModal({ visible: false, mode: 'create', item: null })}
                footer={null}
                width={600}
            >
                <Form form={form} layout="vertical" onFinish={handleSubmit}>
                    <Form.Item name="title" label="Title" rules={[{ required: true }]}>
                        <Input placeholder="Announcement title" />
                    </Form.Item>

                    <Form.Item name="content" label="Content" rules={[{ required: true }]}>
                        <TextArea rows={4} placeholder="Announcement content..." />
                    </Form.Item>

                    <Row gutter={16}>
                        <Col span={12}>
                            <Form.Item name="type_id" label="Type">
                                <Select placeholder="Select type" allowClear>
                                    {types.map((t) => (
                                        <Option key={t.id} value={t.id}>{t.name}</Option>
                                    ))}
                                </Select>
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item name="event_date" label="Event Date">
                                <DatePicker style={{ width: '100%' }} />
                            </Form.Item>
                        </Col>
                    </Row>

                    <Row gutter={16}>
                        <Col span={12}>
                            <Form.Item name="location" label="Location">
                                <Input placeholder="Event location" />
                            </Form.Item>
                        </Col>
                        <Col span={12}>
                            <Form.Item name="target_audience" label="Target Audience">
                                <Input placeholder="e.g., All seniors, PWD" />
                            </Form.Item>
                        </Col>
                    </Row>

                    <Form.Item name="is_published" label="Publish" valuePropName="checked">
                        <Switch checkedChildren="Published" unCheckedChildren="Draft" />
                    </Form.Item>

                    <Form.Item style={{ marginBottom: 0, textAlign: 'right' }}>
                        <Space>
                            <Button onClick={() => setFormModal({ visible: false, mode: 'create', item: null })}>
                                Cancel
                            </Button>
                            <Button type="primary" htmlType="submit">
                                {formModal.mode === 'create' ? 'Create' : 'Save Changes'}
                            </Button>
                        </Space>
                    </Form.Item>
                </Form>
            </Modal>
        </div>
    );
};

export default Announcements;
