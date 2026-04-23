import { useState } from 'react';
import {
    Modal,
    Form,
    Input,
    DatePicker,
    TimePicker,
    Radio,
    Select,
    Upload,
    Button,
    Steps,
    Typography,
    Divider,
    Alert,
    Row,
    Col,
    Descriptions,
    Space,
    Checkbox,
    message,
    Card,
} from 'antd';
import {
    UploadOutlined,
    ExclamationCircleOutlined,
    CheckCircleOutlined,
    FileTextOutlined,
    UserOutlined,
    MedicineBoxOutlined,
    InfoCircleOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { seniorsApi } from '../services/api';

const { Title, Text, Paragraph } = Typography;
const { TextArea } = Input;

function ReportDeceasedModal({ visible, senior, onClose, onSuccess }) {
    const [form] = Form.useForm();
    const [currentStep, setCurrentStep] = useState(0);
    const [submitting, setSubmitting] = useState(false);
    const [deathCertFile, setDeathCertFile] = useState([]);
    const [supportingDocFile, setSupportingDocFile] = useState([]);
    const [confirmed, setConfirmed] = useState(false);
    const [reporterSource, setReporterSource] = useState('family'); // 'family' or 'manual'
    const [selectedFamilyMemberId, setSelectedFamilyMemberId] = useState(null);

    // Watch for conditional fields
    const deathLocationType = Form.useWatch('death_location_type', form);
    const relationship = Form.useWatch('relationship_to_deceased', form);
    const supportingDocType = Form.useWatch('supporting_doc_type', form);

    // Get family members from senior record
    const familyMembers = senior?.family_members || [];

    // Build full name from family member record
    const buildFamilyMemberName = (member) => {
        return [member.first_name, member.middle_name, member.last_name, member.extension]
            .filter(Boolean)
            .join(' ');
    };

    // Map family member relationship to the relationship_to_deceased select options
    const mapRelationship = (rel) => {
        if (!rel) return null;
        const lower = rel.toLowerCase().trim();
        if (lower === 'child' || lower === 'son' || lower === 'daughter') return 'child';
        if (lower === 'spouse' || lower === 'husband' || lower === 'wife') return 'spouse';
        if (['relative', 'sibling', 'brother', 'sister', 'parent', 'mother', 'father',
             'nephew', 'niece', 'uncle', 'aunt', 'cousin', 'grandchild', 'grandson', 'granddaughter',
             'in-law', 'son-in-law', 'daughter-in-law'].includes(lower)) return 'relative';
        return 'other';
    };

    // Handle family member selection
    const handleFamilyMemberSelect = (memberId) => {
        setSelectedFamilyMemberId(memberId);
        if (memberId === null || memberId === undefined) {
            // Cleared selection
            form.setFieldsValue({
                reporter_full_name: undefined,
                relationship_to_deceased: undefined,
                relationship_other: undefined,
                reporter_contact_number: undefined,
                reporter_address: undefined,
            });
            return;
        }
        const member = familyMembers.find((m) => m.id === memberId);
        if (!member) return;

        const fullName = buildFamilyMemberName(member);
        const mappedRel = mapRelationship(member.relationship);

        form.setFieldsValue({
            reporter_full_name: fullName,
            relationship_to_deceased: mappedRel,
            relationship_other: mappedRel === 'other' ? member.relationship : undefined,
            reporter_contact_number: member.mobile_number || member.telephone_number || '',
            reporter_address: '',
        });
    };

    // Handle reporter source toggle
    const handleReporterSourceChange = (e) => {
        const value = e.target.value;
        setReporterSource(value);
        setSelectedFamilyMemberId(null);
        form.setFieldsValue({
            reporter_full_name: undefined,
            relationship_to_deceased: undefined,
            relationship_other: undefined,
            reporter_contact_number: undefined,
            reporter_address: undefined,
        });
    };

    const steps = [
        { title: 'Death Details', icon: <MedicineBoxOutlined /> },
        { title: 'Certificate & Docs', icon: <FileTextOutlined /> },
        { title: 'Informant & Burial', icon: <UserOutlined /> },
        { title: 'Review & Confirm', icon: <CheckCircleOutlined /> },
    ];

    // Fields required per step for validation
    const stepFields = [
        ['date_of_death'],
        [],
        ['reporter_full_name', 'relationship_to_deceased', 'reporter_contact_number'],
        [],
    ];

    const handleNext = async () => {
        try {
            await form.validateFields(stepFields[currentStep]);
            setCurrentStep(prev => prev + 1);
        } catch {
            // Validation errors shown by form
        }
    };

    const handlePrev = () => {
        setCurrentStep(prev => prev - 1);
    };

    const handleSubmit = async () => {
        if (!confirmed) {
            message.warning('Please confirm that you have reviewed all information.');
            return;
        }

        // Check death certificate file
        if (deathCertFile.length === 0) {
            message.error('Please upload a death certificate in Step 2.');
            setCurrentStep(1);
            return;
        }

        setSubmitting(true);
        try {
            const values = form.getFieldsValue(true);
            const formData = new FormData();

            // Append all text fields
            Object.entries(values).forEach(([key, value]) => {
                if (value !== undefined && value !== null && value !== '') {
                    if (value instanceof dayjs || (value && value.$isDayjsObject)) {
                        if (key === 'time_of_death') {
                            formData.append(key, value.format('HH:mm'));
                        } else {
                            formData.append(key, value.format('YYYY-MM-DD'));
                        }
                    } else {
                        formData.append(key, value);
                    }
                }
            });

            // Append files
            if (deathCertFile.length > 0 && deathCertFile[0].originFileObj) {
                formData.append('death_certificate', deathCertFile[0].originFileObj);
            }
            if (supportingDocFile.length > 0 && supportingDocFile[0].originFileObj) {
                formData.append('supporting_document', supportingDocFile[0].originFileObj);
            }

            await seniorsApi.reportDeceased(senior.id, formData);
            message.success('Senior citizen has been reported as deceased and archived.');
            handleClose();
            onSuccess?.();
        } catch (error) {
            const msg = error.response?.data?.message || 'Failed to submit deceased report';
            message.error(msg);
        } finally {
            setSubmitting(false);
        }
    };

    const handleClose = () => {
        form.resetFields();
        setCurrentStep(0);
        setDeathCertFile([]);
        setSupportingDocFile([]);
        setConfirmed(false);
        setReporterSource('family');
        setSelectedFamilyMemberId(null);
        onClose();
    };

    // ─── Step 0: Death Details ───
    const renderStep0 = () => (
        <div>
            <Row gutter={16}>
                <Col span={12}>
                    <Form.Item
                        name="date_of_death"
                        label="Date of Death"
                        rules={[{ required: true, message: 'Date of death is required' }]}
                    >
                        <DatePicker
                            style={{ width: '100%' }}
                            disabledDate={(d) => d && d > dayjs()}
                            format="MMMM D, YYYY"
                        />
                    </Form.Item>
                </Col>
                <Col span={12}>
                    <Form.Item name="time_of_death" label="Time of Death (PST - Philippine Standard Time)">
                        <TimePicker style={{ width: '100%' }} format="HH:mm" use12Hours />
                    </Form.Item>
                </Col>
            </Row>

            <Divider orientation="left" plain>Place of Death</Divider>
            <Row gutter={16}>
                <Col span={12}>
                    <Form.Item name="death_country" label="Country" initialValue="Philippines">
                        <Input />
                    </Form.Item>
                </Col>
                <Col span={12}>
                    <Form.Item name="death_province" label="Province">
                        <Input placeholder="e.g., Cebu" />
                    </Form.Item>
                </Col>
            </Row>
            <Row gutter={16}>
                <Col span={12}>
                    <Form.Item name="death_city" label="City / Municipality">
                        <Input placeholder="e.g., Cebu City" />
                    </Form.Item>
                </Col>
                <Col span={12}>
                    <Form.Item name="death_barangay" label="Barangay">
                        <Input placeholder="e.g., Lahug" />
                    </Form.Item>
                </Col>
            </Row>

            <Form.Item name="death_location_type" label="Type of Death Location">
                <Radio.Group>
                    <Space direction="vertical">
                        <Radio value="hospital">Hospital / Medical Facility</Radio>
                        <Radio value="residence">Residence / Home</Radio>
                        <Radio value="nursing_home">Nursing Home / Care Facility</Radio>
                        <Radio value="public_place">Public Place</Radio>
                        <Radio value="other">Other</Radio>
                    </Space>
                </Radio.Group>
            </Form.Item>
            {deathLocationType === 'other' && (
                <Form.Item name="death_location_type_other" label="Specify Location">
                    <Input placeholder="Specify the location" />
                </Form.Item>
            )}

            <Divider orientation="left" plain>Cause of Death</Divider>
            <Form.Item name="cause_of_death" label="Cause of Death">
                <TextArea
                    rows={3}
                    placeholder="Optional - e.g., Natural causes, cardiac arrest, etc."
                    showCount
                    maxLength={500}
                />
            </Form.Item>
        </div>
    );

    // ─── Step 1: Certificate & Documents ───
    const renderStep1 = () => (
        <div>
            <Divider orientation="left" plain>Death Certificate Information</Divider>
            <Row gutter={16}>
                <Col span={12}>
                    <Form.Item name="certificate_number" label="Death Certificate Number">
                        <Input placeholder="e.g., 2024-12345" />
                    </Form.Item>
                </Col>
                <Col span={12}>
                    <Form.Item name="registry_number" label="Registry Number">
                        <Input placeholder="e.g., 2024-67890" />
                    </Form.Item>
                </Col>
            </Row>
            <Row gutter={16}>
                <Col span={12}>
                    <Form.Item name="date_registered" label="Date Registered">
                        <DatePicker style={{ width: '100%' }} format="MMMM D, YYYY" />
                    </Form.Item>
                </Col>
                <Col span={12}>
                    <Form.Item name="registered_at" label="Registered At">
                        <Radio.Group>
                            <Radio value="lcro">Local Civil Registry Office</Radio>
                            <Radio value="psa">PSA</Radio>
                        </Radio.Group>
                    </Form.Item>
                </Col>
            </Row>
            <Row gutter={16}>
                <Col span={12}>
                    <Form.Item name="certificate_issued_by" label="Issued By">
                        <Input placeholder="Name of issuing officer" />
                    </Form.Item>
                </Col>
                <Col span={12}>
                    <Form.Item name="certificate_issue_date" label="Certificate Issue Date">
                        <DatePicker style={{ width: '100%' }} format="MMMM D, YYYY" />
                    </Form.Item>
                </Col>
            </Row>

            <Divider orientation="left" plain>Upload Documents</Divider>
            <Form.Item
                label="Death Certificate"
                required
                help="Accepted formats: JPG, PNG, PDF, DOC (Max 5MB)"
            >
                <Upload
                    beforeUpload={() => false}
                    fileList={deathCertFile}
                    onChange={({ fileList }) => setDeathCertFile(fileList.slice(-1))}
                    maxCount={1}
                    accept=".jpg,.jpeg,.png,.pdf,.doc,.docx"
                >
                    <Button icon={<UploadOutlined />}>Upload Death Certificate</Button>
                </Upload>
            </Form.Item>

            <Form.Item name="supporting_doc_type" label="Supporting Document Type">
                <Select allowClear placeholder="Select type (optional)">
                    <Select.Option value="burial_permit">Burial Permit</Select.Option>
                    <Select.Option value="hospital_cert">Hospital Certificate</Select.Option>
                    <Select.Option value="barangay_cert">Barangay Certification</Select.Option>
                    <Select.Option value="funeral_doc">Funeral Service Document</Select.Option>
                    <Select.Option value="other">Other</Select.Option>
                </Select>
            </Form.Item>
            {supportingDocType && (
                <Form.Item
                    label="Supporting Document"
                    help="Accepted formats: JPG, PNG, PDF, DOC (Max 5MB)"
                >
                    <Upload
                        beforeUpload={() => false}
                        fileList={supportingDocFile}
                        onChange={({ fileList }) => setSupportingDocFile(fileList.slice(-1))}
                        maxCount={1}
                        accept=".jpg,.jpeg,.png,.pdf,.doc,.docx"
                    >
                        <Button icon={<UploadOutlined />}>Upload Supporting Document</Button>
                    </Upload>
                </Form.Item>
            )}
        </div>
    );

    // ─── Step 2: Informant & Burial ───
    const renderStep2 = () => {
        const hasFamilyMembers = familyMembers.length > 0;
        const isFamilySource = reporterSource === 'family' && hasFamilyMembers;

        return (
            <div>
                <Divider orientation="left" plain>Informant / Reporter Information</Divider>

                {hasFamilyMembers && (
                    <Form.Item label="Reporter is a">
                        <Radio.Group value={reporterSource} onChange={handleReporterSourceChange}>
                            <Radio.Button value="family">Family Member on Record</Radio.Button>
                            <Radio.Button value="manual">Other Person</Radio.Button>
                        </Radio.Group>
                    </Form.Item>
                )}

                {isFamilySource && (
                    <Form.Item
                        label="Select Family Member"
                        required
                        help={!selectedFamilyMemberId ? 'Select a family member to auto-fill reporter details' : undefined}
                    >
                        <Select
                            placeholder="Select a family member"
                            value={selectedFamilyMemberId}
                            onChange={handleFamilyMemberSelect}
                            allowClear
                            showSearch
                            optionFilterProp="label"
                            options={familyMembers.map((m) => ({
                                value: m.id,
                                label: `${buildFamilyMemberName(m)}${m.relationship ? ` (${m.relationship})` : ''}`,
                            }))}
                        />
                    </Form.Item>
                )}

                <Row gutter={16}>
                    <Col span={12}>
                        <Form.Item
                            name="reporter_full_name"
                            label="Full Name of Reporter"
                            rules={[{ required: true, message: 'Reporter name is required' }]}
                        >
                            <Input
                                placeholder="Full name"
                                disabled={isFamilySource && !!selectedFamilyMemberId}
                            />
                        </Form.Item>
                    </Col>
                    <Col span={12}>
                        <Form.Item
                            name="relationship_to_deceased"
                            label="Relationship to Deceased"
                            rules={[{ required: true, message: 'Relationship is required' }]}
                        >
                            <Select
                                placeholder="Select relationship"
                                disabled={isFamilySource && !!selectedFamilyMemberId}
                            >
                                <Select.Option value="child">Child</Select.Option>
                                <Select.Option value="spouse">Spouse</Select.Option>
                                <Select.Option value="relative">Relative</Select.Option>
                                <Select.Option value="barangay_official">Barangay Official</Select.Option>
                                <Select.Option value="other">Other</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                {relationship === 'other' && (
                    <Form.Item name="relationship_other" label="Specify Relationship">
                        <Input
                            placeholder="Specify relationship"
                            disabled={isFamilySource && !!selectedFamilyMemberId}
                        />
                    </Form.Item>
                )}
                <Row gutter={16}>
                    <Col span={12}>
                        <Form.Item
                            name="reporter_contact_number"
                            label="Contact Number"
                            rules={[{ required: true, message: 'Contact number is required' }]}
                        >
                            <Input placeholder="09XX XXX XXXX" />
                        </Form.Item>
                    </Col>
                    <Col span={12}>
                        <Form.Item name="reporter_address" label="Address">
                            <Input placeholder="Reporter's address" />
                        </Form.Item>
                    </Col>
                </Row>

                <Divider orientation="left" plain>Burial / Funeral Information (Optional)</Divider>
                <Row gutter={16}>
                    <Col span={12}>
                        <Form.Item name="burial_date" label="Burial Date">
                            <DatePicker style={{ width: '100%' }} format="MMMM D, YYYY" />
                        </Form.Item>
                    </Col>
                    <Col span={12}>
                        <Form.Item name="burial_location" label="Burial Location">
                            <Input placeholder="e.g., City, Province" />
                        </Form.Item>
                    </Col>
                </Row>
                <Row gutter={16}>
                    <Col span={12}>
                        <Form.Item name="cemetery_name" label="Cemetery Name">
                            <Input placeholder="e.g., Holy Gardens" />
                        </Form.Item>
                    </Col>
                    <Col span={12}>
                        <Form.Item name="funeral_service_provider" label="Funeral Service Provider">
                            <Input placeholder="e.g., St. Peter" />
                        </Form.Item>
                    </Col>
                </Row>
            </div>
        );
    };

    // ─── Step 3: Review & Confirm ───
    const renderStep3 = () => {
        const values = form.getFieldsValue(true);
        const locationTypeLabels = {
            hospital: 'Hospital / Medical Facility',
            residence: 'Residence / Home',
            nursing_home: 'Nursing Home / Care Facility',
            public_place: 'Public Place',
            other: values.death_location_type_other || 'Other',
        };
        const relationshipLabels = {
            child: 'Child', spouse: 'Spouse', relative: 'Relative',
            barangay_official: 'Barangay Official',
            other: values.relationship_other || 'Other',
        };
        const docTypeLabels = {
            burial_permit: 'Burial Permit', hospital_cert: 'Hospital Certificate',
            barangay_cert: 'Barangay Certification', funeral_doc: 'Funeral Service Document',
            other: 'Other',
        };

        return (
            <div>
                <Alert
                    message="Important: This action is irreversible!"
                    description="This action will permanently deactivate the senior's account and terminate all active benefits. Please ensure all information is accurate before submitting."
                    type="error"
                    showIcon
                    icon={<ExclamationCircleOutlined />}
                    style={{ marginBottom: 16 }}
                />

                <Card size="small" title="Death Details" style={{ marginBottom: 12 }}>
                    <Descriptions column={2} size="small">
                        <Descriptions.Item label="Date of Death">
                            {values.date_of_death ? dayjs(values.date_of_death).format('MMM D, YYYY') : '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Time of Death">
                            {values.time_of_death ? dayjs(values.time_of_death).format('h:mm A') : 'Not recorded'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Location" span={2}>
                            {[values.death_barangay, values.death_city, values.death_province, values.death_country]
                                .filter(Boolean).join(', ') || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Location Type">
                            {locationTypeLabels[values.death_location_type] || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Cause of Death">
                            {values.cause_of_death || 'Not specified'}
                        </Descriptions.Item>
                    </Descriptions>
                </Card>

                <Card size="small" title="Certificate & Documents" style={{ marginBottom: 12 }}>
                    <Descriptions column={2} size="small">
                        <Descriptions.Item label="Certificate #">
                            {values.certificate_number || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Registry #">
                            {values.registry_number || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Date Registered">
                            {values.date_registered ? dayjs(values.date_registered).format('MMM D, YYYY') : '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Registered At">
                            {values.registered_at === 'lcro' ? 'Local Civil Registry Office' :
                             values.registered_at === 'psa' ? 'PSA' : '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Death Certificate">
                            {deathCertFile.length > 0 ? `✅ ${deathCertFile[0].name}` : '❌ Not uploaded'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Supporting Doc">
                            {supportingDocFile.length > 0 
                                ? `✅ ${supportingDocFile[0].name} (${docTypeLabels[values.supporting_doc_type] || ''})`
                                : 'None'}
                        </Descriptions.Item>
                    </Descriptions>
                </Card>

                <Card size="small" title="Informant Information" style={{ marginBottom: 12 }}>
                    <Descriptions column={2} size="small">
                        <Descriptions.Item label="Reporter">
                            {values.reporter_full_name || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Relationship">
                            {relationshipLabels[values.relationship_to_deceased] || values.relationship_to_deceased || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Contact">
                            {values.reporter_contact_number || '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Address">
                            {values.reporter_address || '-'}
                        </Descriptions.Item>
                    </Descriptions>
                </Card>

                {(values.burial_date || values.burial_location || values.cemetery_name || values.funeral_service_provider) && (
                    <Card size="small" title="Burial / Funeral Information" style={{ marginBottom: 12 }}>
                        <Descriptions column={2} size="small">
                            <Descriptions.Item label="Burial Date">
                                {values.burial_date ? dayjs(values.burial_date).format('MMM D, YYYY') : '-'}
                            </Descriptions.Item>
                            <Descriptions.Item label="Location">
                                {values.burial_location || '-'}
                            </Descriptions.Item>
                            <Descriptions.Item label="Cemetery">
                                {values.cemetery_name || '-'}
                            </Descriptions.Item>
                            <Descriptions.Item label="Funeral Provider">
                                {values.funeral_service_provider || '-'}
                            </Descriptions.Item>
                        </Descriptions>
                    </Card>
                )}

                <div style={{ marginTop: 16 }}>
                    <Checkbox
                        checked={confirmed}
                        onChange={(e) => setConfirmed(e.target.checked)}
                    >
                        <Text strong>
                            I confirm that all information above is accurate and I understand this action
                            will permanently deactivate this senior's account and terminate all benefits.
                        </Text>
                    </Checkbox>
                </div>
            </div>
        );
    };

    const stepContent = [renderStep0, renderStep1, renderStep2, renderStep3];

    return (
        <Modal
            title={
                <span style={{ color: '#8B0000', fontWeight: 600 }}>
                    <ExclamationCircleOutlined style={{ marginRight: 8 }} />
                    Report Deceased — {senior?.first_name} {senior?.last_name}
                </span>
            }
            open={visible}
            onCancel={handleClose}
            width={800}
            footer={
                <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                    <div>
                        {currentStep > 0 && (
                            <Button onClick={handlePrev}>Previous</Button>
                        )}
                    </div>
                    <div style={{ display: 'flex', gap: 8 }}>
                        <Button onClick={handleClose}>Cancel</Button>
                        {currentStep < 3 ? (
                            <Button type="primary" onClick={handleNext}>
                                Next
                            </Button>
                        ) : (
                            <Button
                                type="primary"
                                danger
                                loading={submitting}
                                disabled={!confirmed}
                                onClick={handleSubmit}
                                icon={<ExclamationCircleOutlined />}
                            >
                                Submit & Archive
                            </Button>
                        )}
                    </div>
                </div>
            }
            destroyOnClose
        >
            <Steps
                current={currentStep}
                size="small"
                style={{ marginBottom: 24 }}
                items={steps.map((s) => ({ title: s.title, icon: s.icon }))}
            />

            <Form
                form={form}
                layout="vertical"
                size="small"
            >
                {stepContent[currentStep]()}
            </Form>
        </Modal>
    );
}

export default ReportDeceasedModal;
