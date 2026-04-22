import { useState, useEffect, useRef, useCallback } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Form, Input, Button, Typography, message, Divider, Radio } from 'antd';
import {
    UserOutlined,
    MobileOutlined,
    MailOutlined,
    LockOutlined,
    CheckCircleOutlined,
    SafetyCertificateOutlined,
    ReloadOutlined,
    ArrowLeftOutlined,
} from '@ant-design/icons';
import axios from 'axios';
import './SeniorLogin.css';

const { Title, Text } = Typography;

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:8000/api';
const TURNSTILE_SITE_KEY = import.meta.env.VITE_TURNSTILE_SITE_KEY || '';

const PortalSectionHeader = ({ title, subtitle }) => (
    <header className="senior-login-section-header">
        <Text className="senior-login-kicker">Senior Citizen Portal</Text>
        <Title level={2} className="senior-login-title">{title}</Title>
        <Text className="senior-login-subtitle">{subtitle}</Text>
    </header>
);

const PortalBrandPanel = () => (
    <aside className="senior-login-brand-panel">
        <div className="senior-login-brand-orb senior-login-brand-orb-one" />
        <div className="senior-login-brand-orb senior-login-brand-orb-two" />
        <div className="senior-login-brand-orb senior-login-brand-orb-three" />

        <div className="senior-login-brand-logo-wrap">
            <img
                src="/images/osca_logo.jpg"
                alt="City of Zamboanga Official Seal"
                className="senior-login-brand-logo"
            />
        </div>

        <div className="senior-login-brand-copy">
            <Title level={2} className="senior-login-brand-title">Senior Citizen Portal</Title>
            <div className="senior-login-brand-divider" />
            <Text className="senior-login-brand-subtitle">
                Access your profile, benefits, and services online.
            </Text>
        </div>

        <div className="senior-login-brand-badge">
            <SafetyCertificateOutlined />
            <Text>Office of Senior Citizens Affairs</Text>
        </div>
    </aside>
);

const LoginActions = ({ loading, onForgot, onSignup }) => (
    <>
        <Form.Item className="senior-login-submit-item">
            <Button
                type="primary"
                htmlType="submit"
                size="large"
                block
                loading={loading}
                className="senior-login-primary-btn"
            >
                Log In
            </Button>
        </Form.Item>

        <div className="senior-login-center-row">
            <Button type="link" onClick={onForgot} className="senior-login-link-btn">
                Forgot PIN?
            </Button>
        </div>

        <Divider className="senior-login-divider">
            <Text className="senior-login-divider-text">or</Text>
        </Divider>

        <Button size="large" block onClick={onSignup} className="senior-login-outline-btn">
            Sign Up
        </Button>
    </>
);

const OtpChannelHelp = ({ otpChannel }) => (
    <div className="senior-login-channel-help">
        <Text>
            {otpChannel === 'phone' ? (
                <>
                    <MobileOutlined /> OTP will be sent to the phone number registered with your OSCA account.
                </>
            ) : (
                <>
                    <MailOutlined /> OTP will be sent to the email address registered with your OSCA account.
                </>
            )}
        </Text>
    </div>
);

const OtpBanner = ({ otpMessage }) => {
    if (!otpMessage) return null;

    return (
        <div className="senior-login-otp-banner">
            <CheckCircleOutlined />
            <Text>{otpMessage}</Text>
        </div>
    );
};

/* ────────────────────────────────────────────────────────────────
   Turnstile CAPTCHA component (Cloudflare)
   ──────────────────────────────────────────────────────────────── */
const TurnstileWidget = ({ onVerify, onExpire, resetKey }) => {
    const containerRef = useRef(null);
    const widgetIdRef = useRef(null);

    useEffect(() => {
        if (!TURNSTILE_SITE_KEY || !window.turnstile) return;

        // Clean up previous widget
        if (widgetIdRef.current !== null) {
            try {
                window.turnstile.remove(widgetIdRef.current);
            } catch {
                // Ignore widget cleanup failures from stale Turnstile instances.
            }
            widgetIdRef.current = null;
        }

        widgetIdRef.current = window.turnstile.render(containerRef.current, {
            sitekey: TURNSTILE_SITE_KEY,
            callback: (token) => onVerify?.(token),
            'expired-callback': () => onExpire?.(),
            theme: 'light',
            size: 'normal',
        });

        return () => {
            if (widgetIdRef.current !== null) {
                try {
                    window.turnstile.remove(widgetIdRef.current);
                } catch {
                    // Ignore widget cleanup failures from stale Turnstile instances.
                }
                widgetIdRef.current = null;
            }
        };
    }, [onExpire, onVerify, resetKey]);

    if (!TURNSTILE_SITE_KEY) return null;
    return <div ref={containerRef} style={{ marginBottom: 16 }} />;
};

