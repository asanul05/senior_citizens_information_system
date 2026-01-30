import { Link } from 'react-router-dom';
import { Row, Col } from 'antd';
import {
    PhoneOutlined,
    MailOutlined,
    EnvironmentOutlined,
    FacebookOutlined,
    TwitterOutlined,
} from '@ant-design/icons';

const Footer = () => {
    const currentYear = new Date().getFullYear();

    return (
        <footer style={{
            background: 'linear-gradient(135deg, #1e1b4b 0%, #312e81 100%)',
            color: 'white',
            padding: '60px 24px 32px',
        }}>
            <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                <Row gutter={[48, 40]}>
                    {/* About Column */}
                    <Col xs={24} sm={12} lg={8}>
                        <div style={{ display: 'flex', alignItems: 'center', gap: 12, marginBottom: 20 }}>
                            <img
                                src="/osca_logo.jpg"
                                alt="OSCA Logo"
                                style={{ width: 48, height: 48, borderRadius: 12, objectFit: 'cover' }}
                            />
                            <div>
                                <div style={{ fontWeight: 700, fontSize: 20 }}>SCIS</div>
                                <div style={{ fontSize: 12, opacity: 0.8 }}>Senior Citizens Information System</div>
                            </div>
                        </div>
                        <p style={{ opacity: 0.8, lineHeight: 1.7, fontSize: 14 }}>
                            The Office of Senior Citizens Affairs (OSCA) is dedicated to
                            protecting and promoting the rights and welfare of senior citizens
                            in Zamboanga City.
                        </p>
                    </Col>

                    {/* Quick Links */}
                    <Col xs={12} sm={12} lg={4}>
                        <h4 style={{ color: '#a5b4fc', marginBottom: 20, fontWeight: 600 }}>Quick Links</h4>
                        <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
                            {[
                                { to: '/about', label: 'About Us' },
                                { to: '/services', label: 'Services' },
                                { to: '/news', label: 'News' },
                                { to: '/apply', label: 'Apply Online' },
                            ].map((link) => (
                                <Link
                                    key={link.to}
                                    to={link.to}
                                    style={{ color: 'rgba(255,255,255,0.8)', textDecoration: 'none', fontSize: 14 }}
                                >
                                    {link.label}
                                </Link>
                            ))}
                        </div>
                    </Col>

                    {/* Services */}
                    <Col xs={12} sm={12} lg={4}>
                        <h4 style={{ color: '#a5b4fc', marginBottom: 20, fontWeight: 600 }}>Services</h4>
                        <div style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
                            {[
                                'ID Registration',
                                'Benefits Claims',
                                'Discounts & Privileges',
                                'File Complaints',
                            ].map((service) => (
                                <span key={service} style={{ color: 'rgba(255,255,255,0.8)', fontSize: 14 }}>
                                    {service}
                                </span>
                            ))}
                        </div>
                    </Col>

                    {/* Contact */}
                    <Col xs={24} sm={12} lg={8}>
                        <h4 style={{ color: '#a5b4fc', marginBottom: 20, fontWeight: 600 }}>Contact Us</h4>
                        <div style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
                            <div style={{ display: 'flex', alignItems: 'flex-start', gap: 12 }}>
                                <EnvironmentOutlined style={{ fontSize: 18, marginTop: 2, color: '#a5b4fc' }} />
                                <span style={{ opacity: 0.9, fontSize: 14, lineHeight: 1.6 }}>
                                    OSCA Building, City Hall Complex<br />
                                    Zamboanga City, Philippines
                                </span>
                            </div>
                            <div style={{ display: 'flex', alignItems: 'center', gap: 12 }}>
                                <PhoneOutlined style={{ fontSize: 18, color: '#a5b4fc' }} />
                                <span style={{ opacity: 0.9, fontSize: 14 }}>(062) 991-0362</span>
                            </div>
                            <div style={{ display: 'flex', alignItems: 'center', gap: 12 }}>
                                <MailOutlined style={{ fontSize: 18, color: '#a5b4fc' }} />
                                <span style={{ opacity: 0.9, fontSize: 14 }}>osca@zamboanga.gov.ph</span>
                            </div>
                            <div style={{ display: 'flex', gap: 12, marginTop: 8 }}>
                                <a
                                    href="#"
                                    style={{
                                        width: 36,
                                        height: 36,
                                        background: 'rgba(255,255,255,0.1)',
                                        borderRadius: 8,
                                        display: 'flex',
                                        alignItems: 'center',
                                        justifyContent: 'center',
                                        color: 'white',
                                    }}
                                >
                                    <FacebookOutlined style={{ fontSize: 18 }} />
                                </a>
                                <a
                                    href="#"
                                    style={{
                                        width: 36,
                                        height: 36,
                                        background: 'rgba(255,255,255,0.1)',
                                        borderRadius: 8,
                                        display: 'flex',
                                        alignItems: 'center',
                                        justifyContent: 'center',
                                        color: 'white',
                                    }}
                                >
                                    <TwitterOutlined style={{ fontSize: 18 }} />
                                </a>
                            </div>
                        </div>
                    </Col>
                </Row>

                {/* Bottom Bar */}
                <div style={{
                    marginTop: 48,
                    paddingTop: 24,
                    borderTop: '1px solid rgba(255,255,255,0.1)',
                    display: 'flex',
                    flexWrap: 'wrap',
                    justifyContent: 'space-between',
                    alignItems: 'center',
                    gap: 16,
                }}>
                    <p style={{ opacity: 0.6, fontSize: 13, margin: 0 }}>
                        © {currentYear} Office of Senior Citizens Affairs, Zamboanga City. All rights reserved.
                    </p>
                    <div style={{ display: 'flex', gap: 24 }}>
                        <Link to="/privacy" style={{ color: 'rgba(255,255,255,0.6)', fontSize: 13, textDecoration: 'none' }}>
                            Privacy Policy
                        </Link>
                        <Link to="/terms" style={{ color: 'rgba(255,255,255,0.6)', fontSize: 13, textDecoration: 'none' }}>
                            Terms of Service
                        </Link>
                    </div>
                </div>
            </div>
        </footer>
    );
};

export default Footer;
