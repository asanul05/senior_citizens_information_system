import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Row, Col, Card, Typography, Form, Input, Select, DatePicker, Button, Steps, Result, message, Divider, Spin } from 'antd';
import {
    UserOutlined,
    HomeOutlined,
    FileTextOutlined,
    CheckCircleOutlined,
    ArrowLeftOutlined,
    ArrowRightOutlined,
    SearchOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import { publicApi } from '../../services/api';

const { Title, Paragraph, Text } = Typography;
const { Option } = Select;

const Apply = () => {
    const [currentStep, setCurrentStep] = useState(0);
    const [formData, setFormData] = useState({});
    const [submitted, setSubmitted] = useState(false);
    const [referenceNumber, setReferenceNumber] = useState('');
    const [loading, setLoading] = useState(false);
    const [barangays, setBarangays] = useState([]);
    const [loadingBarangays, setLoadingBarangays] = useState(true);
    const [form] = Form.useForm();

    // Status check state
    const [checkMode, setCheckMode] = useState(false);
    const [checkRef, setCheckRef] = useState('');
    const [checkLoading, setCheckLoading] = useState(false);
    const [statusData, setStatusData] = useState(null);

    const steps = [
        { title: 'Personal Info', icon: <UserOutlined /> },
        { title: 'Address', icon: <HomeOutlined /> },
        { title: 'Review', icon: <FileTextOutlined /> },
    ];

    useEffect(() => {
        loadBarangays();
    }, []);

    const loadBarangays = async () => {
        try {
            const response = await publicApi.getBarangays();
            setBarangays(response.data.data || []);
        } catch (error) {
            console.error('Failed to load barangays:', error);
            // Fallback to static list
            setBarangays([
                { id: 1, name: 'Arena Blanco' }, { id: 2, name: 'Ayala' }, { id: 3, name: 'Baliwasan' },
                { id: 4, name: 'Calarian' }, { id: 5, name: 'Camino Nuevo' }, { id: 6, name: 'Canelar' },
                { id: 7, name: 'Divisoria' }, { id: 8, name: 'Guiwan' }, { id: 9, name: 'Kasanyangan' },
                { id: 10, name: 'La Paz' }, { id: 11, name: 'Lunzuran' }, { id: 12, name: 'Pasonanca' },
                { id: 13, name: 'Putik' }, { id: 14, name: 'Recodo' }, { id: 15, name: 'Rio Hondo' },
                { id: 16, name: 'San Jose Cawa-Cawa' }, { id: 17, name: 'Santa Barbara' },
                { id: 18, name: 'Santa Maria' }, { id: 19, name: 'Talon-Talon' }, { id: 20, name: 'Tetuan' },
                { id: 21, name: 'Tumaga' }, { id: 22, name: 'Zone I' }, { id: 23, name: 'Zone II' },
                { id: 24, name: 'Zone III' }, { id: 25, name: 'Zone IV' },
            ]);
        } finally {
            setLoadingBarangays(false);
        }
    };

    const handleNext = async () => {
        try {
            const values = await form.validateFields();
            setFormData({ ...formData, ...values });
            if (currentStep < steps.length - 1) {
                setCurrentStep(currentStep + 1);
            }
        } catch (error) {
            message.warning('Please fill in all required fields');
        }
    };

    const handlePrev = () => {
        setCurrentStep(currentStep - 1);
    };

    const handleSubmit = async () => {
        setLoading(true);
        try {
            // Prepare data for API
            const submitData = {
                ...formData,
                barangay_id: formData.barangay_id,
                birthdate: formData.birthdate ? dayjs(formData.birthdate).format('YYYY-MM-DD') : null,
                sex: formData.gender?.toLowerCase() || formData.sex,
                civil_status: formData.civil_status?.toLowerCase(),
                address: formData.street_address || formData.address,
            };

            const response = await publicApi.apply(submitData);
            setReferenceNumber(response.data.reference_number);
            setSubmitted(true);
            message.success('Application submitted successfully!');
        } catch (error) {
            const errorMsg = error.response?.data?.message || 'Failed to submit application. Please try again.';
            if (error.response?.status === 409) {
                // Duplicate application
                setReferenceNumber(error.response.data.reference_number);
                message.warning(`You already have an application: ${error.response.data.reference_number}`);
            } else {
                message.error(errorMsg);
            }
        } finally {
            setLoading(false);
        }
    };

    const handleCheckStatus = async () => {
        if (!checkRef.trim()) {
            message.warning('Please enter your reference number');
            return;
        }
        setCheckLoading(true);
        setStatusData(null);
        try {
            const response = await publicApi.checkStatus(checkRef.trim());
            setStatusData(response.data.data);
        } catch (error) {
            if (error.response?.status === 404) {
                message.error('Application not found. Please check your reference number.');
            } else {
                message.error('Failed to check status');
            }
        } finally {
            setCheckLoading(false);
        }
    };

    // Status check view
    if (checkMode) {
        return (
            <div>
                {/* Hero */}
                <section style={{
                    background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                    color: 'white',
                    padding: '60px 24px 80px',
                    textAlign: 'center',
                }}>
                    <div style={{ maxWidth: 800, margin: '0 auto' }}>
                        <Title level={1} style={{ color: 'white', marginBottom: 16 }}>Check Application Status</Title>
                        <Paragraph style={{ color: 'rgba(255,255,255,0.9)', fontSize: 18 }}>
                            Enter your reference number to check the status of your application.
                        </Paragraph>
                    </div>
                </section>

                <section style={{ padding: '60px 24px', background: '#f9fafb' }}>
                    <div style={{ maxWidth: 600, margin: '0 auto' }}>
                        <Card style={{ borderRadius: 16 }}>
                            <div style={{ display: 'flex', gap: 12, marginBottom: 24 }}>
                                <Input
                                    size="large"
                                    placeholder="Enter reference number (e.g., PRE-20260130-1234)"
                                    value={checkRef}
                                    onChange={(e) => setCheckRef(e.target.value)}
                                    onPressEnter={handleCheckStatus}
                                    style={{ borderRadius: 8 }}
                                />
                                <Button
                                    type="primary"
                                    size="large"
                                    icon={<SearchOutlined />}
                                    onClick={handleCheckStatus}
                                    loading={checkLoading}
                                    style={{ background: '#4338ca', borderRadius: 8 }}
                                >
                                    Check
                                </Button>
                            </div>

                            {statusData && (
                                <Card style={{ background: '#f9fafb', borderRadius: 12 }}>
                                    <Row gutter={[16, 16]}>
                                        <Col span={24}>
                                            <Text type="secondary">Reference Number</Text>
                                            <div><Text strong style={{ fontSize: 18, color: '#4338ca' }}>{statusData.reference_number}</Text></div>
                                        </Col>
                                        <Col span={24}>
                                            <Text type="secondary">Status</Text>
                                            <div>
                                                <span style={{
                                                    display: 'inline-block',
                                                    padding: '4px 12px',
                                                    borderRadius: 20,
                                                    background: statusData.status === 'approved' ? '#d1fae5' :
                                                        statusData.status === 'rejected' ? '#fee2e2' : '#dbeafe',
                                                    color: statusData.status === 'approved' ? '#059669' :
                                                        statusData.status === 'rejected' ? '#dc2626' : '#2563eb',
                                                    fontWeight: 600,
                                                }}>
                                                    {statusData.status_label}
                                                </span>
                                            </div>
                                        </Col>
                                        <Col xs={12}>
                                            <Text type="secondary">Applicant</Text>
                                            <div><Text strong>{statusData.applicant_name}</Text></div>
                                        </Col>
                                        <Col xs={12}>
                                            <Text type="secondary">Barangay</Text>
                                            <div><Text strong>{statusData.barangay || '-'}</Text></div>
                                        </Col>
                                        <Col xs={12}>
                                            <Text type="secondary">Submitted</Text>
                                            <div><Text>{statusData.submitted_at}</Text></div>
                                        </Col>
                                        {statusData.fo_reviewed_at && (
                                            <Col xs={12}>
                                                <Text type="secondary">Branch Reviewed</Text>
                                                <div><Text>{statusData.fo_reviewed_at}</Text></div>
                                            </Col>
                                        )}
                                        {statusData.rejection_reason && (
                                            <Col span={24}>
                                                <Text type="secondary">Rejection Reason</Text>
                                                <div><Text type="danger">{statusData.rejection_reason}</Text></div>
                                            </Col>
                                        )}
                                        {statusData.notes && (
                                            <Col span={24}>
                                                <Text type="secondary">Notes</Text>
                                                <div><Text>{statusData.notes}</Text></div>
                                            </Col>
                                        )}
                                    </Row>
                                </Card>
                            )}

                            <div style={{ marginTop: 24, textAlign: 'center' }}>
                                <Button onClick={() => setCheckMode(false)} style={{ borderRadius: 8 }}>
                                    ← Back to Application Form
                                </Button>
                            </div>
                        </Card>
                    </div>
                </section>
            </div>
        );
    }

    if (submitted) {
        return (
            <div style={{ padding: '80px 24px', minHeight: '80vh', background: '#f9fafb' }}>
                <div style={{ maxWidth: 600, margin: '0 auto' }}>
                    <Card style={{ borderRadius: 16, textAlign: 'center' }}>
                        <Result
                            status="success"
                            icon={<CheckCircleOutlined style={{ color: '#059669' }} />}
                            title="Application Submitted!"
                            subTitle={
                                <div>
                                    <Paragraph>Your pre-registration has been received. Please save your reference number:</Paragraph>
                                    <div style={{
                                        background: '#eef2ff',
                                        padding: '16px 24px',
                                        borderRadius: 12,
                                        margin: '16px 0',
                                    }}>
                                        <Text strong style={{ fontSize: 24, color: '#4338ca', letterSpacing: 2 }}>
                                            {referenceNumber}
                                        </Text>
                                    </div>
                                    <Paragraph type="secondary">
                                        Your application will be reviewed by the Branch/FO Admin. You can track your status using the reference number above.
                                    </Paragraph>
                                </div>
                            }
                            extra={[
                                <Button
                                    key="check"
                                    type="primary"
                                    onClick={() => { setSubmitted(false); setCheckMode(true); setCheckRef(referenceNumber); }}
                                    style={{ background: '#4338ca', borderRadius: 8 }}
                                >
                                    Track Status
                                </Button>,
                                <Link to="/" key="home">
                                    <Button style={{ borderRadius: 8 }}>Back to Home</Button>
                                </Link>,
                            ]}
                        />
                    </Card>
                </div>
            </div>
        );
    }

    return (
        <div>
            {/* Hero */}
            <section style={{
                background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                color: 'white',
                padding: '60px 24px 80px',
                textAlign: 'center',
            }}>
                <div style={{ maxWidth: 800, margin: '0 auto' }}>
                    <Title level={1} style={{ color: 'white', marginBottom: 16 }}>Apply Online</Title>
                    <Paragraph style={{ color: 'rgba(255,255,255,0.9)', fontSize: 18 }}>
                        Pre-register for your Senior Citizen ID online. Complete this form and visit our office with your documents.
                    </Paragraph>
                    <Button
                        ghost
                        size="large"
                        onClick={() => setCheckMode(true)}
                        style={{ marginTop: 16, borderRadius: 8 }}
                    >
                        Already applied? Check your status →
                    </Button>
                </div>
            </section>

            {/* Form */}
            <section style={{ padding: '60px 24px', background: '#f9fafb' }}>
                <div style={{ maxWidth: 700, margin: '0 auto' }}>
                    <Card style={{ borderRadius: 16 }}>
                        <Steps
                            current={currentStep}
                            items={steps.map(s => ({ title: s.title, icon: s.icon }))}
                            style={{ marginBottom: 40 }}
                        />

                        <Form
                            form={form}
                            layout="vertical"
                            initialValues={formData}
                            preserve={false}
                        >
                            {/* Step 1: Personal Info */}
                            {currentStep === 0 && (
                                <div>
                                    <Title level={4} style={{ marginBottom: 24 }}>Personal Information</Title>
                                    <Row gutter={16}>
                                        <Col xs={24} sm={8}>
                                            <Form.Item
                                                name="first_name"
                                                label="First Name"
                                                rules={[{ required: true, message: 'Required' }]}
                                            >
                                                <Input size="large" placeholder="Juan" style={{ borderRadius: 8 }} />
                                            </Form.Item>
                                        </Col>
                                        <Col xs={24} sm={8}>
                                            <Form.Item name="middle_name" label="Middle Name">
                                                <Input size="large" placeholder="Santos" style={{ borderRadius: 8 }} />
                                            </Form.Item>
                                        </Col>
                                        <Col xs={24} sm={8}>
                                            <Form.Item
                                                name="last_name"
                                                label="Last Name"
                                                rules={[{ required: true, message: 'Required' }]}
                                            >
                                                <Input size="large" placeholder="Dela Cruz" style={{ borderRadius: 8 }} />
                                            </Form.Item>
                                        </Col>
                                    </Row>
                                    <Row gutter={16}>
                                        <Col xs={24} sm={12}>
                                            <Form.Item
                                                name="birthdate"
                                                label="Date of Birth"
                                                rules={[{ required: true, message: 'Required' }]}
                                            >
                                                <DatePicker
                                                    size="large"
                                                    style={{ width: '100%', borderRadius: 8 }}
                                                    format="YYYY-MM-DD"
                                                    placeholder="YYYY-MM-DD (e.g. 1960-05-15)"
                                                    showToday={false}
                                                    disabledDate={(current) => current && current > dayjs().subtract(60, 'year')}
                                                    allowClear
                                                />
                                            </Form.Item>
                                        </Col>
                                        <Col xs={24} sm={12}>
                                            <Form.Item
                                                name="gender"
                                                label="Gender"
                                                rules={[{ required: true, message: 'Required' }]}
                                            >
                                                <Select size="large" placeholder="Select" style={{ borderRadius: 8 }}>
                                                    <Option value="Male">Male</Option>
                                                    <Option value="Female">Female</Option>
                                                </Select>
                                            </Form.Item>
                                        </Col>
                                    </Row>
                                    <Row gutter={16}>
                                        <Col xs={24} sm={12}>
                                            <Form.Item
                                                name="civil_status"
                                                label="Civil Status"
                                                rules={[{ required: true, message: 'Required' }]}
                                            >
                                                <Select size="large" placeholder="Select" style={{ borderRadius: 8 }}>
                                                    <Option value="Single">Single</Option>
                                                    <Option value="Married">Married</Option>
                                                    <Option value="Widowed">Widowed</Option>
                                                    <Option value="Separated">Separated</Option>
                                                </Select>
                                            </Form.Item>
                                        </Col>
                                        <Col xs={24} sm={12}>
                                            <Form.Item
                                                name="contact_number"
                                                label="Contact Number"
                                                rules={[{ required: true, message: 'Required' }]}
                                            >
                                                <Input size="large" placeholder="09XX XXX XXXX" style={{ borderRadius: 8 }} />
                                            </Form.Item>
                                        </Col>
                                    </Row>
                                </div>
                            )}

                            {/* Step 2: Address */}
                            {currentStep === 1 && (
                                <div>
                                    <Title level={4} style={{ marginBottom: 24 }}>Address Information</Title>
                                    <Form.Item
                                        name="barangay_id"
                                        label="Barangay"
                                        rules={[{ required: true, message: 'Required' }]}
                                    >
                                        {loadingBarangays ? (
                                            <div style={{ textAlign: 'center', padding: 20 }}><Spin /></div>
                                        ) : (
                                            <Select
                                                size="large"
                                                placeholder="Select barangay"
                                                showSearch
                                                optionFilterProp="children"
                                                style={{ borderRadius: 8 }}
                                            >
                                                {barangays.map(b => (
                                                    <Option key={b.id} value={b.id}>{b.name}</Option>
                                                ))}
                                            </Select>
                                        )}
                                    </Form.Item>
                                    <Form.Item
                                        name="street_address"
                                        label="Street/Purok/House No."
                                        rules={[{ required: true, message: 'Required' }]}
                                    >
                                        <Input size="large" placeholder="e.g., Purok 3, Blk 5 Lot 10" style={{ borderRadius: 8 }} />
                                    </Form.Item>
                                    <Row gutter={16}>
                                        <Col xs={24} sm={12}>
                                            <Form.Item name="emergency_contact_name" label="Emergency Contact Name">
                                                <Input size="large" placeholder="Contact person name" style={{ borderRadius: 8 }} />
                                            </Form.Item>
                                        </Col>
                                        <Col xs={24} sm={12}>
                                            <Form.Item name="emergency_contact_number" label="Emergency Contact Number">
                                                <Input size="large" placeholder="09XX XXX XXXX" style={{ borderRadius: 8 }} />
                                            </Form.Item>
                                        </Col>
                                    </Row>
                                </div>
                            )}

                            {/* Step 3: Review */}
                            {currentStep === 2 && (
                                <div>
                                    <Title level={4} style={{ marginBottom: 24 }}>Review Your Information</Title>
                                    <Card style={{ background: '#f9fafb', borderRadius: 12, marginBottom: 24 }}>
                                        <Row gutter={[16, 16]}>
                                            <Col span={24}>
                                                <Text type="secondary">Full Name</Text>
                                                <div><Text strong>{`${formData.first_name || ''} ${formData.middle_name || ''} ${formData.last_name || ''}`}</Text></div>
                                            </Col>
                                            <Col xs={12}>
                                                <Text type="secondary">Birthdate</Text>
                                                <div><Text strong>{formData.birthdate ? dayjs(formData.birthdate).format('MMMM D, YYYY') : '-'}</Text></div>
                                            </Col>
                                            <Col xs={12}>
                                                <Text type="secondary">Gender</Text>
                                                <div><Text strong>{formData.gender || '-'}</Text></div>
                                            </Col>
                                            <Col xs={12}>
                                                <Text type="secondary">Civil Status</Text>
                                                <div><Text strong>{formData.civil_status || '-'}</Text></div>
                                            </Col>
                                            <Col xs={12}>
                                                <Text type="secondary">Contact</Text>
                                                <div><Text strong>{formData.contact_number || '-'}</Text></div>
                                            </Col>
                                            <Divider style={{ margin: '12px 0' }} />
                                            <Col span={24}>
                                                <Text type="secondary">Address</Text>
                                                <div><Text strong>{`${formData.street_address || ''}, ${barangays.find(b => b.id === formData.barangay_id)?.name || ''}, Zamboanga City`}</Text></div>
                                            </Col>
                                        </Row>
                                    </Card>
                                    <Card style={{ background: '#fef3c7', border: '1px solid #fcd34d', borderRadius: 12 }}>
                                        <Text>
                                            <strong>Important:</strong> After submitting, please visit the OSCA office with the following:
                                            <ul style={{ marginTop: 8, paddingLeft: 20 }}>
                                                <li>Birth Certificate (PSA/NSO)</li>
                                                <li>Barangay Certificate</li>
                                                <li>Valid Government ID</li>
                                                <li>1x1 or 2x2 Photo</li>
                                            </ul>
                                        </Text>
                                    </Card>
                                </div>
                            )}

                            {/* Navigation */}
                            <div style={{ marginTop: 32, display: 'flex', justifyContent: 'space-between' }}>
                                {currentStep > 0 ? (
                                    <Button size="large" onClick={handlePrev} style={{ borderRadius: 8 }}>
                                        <ArrowLeftOutlined /> Previous
                                    </Button>
                                ) : <div />}
                                {currentStep < steps.length - 1 ? (
                                    <Button type="primary" size="large" onClick={handleNext} style={{ background: '#4338ca', borderRadius: 8 }}>
                                        Next <ArrowRightOutlined />
                                    </Button>
                                ) : (
                                    <Button
                                        type="primary"
                                        size="large"
                                        onClick={handleSubmit}
                                        loading={loading}
                                        style={{ background: '#059669', borderRadius: 8 }}
                                    >
                                        Submit Application
                                    </Button>
                                )}
                            </div>
                        </Form>
                    </Card>
                </div>
            </section>
        </div>
    );
};

export default Apply;
