import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { Row, Col, Button, Card, Statistic, Typography, Spin } from 'antd';
import {
    ArrowRightOutlined,
    TeamOutlined,
    IdcardOutlined,
    FileTextOutlined,
    CalendarOutlined,
    SafetyCertificateOutlined,
    RightOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';

const { Title, Paragraph, Text } = Typography;

// Hero Section
const HeroSection = () => (
    <section style={{
        background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 50%, #818cf8 100%)',
        color: 'white',
        padding: '100px 24px 120px',
        position: 'relative',
        overflow: 'hidden',
    }}>
        {/* Decorative circles */}
        <div style={{
            position: 'absolute',
            top: '-100px',
            right: '-100px',
            width: '400px',
            height: '400px',
            background: 'rgba(255,255,255,0.08)',
            borderRadius: '50%',
        }} />
        <div style={{
            position: 'absolute',
            bottom: '-150px',
            left: '-50px',
            width: '300px',
            height: '300px',
            background: 'rgba(255,255,255,0.05)',
            borderRadius: '50%',
        }} />

        <div style={{ maxWidth: 1200, margin: '0 auto', position: 'relative', zIndex: 1 }}>
            <Row gutter={[48, 48]} align="middle">
                <Col xs={24} lg={14}>
                    <div style={{
                        display: 'inline-block',
                        padding: '6px 16px',
                        background: 'rgba(255,255,255,0.15)',
                        borderRadius: 20,
                        fontSize: 13,
                        marginBottom: 24,
                    }}>
                        🏛️ Office of Senior Citizens Affairs
                    </div>
                    <Title level={1} style={{
                        color: 'white',
                        fontSize: 'clamp(32px, 5vw, 52px)',
                        lineHeight: 1.2,
                        marginBottom: 24,
                    }}>
                        Serving Our Beloved <br />Senior Citizens
                    </Title>
                    <Paragraph style={{
                        color: 'rgba(255,255,255,0.9)',
                        fontSize: 18,
                        lineHeight: 1.7,
                        maxWidth: 500,
                        marginBottom: 32,
                    }}>
                        Dedicated to protecting and promoting the rights, dignity, and welfare
                        of senior citizens in Zamboanga City. Register now and enjoy your benefits.
                    </Paragraph>
                    <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap' }}>
                        <Link to="/apply">
                            <Button
                                size="large"
                                style={{
                                    background: 'white',
                                    color: '#4338ca',
                                    border: 'none',
                                    height: 50,
                                    paddingInline: 32,
                                    fontWeight: 600,
                                    borderRadius: 10,
                                }}
                            >
                                Apply for ID <ArrowRightOutlined />
                            </Button>
                        </Link>
                        <Link to="/services">
                            <Button
                                size="large"
                                ghost
                                style={{
                                    color: 'white',
                                    borderColor: 'rgba(255,255,255,0.5)',
                                    height: 50,
                                    paddingInline: 32,
                                    fontWeight: 500,
                                    borderRadius: 10,
                                }}
                            >
                                View Services
                            </Button>
                        </Link>
                    </div>
                </Col>
                <Col xs={24} lg={10} style={{ textAlign: 'center' }}>
                    <div style={{
                        width: '100%',
                        maxWidth: 350,
                        height: 300,
                        background: 'rgba(255,255,255,0.1)',
                        borderRadius: 20,
                        display: 'flex',
                        alignItems: 'center',
                        justifyContent: 'center',
                        margin: '0 auto',
                        backdropFilter: 'blur(10px)',
                    }}>
                        <TeamOutlined style={{ fontSize: 120, opacity: 0.5 }} />
                    </div>
                </Col>
            </Row>
        </div>
    </section>
);

// Stats Section
const StatsSection = () => {
    const [stats, setStats] = useState({ seniors: 0, approved: 0, claimed: 0 });

    useEffect(() => {
        // Simulate loading stats
        setTimeout(() => {
            setStats({ seniors: 24567, approved: 1234, claimed: 890 });
        }, 500);
    }, []);

    return (
        <section style={{
            padding: '0 24px',
            marginTop: -60,
            position: 'relative',
            zIndex: 2,
        }}>
            <div style={{ maxWidth: 1000, margin: '0 auto' }}>
                <Card style={{
                    borderRadius: 16,
                    boxShadow: '0 10px 40px rgba(0,0,0,0.1)',
                }}>
                    <Row gutter={[32, 24]}>
                        <Col xs={24} sm={8}>
                            <Statistic
                                title={<span style={{ color: '#6b7280' }}>Registered Seniors</span>}
                                value={stats.seniors}
                                prefix={<TeamOutlined style={{ color: '#4338ca', marginRight: 8 }} />}
                                valueStyle={{ color: '#1f2937', fontWeight: 700 }}
                            />
                        </Col>
                        <Col xs={24} sm={8}>
                            <Statistic
                                title={<span style={{ color: '#6b7280' }}>IDs Issued This Year</span>}
                                value={stats.approved}
                                prefix={<IdcardOutlined style={{ color: '#059669', marginRight: 8 }} />}
                                valueStyle={{ color: '#1f2937', fontWeight: 700 }}
                            />
                        </Col>
                        <Col xs={24} sm={8}>
                            <Statistic
                                title={<span style={{ color: '#6b7280' }}>Benefits Claimed</span>}
                                value={stats.claimed}
                                prefix={<SafetyCertificateOutlined style={{ color: '#dc2626', marginRight: 8 }} />}
                                valueStyle={{ color: '#1f2937', fontWeight: 700 }}
                            />
                        </Col>
                    </Row>
                </Card>
            </div>
        </section>
    );
};

// Services Preview
const ServicesPreview = () => {
    const services = [
        {
            icon: <IdcardOutlined style={{ fontSize: 32, color: '#4338ca' }} />,
            title: 'Senior Citizen ID',
            description: 'Register and get your official OSCA ID to access benefits and privileges.',
        },
        {
            icon: <SafetyCertificateOutlined style={{ fontSize: 32, color: '#059669' }} />,
            title: 'Benefits & Discounts',
            description: '20% discount on medicine, restaurants, transportation, and more.',
        },
        {
            icon: <FileTextOutlined style={{ fontSize: 32, color: '#dc2626' }} />,
            title: 'File Complaints',
            description: 'Report violations of RA 9994 and protect your rights as a senior citizen.',
        },
    ];

    return (
        <section style={{ padding: '80px 24px', background: 'white' }}>
            <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                <div style={{ textAlign: 'center', marginBottom: 48 }}>
                    <Text style={{
                        color: '#4338ca',
                        fontWeight: 600,
                        textTransform: 'uppercase',
                        letterSpacing: 1,
                        fontSize: 13,
                    }}>
                        What We Offer
                    </Text>
                    <Title level={2} style={{ marginTop: 8, marginBottom: 16 }}>
                        Our Services
                    </Title>
                    <Paragraph style={{ color: '#6b7280', fontSize: 16, maxWidth: 600, margin: '0 auto' }}>
                        OSCA provides various services and programs for the welfare of senior citizens.
                    </Paragraph>
                </div>
                <Row gutter={[24, 24]}>
                    {services.map((service, index) => (
                        <Col xs={24} md={8} key={index}>
                            <Card
                                hoverable
                                style={{
                                    height: '100%',
                                    borderRadius: 12,
                                    border: '1px solid #e5e7eb',
                                }}
                                bodyStyle={{ padding: 32 }}
                            >
                                <div style={{
                                    width: 64,
                                    height: 64,
                                    background: '#eef2ff',
                                    borderRadius: 12,
                                    display: 'flex',
                                    alignItems: 'center',
                                    justifyContent: 'center',
                                    marginBottom: 20,
                                }}>
                                    {service.icon}
                                </div>
                                <Title level={4} style={{ marginBottom: 12 }}>{service.title}</Title>
                                <Paragraph style={{ color: '#6b7280', marginBottom: 0 }}>
                                    {service.description}
                                </Paragraph>
                            </Card>
                        </Col>
                    ))}
                </Row>
                <div style={{ textAlign: 'center', marginTop: 40 }}>
                    <Link to="/services">
                        <Button type="link" style={{ color: '#4338ca', fontWeight: 600 }}>
                            View All Services <RightOutlined />
                        </Button>
                    </Link>
                </div>
            </div>
        </section>
    );
};

// Announcements Preview
const AnnouncementsPreview = () => {
    const [announcements, setAnnouncements] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        // Simulate loading announcements
        setTimeout(() => {
            setAnnouncements([
                {
                    id: 1,
                    title: 'Distribution of Cash Gift for Centenarians',
                    type: 'event',
                    date: '2026-02-15',
                    excerpt: 'OSCA will distribute cash gifts to centenarians in coordination with barangays.',
                },
                {
                    id: 2,
                    title: 'Mobile ID Registration in Barangay Tetuan',
                    type: 'notice',
                    date: '2026-02-10',
                    excerpt: 'Free mobile registration for senior citizens in Barangay Tetuan.',
                },
                {
                    id: 3,
                    title: 'Updated Requirements for ID Application',
                    type: 'advisory',
                    date: '2026-02-01',
                    excerpt: 'Please bring the following documents when applying for your Senior Citizen ID.',
                },
            ]);
            setLoading(false);
        }, 500);
    }, []);

    const getTypeColor = (type) => {
        const colors = { event: '#4338ca', notice: '#059669', advisory: '#dc2626' };
        return colors[type] || '#6b7280';
    };

    return (
        <section style={{ padding: '80px 24px', background: '#f9fafb' }}>
            <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 32, flexWrap: 'wrap', gap: 16 }}>
                    <div>
                        <Text style={{ color: '#4338ca', fontWeight: 600, textTransform: 'uppercase', letterSpacing: 1, fontSize: 13 }}>
                            Stay Updated
                        </Text>
                        <Title level={2} style={{ marginTop: 8, marginBottom: 0 }}>Latest Announcements</Title>
                    </div>
                    <Link to="/news">
                        <Button style={{ borderRadius: 8, borderColor: '#d1d5db' }}>
                            View All <RightOutlined />
                        </Button>
                    </Link>
                </div>
                {loading ? (
                    <div style={{ textAlign: 'center', padding: 60 }}><Spin size="large" /></div>
                ) : (
                    <Row gutter={[24, 24]}>
                        {announcements.map((item) => (
                            <Col xs={24} md={8} key={item.id}>
                                <Card
                                    hoverable
                                    style={{ height: '100%', borderRadius: 12, border: '1px solid #e5e7eb' }}
                                    bodyStyle={{ padding: 24 }}
                                >
                                    <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 12 }}>
                                        <span style={{
                                            padding: '2px 10px',
                                            background: `${getTypeColor(item.type)}15`,
                                            color: getTypeColor(item.type),
                                            borderRadius: 4,
                                            fontSize: 12,
                                            fontWeight: 600,
                                            textTransform: 'capitalize',
                                        }}>
                                            {item.type}
                                        </span>
                                        <span style={{ color: '#9ca3af', fontSize: 12 }}>
                                            <CalendarOutlined /> {dayjs(item.date).format('MMM D, YYYY')}
                                        </span>
                                    </div>
                                    <Title level={5} style={{ marginBottom: 8 }}>{item.title}</Title>
                                    <Paragraph style={{ color: '#6b7280', marginBottom: 0, fontSize: 14 }}>
                                        {item.excerpt}
                                    </Paragraph>
                                </Card>
                            </Col>
                        ))}
                    </Row>
                )}
            </div>
        </section>
    );
};

// CTA Section
const CTASection = () => (
    <section style={{ padding: '80px 24px', background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)' }}>
        <div style={{ maxWidth: 800, margin: '0 auto', textAlign: 'center' }}>
            <Title level={2} style={{ color: 'white', marginBottom: 16 }}>
                Ready to Get Your Senior Citizen ID?
            </Title>
            <Paragraph style={{ color: 'rgba(255,255,255,0.9)', fontSize: 18, marginBottom: 32 }}>
                Apply online now and visit your nearest OSCA office to complete your registration.
            </Paragraph>
            <Link to="/apply">
                <Button
                    size="large"
                    style={{
                        background: 'white',
                        color: '#4338ca',
                        border: 'none',
                        height: 54,
                        paddingInline: 40,
                        fontWeight: 600,
                        borderRadius: 10,
                        fontSize: 16,
                    }}
                >
                    Apply Now <ArrowRightOutlined />
                </Button>
            </Link>
        </div>
    </section>
);

// Main Home Page
const Home = () => {
    return (
        <div>
            <HeroSection />
            <StatsSection />
            <ServicesPreview />
            <AnnouncementsPreview />
            <CTASection />
        </div>
    );
};

export default Home;