/* ────────────────────────────────────────────────────────────────
   Main Component
   ──────────────────────────────────────────────────────────────── */
const SeniorLogin = () => {
    // Views: 'login' | 'signup' | 'forgot' | 'otp'
    const [view, setView] = useState('login');
    const [loading, setLoading] = useState(false);
    const [seniorId, setSeniorId] = useState(null);

    // OTP state
    const [otpChannel, setOtpChannel] = useState('phone'); // 'phone' | 'email'
    const [otpMessage, setOtpMessage] = useState('');
    const [resendCooldown, setResendCooldown] = useState(0);
    const [lastOtpValues, setLastOtpValues] = useState(null);
    const cooldownRef = useRef(null);

    // Turnstile
    const [turnstileToken, setTurnstileToken] = useState(null);
    const [turnstileResetKey, setTurnstileResetKey] = useState(0);
    const handleTurnstileVerify = useCallback((token) => {
        setTurnstileToken(token);
    }, []);
    const handleTurnstileExpire = useCallback(() => {
        setTurnstileToken(null);
    }, []);

    const [form] = Form.useForm();
    const navigate = useNavigate();

    // Track whether the current OTP flow is for 'signup' or 'forgot'
    const [otpPurpose, setOtpPurpose] = useState('signup');

    // Cooldown timer
    useEffect(() => {
        if (resendCooldown > 0) {
            cooldownRef.current = setTimeout(() => {
                setResendCooldown(prev => prev - 1);
            }, 1000);
            return () => clearTimeout(cooldownRef.current);
        }
    }, [resendCooldown]);

    /* ─── Login with PIN ─── */
    const handleLogin = async (values) => {
        setLoading(true);
        try {
            const response = await axios.post(`${API_URL}/senior/login`, {
                osca_id: values.osca_id,
                pin: values.pin,
            });
            localStorage.setItem('senior_token', response.data.token);
            localStorage.setItem('senior', JSON.stringify(response.data.senior));
            message.success('Login successful!');
            navigate('/senior/dashboard');
        } catch (error) {
            const msg = error.response?.data?.message || 'Login failed';
            if (error.response?.data?.requires_otp) {
                message.info('Please sign up first to set up your account');
                switchView('signup');
            } else {
                message.error(msg);
            }
        } finally {
            setLoading(false);
        }
    };

    /* ─── Request OTP (used by both Sign Up and Forgot PIN) ─── */
    const handleRequestOtp = async (values) => {
        if (TURNSTILE_SITE_KEY && !turnstileToken) {
            message.warning('Please complete the verification check');
            return;
        }
        setLoading(true);
        try {
            const payload = {
                osca_id: values.osca_id,
                otp_channel: otpChannel,
                turnstile_token: turnstileToken,
            };

            const response = await axios.post(`${API_URL}/senior/request-otp`, payload);
            setSeniorId(response.data.senior_id);
            setOtpMessage(response.data.message || 'OTP sent');
            setLastOtpValues(values);
            setResendCooldown(60);
            setView('otp');
            message.success(response.data.message || 'OTP sent successfully');
        } catch (error) {
            const msg = error.response?.data?.message || 'Failed to send OTP';
            if (error.response?.status === 429) {
                message.warning(msg);
            } else {
                message.error(msg);
            }
        } finally {
            setLoading(false);
            setTurnstileToken(null);
            setTurnstileResetKey(k => k + 1);
        }
    };

    /* ─── Resend OTP ─── */
    const handleResendOtp = async () => {
        if (!lastOtpValues || resendCooldown > 0) return;
        // Bypass captcha for resend since it was already verified
        setLoading(true);
        try {
            const payload = {
                osca_id: lastOtpValues.osca_id,
                otp_channel: otpChannel,
                skip_turnstile: true,
            };
            const response = await axios.post(`${API_URL}/senior/request-otp`, payload);
            setSeniorId(response.data.senior_id);
            setResendCooldown(60);
            message.success('OTP resent');
        } catch (error) {
            message.error(error.response?.data?.message || 'Failed to resend OTP');
        } finally {
            setLoading(false);
        }
    };

    /* ─── Verify OTP + Set PIN ─── */
    const handleVerifyOtp = async (values) => {
        setLoading(true);
        try {
            const response = await axios.post(`${API_URL}/senior/verify-otp`, {
                senior_id: seniorId,
                otp: values.otp,
                pin: values.pin,
            });
            localStorage.setItem('senior_token', response.data.token);
            localStorage.setItem('senior', JSON.stringify(response.data.senior));
            message.success(otpPurpose === 'forgot' ? 'PIN reset successful!' : 'Account created! Welcome!');
            navigate('/senior/dashboard');
        } catch (error) {
            const msg = error.response?.data?.message || 'Verification failed';
            message.error(msg);
        } finally {
            setLoading(false);
        }
    };

    /* ─── View switcher ─── */
    const switchView = useCallback((newView) => {
        form.resetFields();
        setTurnstileToken(null);
        setTurnstileResetKey(k => k + 1);
        setView(newView);
        if (newView === 'signup') setOtpPurpose('signup');
        if (newView === 'forgot') setOtpPurpose('forgot');
    }, [form]);

    return (
        <div className="senior-login-page">
            <PortalBrandPanel />

            <main className="senior-login-panel">
                <div className="senior-login-card fade-in">

                    {/* LOGIN VIEW */}
                    {view === 'login' && (
                        <>
                            <PortalSectionHeader
                                title="Welcome Back"
                                subtitle="Sign in to access your dashboard"
                            />

                            <Form
                                form={form}
                                layout="vertical"
                                onFinish={handleLogin}
                                requiredMark={false}
                                className="senior-login-form"
                            >
                                <Form.Item
                                    name="osca_id"
                                    label="OSCA ID Number"
                                    rules={[{ required: true, message: 'Enter your OSCA ID' }]}
                                >
                                    <Input
                                        prefix={<UserOutlined className="senior-login-input-icon" />}
                                        size="large"
                                        placeholder="e.g., 2024-12345"
                                        className="senior-login-input"
                                    />
                                </Form.Item>
                                <Form.Item
                                    name="pin"
                                    label="6-Digit PIN"
                                    rules={[{ required: true, len: 6, message: 'Enter your 6-digit PIN' }]}
                                >
                                    <Input.Password
                                        prefix={<LockOutlined className="senior-login-input-icon" />}
                                        size="large"
                                        maxLength={6}
                                        placeholder="••••••"
                                        className="senior-login-input senior-login-pin-input"
                                    />
                                </Form.Item>

                                <LoginActions
                                    loading={loading}
                                    onForgot={() => switchView('forgot')}
                                    onSignup={() => switchView('signup')}
                                />
                            </Form>
                        </>
                    )}

                    {/* SIGN UP VIEW / FORGOT PIN VIEW */}
                    {(view === 'signup' || view === 'forgot') && (
                        <>
                            <PortalSectionHeader
                                title={view === 'forgot' ? 'Reset PIN' : 'Create Account'}
                                subtitle={view === 'forgot'
                                    ? 'Verify your identity to reset your PIN'
                                    : 'Verify your identity to set up your account'}
                            />

                            <Form
                                form={form}
                                layout="vertical"
                                onFinish={handleRequestOtp}
                                requiredMark={false}
                                className="senior-login-form"
                            >
                                <Form.Item
                                    name="osca_id"
                                    label="OSCA ID Number"
                                    rules={[{ required: true, message: 'Enter your OSCA ID' }]}
                                >
                                    <Input
                                        prefix={<UserOutlined className="senior-login-input-icon" />}
                                        size="large"
                                        placeholder="e.g., 2024-12345"
                                        className="senior-login-input"
                                    />
                                </Form.Item>

                                {/* OTP Channel Selection */}
                                <Form.Item label="Send OTP via">
                                    <Radio.Group
                                        value={otpChannel}
                                        onChange={(e) => setOtpChannel(e.target.value)}
                                        className="senior-login-otp-channel"
                                    >
                                        <Radio.Button value="phone">
                                            <MobileOutlined /> Phone
                                        </Radio.Button>
                                        <Radio.Button value="email">
                                            <MailOutlined /> Email
                                        </Radio.Button>
                                    </Radio.Group>
                                </Form.Item>

                                <OtpChannelHelp otpChannel={otpChannel} />

                                {/* Turnstile CAPTCHA */}
                                <TurnstileWidget
                                    onVerify={handleTurnstileVerify}
                                    onExpire={handleTurnstileExpire}
                                    resetKey={turnstileResetKey}
                                />

                                <Form.Item className="senior-login-submit-item">
                                    <Button
                                        type="primary"
                                        htmlType="submit"
                                        size="large"
                                        block
                                        loading={loading}
                                        disabled={TURNSTILE_SITE_KEY && !turnstileToken}
                                        className="senior-login-primary-btn"
                                    >
                                        {view === 'forgot' ? 'Send Reset Code' : 'Sign Up'}
                                    </Button>
                                </Form.Item>
                            </Form>

                            {/* Switch link */}
                            <div className="senior-login-center-row">
                                <Text className="senior-login-hint-text">
                                    {view === 'forgot' ? 'Remember your PIN? ' : 'Already have a PIN? '}
                                </Text>
                                <Button
                                    type="link"
                                    onClick={() => switchView('login')}
                                    className="senior-login-link-btn"
                                >
                                    Log in
                                </Button>
                            </div>
                        </>
                    )}

                    {/* OTP VERIFICATION VIEW */}
                    {view === 'otp' && (
                        <>
                            <PortalSectionHeader
                                title="Verify OTP"
                                subtitle={`Enter the code sent to your ${otpChannel === 'email' ? 'email' : 'phone'}`}
                            />

                            <OtpBanner otpMessage={otpMessage} />

                            <Form
                                form={form}
                                layout="vertical"
                                onFinish={handleVerifyOtp}
                                requiredMark={false}
                                className="senior-login-form"
                            >
                                <Form.Item
                                    name="otp"
                                    label="Enter OTP"
                                    rules={[{ required: true, len: 6, message: 'Enter 6-digit OTP' }]}
                                >
                                    <Input
                                        size="large"
                                        maxLength={6}
                                        placeholder="000000"
                                        className="senior-login-input senior-login-pin-input senior-login-otp-input"
                                    />
                                </Form.Item>
                                <Form.Item
                                    name="pin"
                                    label={otpPurpose === 'forgot' ? 'Set New 6-Digit PIN' : 'Set Your 6-Digit PIN'}
                                    extra="This PIN will be used for future logins"
                                    rules={[{ required: true, len: 6, message: 'Set a 6-digit PIN' }]}
                                >
                                    <Input.Password
                                        size="large"
                                        maxLength={6}
                                        placeholder="••••••"
                                        className="senior-login-input senior-login-pin-input"
                                    />
                                </Form.Item>
                                <Form.Item
                                    name="confirm_pin"
                                    label="Confirm PIN"
                                    dependencies={['pin']}
                                    rules={[
                                        { required: true, len: 6, message: 'Please confirm your PIN' },
                                        ({ getFieldValue }) => ({
                                            validator(_, value) {
                                                if (!value || getFieldValue('pin') === value) {
                                                    return Promise.resolve();
                                                }
                                                return Promise.reject(new Error('PINs do not match'));
                                            },
                                        }),
                                    ]}
                                >
                                    <Input.Password
                                        size="large"
                                        maxLength={6}
                                        placeholder="••••••"
                                        className="senior-login-input senior-login-pin-input"
                                    />
                                </Form.Item>
                                <Form.Item className="senior-login-submit-item">
                                    <Button
                                        type="primary"
                                        htmlType="submit"
                                        size="large"
                                        block
                                        loading={loading}
                                        className="senior-login-primary-btn"
                                    >
                                        <CheckCircleOutlined /> Verify & {otpPurpose === 'forgot' ? 'Reset PIN' : 'Create Account'}
                                    </Button>
                                </Form.Item>
                                <div className="senior-login-inline-actions">
                                    <Button
                                        type="link"
                                        onClick={() => switchView(otpPurpose === 'forgot' ? 'forgot' : 'signup')}
                                        className="senior-login-link-btn"
                                    >
                                        <ArrowLeftOutlined /> Back
                                    </Button>
                                    <Button
                                        type="link"
                                        icon={<ReloadOutlined />}
                                        disabled={resendCooldown > 0}
                                        loading={loading}
                                        onClick={handleResendOtp}
                                        className="senior-login-link-btn"
                                    >
                                        {resendCooldown > 0 ? `Resend (${resendCooldown}s)` : 'Resend OTP'}
                                    </Button>
                                </div>
                            </Form>
                        </>
                    )}

                    {/* ─── Footer ─── */}
                    <Divider className="senior-login-divider" />
                    <footer className="senior-login-footer">
                        <Link to="/" className="senior-login-home-link">
                            <ArrowLeftOutlined /> Back to Home
                        </Link>
                        <br />
                        <Text className="senior-login-footer-copy">
                            © {new Date().getFullYear()} SCIS — Office of Senior Citizens Affairs, Zamboanga City
                        </Text>
                    </footer>
                </div>
            </main>
        </div>
    );
};

export default SeniorLogin;
