import { useEffect, useState } from 'react';
import {
    Button,
    Form,
    Input,
    Modal,
    Select,
    Space,
    Switch,
    Table,
    Tag,
    message,
} from 'antd';
import { PlusOutlined } from '@ant-design/icons';
import { benefitTypesApi } from '../services/api';

const categoryOptions = [
    { label: 'Identity', value: 'identity' },
    { label: 'Authorization', value: 'authorization' },
    { label: 'Proof of Life', value: 'proof_of_life' },
    { label: 'Claim Stub', value: 'claim_stub' },
    { label: 'Signature', value: 'signature' },
    { label: 'Relationship', value: 'relationship' },
    { label: 'Medical', value: 'medical' },
];

const appliesWhenOptions = [
    { label: 'Both', value: 'both' },
    { label: 'Self Only', value: 'self_only' },
    { label: 'Representative Only', value: 'representative_only' },
];

function BenefitPayoutRequirementsModal({ open, benefitType, onClose }) {
    const [requirements, setRequirements] = useState([]);
    const [loading, setLoading] = useState(false);
    const [saving, setSaving] = useState(false);
    const [editorOpen, setEditorOpen] = useState(false);
    const [editingRequirement, setEditingRequirement] = useState(null);
    const [form] = Form.useForm();

    useEffect(() => {
        if (open && benefitType?.id) {
            loadRequirements();
        }
    }, [open, benefitType?.id]);

    const loadRequirements = async () => {
        setLoading(true);
        try {
            const response = await benefitTypesApi.getPayoutRequirements(benefitType.id);
            setRequirements(response.data.data || []);
        } catch (error) {
            message.error('Failed to load payout requirements');
        } finally {
            setLoading(false);
        }
    };

    const openEditor = (record = null) => {
        setEditingRequirement(record);
        form.setFieldsValue(record || {
            category: 'identity',
            is_required: true,
            is_active: true,
            applies_when: 'both',
        });
        setEditorOpen(true);
    };

    const handleSubmit = async () => {
        try {
            const values = await form.validateFields();
            setSaving(true);
            if (editingRequirement) {
                await benefitTypesApi.updatePayoutRequirement(benefitType.id, editingRequirement.id, values);
                message.success('Requirement updated successfully');
            } else {
                await benefitTypesApi.createPayoutRequirement(benefitType.id, values);
                message.success('Requirement created successfully');
            }
            setEditorOpen(false);
            loadRequirements();
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to save payout requirement');
        } finally {
            setSaving(false);
        }
    };

    const handleToggle = async (record) => {
        try {
            await benefitTypesApi.togglePayoutRequirement(benefitType.id, record.id);
            message.success(record.is_active ? 'Requirement deactivated' : 'Requirement activated');
            loadRequirements();
        } catch (error) {
            message.error('Failed to update requirement status');
        }
    };

    return (
        <>
            <Modal
                title={`Payout Requirements: ${benefitType?.name || ''}`}
                open={open}
                onCancel={onClose}
                footer={null}
                width={900}
            >
                <Space style={{ marginBottom: 16 }}>
                    <Button type="primary" icon={<PlusOutlined />} onClick={() => openEditor()}>
                        Add Requirement
                    </Button>
                </Space>

                <Table
                    rowKey="id"
                    loading={loading}
                    dataSource={requirements}
                    pagination={false}
                    columns={[
                        { title: 'Name', dataIndex: 'name', key: 'name' },
                        { title: 'Category', dataIndex: 'category', key: 'category', render: (value) => value?.replaceAll('_', ' ') },
                        { title: 'Applies To', dataIndex: 'applies_when', key: 'applies_when', render: (value) => value?.replaceAll('_', ' ') },
                        {
                            title: 'Required',
                            dataIndex: 'is_required',
                            key: 'is_required',
                            render: (value) => <Tag color={value ? 'red' : 'default'}>{value ? 'Required' : 'Optional'}</Tag>,
                        },
                        {
                            title: 'Status',
                            dataIndex: 'is_active',
                            key: 'is_active',
                            render: (value) => <Tag color={value ? 'green' : 'default'}>{value ? 'Active' : 'Inactive'}</Tag>,
                        },
                        {
                            title: 'Actions',
                            key: 'actions',
                            render: (_, record) => (
                                <Space>
                                    <Button size="small" onClick={() => openEditor(record)}>Edit</Button>
                                    <Button size="small" onClick={() => handleToggle(record)}>
                                        {record.is_active ? 'Deactivate' : 'Activate'}
                                    </Button>
                                </Space>
                            ),
                        },
                    ]}
                />
            </Modal>

            <Modal
                title={editingRequirement ? 'Edit Payout Requirement' : 'Add Payout Requirement'}
                open={editorOpen}
                onCancel={() => setEditorOpen(false)}
                onOk={handleSubmit}
                confirmLoading={saving}
            >
                <Form form={form} layout="vertical">
                    <Form.Item name="name" label="Name" rules={[{ required: true, message: 'Required' }]}>
                        <Input />
                    </Form.Item>
                    <Form.Item name="description" label="Description / Instructions">
                        <Input.TextArea rows={3} />
                    </Form.Item>
                    <Form.Item name="category" label="Category" rules={[{ required: true, message: 'Required' }]}>
                        <Select options={categoryOptions} />
                    </Form.Item>
                    <Form.Item name="applies_when" label="Applies When" rules={[{ required: true, message: 'Required' }]}>
                        <Select options={appliesWhenOptions} />
                    </Form.Item>
                    <Form.Item name="sort_order" label="Sort Order">
                        <Input type="number" />
                    </Form.Item>
                    <Form.Item name="is_required" label="Required" valuePropName="checked">
                        <Switch />
                    </Form.Item>
                    <Form.Item name="is_active" label="Active" valuePropName="checked">
                        <Switch />
                    </Form.Item>
                </Form>
            </Modal>
        </>
    );
}

export default BenefitPayoutRequirementsModal;
