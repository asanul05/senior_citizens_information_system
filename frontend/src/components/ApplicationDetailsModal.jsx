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
    Divider,
    Spin,
    Image,
    Table,
    Progress,
    Alert,
    Badge,
    Empty,
} from 'antd';
import {
    CheckCircleOutlined,
    CloseCircleOutlined,
    ExclamationCircleOutlined,
    UserOutlined,
    TeamOutlined,
    BankOutlined,
    FileOutlined,
    ClockCircleOutlined,
    FileImageOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { applicationsApi } from '../services/api';

const { Title, Text } = Typography;
const { TabPane } = Tabs;

// Status indicator component
const FieldStatus = ({ value, label, optional = false }) => {
    const hasValue = value !== undefined && value !== null && value !== '';

    // For optional fields that are empty, show "Not provided" without the red X
    if (optional && !hasValue) {
        return <Text type="secondary">{label} - Not provided</Text>;
    }

    return (
        <Space size="small">
            {hasValue ? (
                <CheckCircleOutlined style={{ color: '#52c41a' }} />
            ) : (
                <CloseCircleOutlined style={{ color: '#ff4d4f' }} />
            )}
            <Text type={hasValue ? 'default' : 'secondary'}>
                {hasValue ? value : `${label} - Missing`}
            </Text>
        </Space>
    );
};

// Document status component
const DocumentStatus = ({ document, onPreview }) => {
    if (!document) {
        return (
            <Tag color="error" icon={<CloseCircleOutlined />}>
                Missing
            </Tag>
        );
    }
    return (
        <Space>
            <Tag color="success" icon={<CheckCircleOutlined />}>
                Uploaded
            </Tag>
            {document.file_path && (
                <a onClick={() => onPreview(document.file_path)}>
                    <FileImageOutlined /> View
                </a>
            )}
        </Space>
    );
};

function ApplicationDetailsModal({ visible, applicationId, onClose }) {
    const [loading, setLoading] = useState(false);
    const [application, setApplication] = useState(null);
    const [previewImage, setPreviewImage] = useState(null);

    useEffect(() => {
        if (visible && applicationId) {
            fetchApplication();
        }
    }, [visible, applicationId]);

    const fetchApplication = async () => {
        setLoading(true);
        try {
            const response = await applicationsApi.getById(applicationId);
            setApplication(response.data.data);
        } catch (error) {
            console.error('Failed to fetch application:', error);
        } finally {
            setLoading(false);
        }
    };

    const handlePreview = (imagePath) => {
        const baseUrl = import.meta.env.VITE_API_URL?.replace('/api', '') || '';
        setPreviewImage(`${baseUrl}/storage/${imagePath}`);
    };

    const getStatusTag = (status) => {
        const statusColors = {
            'Draft': 'default',
            'Pending': 'processing',
            'For Verification': 'orange',
            'Verified': 'blue',
            'Approved': 'success',
            'Rejected': 'error',
            'Printed': 'purple',
            'Claimed': 'green',
        };
        return <Tag color={statusColors[status] || 'default'}>{status}</Tag>;
    };

    const calculateProgress = (data, docs = []) => {
        if (!data) return { percent: 0, filled: 0, total: 0 };

        const requiredFields = {
            personal: ['first_name', 'last_name', 'birthdate', 'gender_id', 'civil_status_id', 'barangay_id'],
            contact: ['mobile_number'],
            address: ['house_number', 'street'],
        };

        let filled = 0;
        let total = 0;

        // Check personal info
        const personal = data.personal_info || {};
        requiredFields.personal.forEach(field => {
            total++;
            if (personal[field]) filled++;
        });

        // Check contact
        const contact = data.contact_info || {};
        requiredFields.contact.forEach(field => {
            total++;
            if (contact[field]) filled++;
        });

        // Check address
        const address = data.address || {};
        requiredFields.address.forEach(field => {
            total++;
            if (address[field]) filled++;
        });

        // Check documents (assuming 3 required)
        total += 3;
        filled += Math.min(docs.length, 3);

        return {
            percent: Math.round((filled / total) * 100),
            filled,
            total
        };
    };

    if (!application && !loading) {
        return null;
    }

    const applicantData = application?.applicant_data || {};
    const personalInfo = applicantData.personal_info || {};
    const contactInfo = applicantData.contact_info || {};
    const addressData = applicantData.address || {};
    const familyMembers = applicantData.family_members || [];
    const associations = applicantData.associations || [];
    // Documents come from the relationship, not applicant_data
    const documents = application?.documents || [];
    const progress = calculateProgress(applicantData, documents);

    const renderPersonalInfoTab = () => (
        <div>
            <Card size="small" title="Basic Information" style={{ marginBottom: 16 }}>
                <Descriptions column={3} size="small" bordered>
                    <Descriptions.Item label="First Name">
                        <FieldStatus value={personalInfo.first_name} label="First Name" />
                    </Descriptions.Item>
                    <Descriptions.Item label="Middle Name">
                        <FieldStatus value={personalInfo.middle_name} label="Middle Name" optional />
                    </Descriptions.Item>
                    <Descriptions.Item label="Last Name">
                        <FieldStatus value={personalInfo.last_name} label="Last Name" />
                    </Descriptions.Item>
                    <Descriptions.Item label="Extension">
                        <FieldStatus value={personalInfo.extension} label="Extension" optional />
                    </Descriptions.Item>
                    <Descriptions.Item label="Birthdate">
                        <FieldStatus
                            value={personalInfo.birthdate ? dayjs(personalInfo.birthdate).format('MMMM D, YYYY') : null}
                            label="Birthdate"
                        />
                    </Descriptions.Item>
                    <Descriptions.Item label="Age">
                        {personalInfo.birthdate ?
                            `${dayjs().diff(personalInfo.birthdate, 'year')} years old` :
                            <Text type="secondary">-</Text>
                        }
                    </Descriptions.Item>
                    <Descriptions.Item label="Gender">
                        <FieldStatus value={personalInfo.gender_name || (personalInfo.gender_id === 1 ? 'Male' : personalInfo.gender_id === 2 ? 'Female' : null)} label="Gender" />
                    </Descriptions.Item>
                    <Descriptions.Item label="Civil Status">
                        <FieldStatus value={personalInfo.civil_status_name} label="Civil Status" optional />
                    </Descriptions.Item>
                </Descriptions>
            </Card>

            <Card size="small" title="Address" style={{ marginBottom: 16 }}>
                <Descriptions column={3} size="small" bordered>
                    <Descriptions.Item label="House No.">
                        <FieldStatus value={addressData.house_number} label="House No." />
                    </Descriptions.Item>
                    <Descriptions.Item label="Street">
                        <FieldStatus value={addressData.street} label="Street" />
                    </Descriptions.Item>
                    <Descriptions.Item label="Barangay">
                        <FieldStatus value={personalInfo.barangay_name || applicantData.barangay_name} label="Barangay" />
                    </Descriptions.Item>
                </Descriptions>
            </Card>

            <Card size="small" title="Contact Information">
                <Descriptions column={2} size="small" bordered>
                    <Descriptions.Item label="Mobile Number">
                        <FieldStatus value={contactInfo.mobile_number} label="Mobile Number" optional />
                    </Descriptions.Item>
                    <Descriptions.Item label="Telephone">
                        <FieldStatus value={contactInfo.telephone} label="Telephone" optional />
                    </Descriptions.Item>
                    <Descriptions.Item label="Email" span={2}>
                        <FieldStatus value={contactInfo.email} label="Email" optional />
                    </Descriptions.Item>
                </Descriptions>
            </Card>
        </div>
    );

    const renderFamilyTab = () => (
        <div>
            {familyMembers.length > 0 ? (
                <Table
                    dataSource={familyMembers}
                    rowKey={(record, index) => index}
                    size="small"
                    pagination={false}
                    columns={[
                        { title: 'Name', dataIndex: 'name', key: 'name' },
                        { title: 'Relationship', dataIndex: 'relationship', key: 'relationship' },
                        { title: 'Age', dataIndex: 'age', key: 'age', width: 80 },
                        { title: 'Occupation', dataIndex: 'occupation', key: 'occupation' },
                    ]}
                />
            ) : (
                <Empty description="No family members listed" />
            )}
        </div>
    );

    const renderAssociationTab = () => (
        <div>
            <Card size="small" title="Membership & Associations">
                {associations.length > 0 ? (
                    <Space wrap>
                        {associations.map((assoc, index) => (
                            <Tag key={index} color="blue">{assoc.name || assoc}</Tag>
                        ))}
                    </Space>
                ) : personalInfo.sectors && personalInfo.sectors.length > 0 ? (
                    <Space wrap>
                        {personalInfo.sectors.map((sector, index) => (
                            <Tag key={index} color="blue">{sector}</Tag>
                        ))}
                    </Space>
                ) : (
                    <Text type="secondary">No associations listed</Text>
                )}
            </Card>

            {personalInfo.pension_source && (
                <Card size="small" title="Pension Information" style={{ marginTop: 16 }}>
                    <Descriptions size="small" bordered>
                        <Descriptions.Item label="Pension Source">
                            {personalInfo.pension_source}
                        </Descriptions.Item>
                        <Descriptions.Item label="Monthly Pension">
                            {personalInfo.pension_amount ? `₱${Number(personalInfo.pension_amount).toLocaleString()}` : 'N/A'}
                        </Descriptions.Item>
                    </Descriptions>
                </Card>
            )}
        </div>
    );

    const renderDocumentsTab = () => {
        const requiredDocs = [
            { id: 1, name: 'Proof of Age (Birth Certificate / Valid ID)', key: 'birth_certificate' },
            { id: 2, name: 'Barangay Certification / Residency', key: 'barangay_certificate' },
            { id: 3, name: "COMELEC ID / Certification (Optional)", key: 'comelec', optional: true },
            { id: 4, name: 'Senior Citizen Photo (2x2)', key: 'photo' },
        ];

        const getDocByType = (typeId) => {
            // Check multiple possible field names for document type
            return documents.find(d =>
                d.document_type_id === typeId ||
                d.type_id === typeId ||
                d.type === typeId ||
                d.documentTypeId === typeId
            );
        };

        return (
            <div>
                <Table
                    dataSource={requiredDocs}
                    rowKey="id"
                    size="small"
                    pagination={false}
                    columns={[
                        {
                            title: 'Document',
                            dataIndex: 'name',
                            key: 'name',
                            render: (name) => <Text strong>{name}</Text>
                        },
                        {
                            title: 'Status',
                            key: 'status',
                            render: (_, record) => {
                                const doc = getDocByType(record.id);
                                return <DocumentStatus document={doc} onPreview={handlePreview} />;
                            }
                        },
                    ]}
                />

                {/* Additional uploaded documents */}
                {documents.length > 0 && (
                    <Card size="small" title="All Uploaded Documents" style={{ marginTop: 16 }}>
                        <Space wrap>
                            {documents.map((doc, index) => (
                                <Card
                                    key={index}
                                    size="small"
                                    style={{ width: 120, textAlign: 'center' }}
                                    hoverable
                                    onClick={() => doc.file_path && handlePreview(doc.file_path)}
                                >
                                    <FileImageOutlined style={{ fontSize: 32, color: '#1890ff' }} />
                                    <div style={{ marginTop: 8, fontSize: 12 }}>
                                        {doc.document_type_name || `Doc ${index + 1}`}
                                    </div>
                                </Card>
                            ))}
                        </Space>
                    </Card>
                )}
            </div>
        );
    };

    const renderWorkflowStatus = () => (
        <Card size="small" title="Application Workflow" style={{ marginBottom: 16 }}>
            <Descriptions column={2} size="small" bordered>
                <Descriptions.Item label="Application Number">
                    <Text strong>{application?.application_number || '-'}</Text>
                </Descriptions.Item>
                <Descriptions.Item label="Status">
                    {getStatusTag(application?.status)}
                </Descriptions.Item>
                <Descriptions.Item label="Submitted By">
                    {application?.submitter?.first_name
                        ? `${application.submitter.first_name} ${application.submitter.last_name}`
                        : '-'}
                </Descriptions.Item>
                <Descriptions.Item label="Submission Date">
                    {application?.submission_date
                        ? dayjs(application.submission_date).format('MMM D, YYYY h:mm A')
                        : '-'}
                </Descriptions.Item>
                {application?.verified_by && (
                    <>
                        <Descriptions.Item label="Verified By">
                            {application?.verifier?.first_name
                                ? `${application.verifier.first_name} ${application.verifier.last_name}`
                                : '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Verification Date">
                            {application?.verification_date
                                ? dayjs(application.verification_date).format('MMM D, YYYY h:mm A')
                                : '-'}
                        </Descriptions.Item>
                    </>
                )}
                {application?.approved_by && (
                    <>
                        <Descriptions.Item label="Approved By">
                            {application?.approver?.first_name
                                ? `${application.approver.first_name} ${application.approver.last_name}`
                                : '-'}
                        </Descriptions.Item>
                        <Descriptions.Item label="Approval Date">
                            {application?.approval_date
                                ? dayjs(application.approval_date).format('MMM D, YYYY h:mm A')
                                : '-'}
                        </Descriptions.Item>
                    </>
                )}
            </Descriptions>
        </Card>
    );

    return (
        <>
            <Modal
                title={
                    <Space>
                        <FileOutlined />
                        <span>Application Details</span>
                        {application && getStatusTag(application.status)}
                    </Space>
                }
                open={visible}
                onCancel={onClose}
                width={900}
                footer={null}
            >
                <Spin spinning={loading}>
                    {application && (
                        <>
                            {/* Progress Overview */}
                            <Card size="small" style={{ marginBottom: 16 }}>
                                <Row gutter={24} align="middle">
                                    <Col span={8}>
                                        <Progress
                                            type="circle"
                                            percent={progress.percent}
                                            size={80}
                                            format={() => `${progress.filled}/${progress.total}`}
                                        />
                                    </Col>
                                    <Col span={16}>
                                        <Title level={5} style={{ margin: 0 }}>
                                            {applicantData.personal_info?.first_name} {applicantData.personal_info?.middle_name} {applicantData.personal_info?.last_name}
                                        </Title>
                                        <Text type="secondary">
                                            Application #{application.application_number}
                                        </Text>
                                        {application.status === 'For Verification' && (
                                            <Alert
                                                type="warning"
                                                message="This application is pending verification. Please review all details."
                                                style={{ marginTop: 8 }}
                                                showIcon
                                            />
                                        )}
                                    </Col>
                                </Row>
                            </Card>

                            {/* Workflow Status */}
                            {renderWorkflowStatus()}

                            {/* Tabbed Details */}
                            <Tabs defaultActiveKey="personal" size="small">
                                <TabPane
                                    tab={<span><UserOutlined /> Personal Info</span>}
                                    key="personal"
                                >
                                    {renderPersonalInfoTab()}
                                </TabPane>
                                <TabPane
                                    tab={<span><TeamOutlined /> Family</span>}
                                    key="family"
                                >
                                    {renderFamilyTab()}
                                </TabPane>
                                <TabPane
                                    tab={<span><BankOutlined /> Association</span>}
                                    key="association"
                                >
                                    {renderAssociationTab()}
                                </TabPane>
                                <TabPane
                                    tab={
                                        <Badge count={documents.length} size="small" offset={[10, 0]}>
                                            <span><FileOutlined /> Documents</span>
                                        </Badge>
                                    }
                                    key="documents"
                                >
                                    {renderDocumentsTab()}
                                </TabPane>
                            </Tabs>
                        </>
                    )}
                </Spin>
            </Modal>

            {/* Image Preview Modal */}
            <Image
                style={{ display: 'none' }}
                preview={{
                    visible: !!previewImage,
                    src: previewImage,
                    onVisibleChange: (visible) => {
                        if (!visible) setPreviewImage(null);
                    },
                }}
            />
        </>
    );
}

export default ApplicationDetailsModal;
