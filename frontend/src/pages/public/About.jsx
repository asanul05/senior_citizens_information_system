import { Row, Col, Card, Typography, Timeline } from 'antd';
import {
    TeamOutlined,
    HeartOutlined,
    SafetyCertificateOutlined,
    TrophyOutlined,
    CheckCircleOutlined,
} from '@ant-design/icons';

const { Title, Paragraph, Text } = Typography;

const About = () => {
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
                    <Title level={1} style={{ color: 'white', marginBottom: 16 }}>About OSCA</Title>
                    <Paragraph style={{ color: 'rgba(255,255,255,0.9)', fontSize: 18 }}>
                        The Office of Senior Citizens Affairs serves as the primary advocate
                        for the rights and welfare of senior citizens in Zamboanga City.
                    </Paragraph>
                </div>
            </section>

            {/* Mission & Vision */}
            <section style={{ padding: '80px 24px', background: 'white' }}>
                <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                    <Row gutter={[48, 48]}>
                        <Col xs={24} md={12}>
                            <Card style={{
                                height: '100%',
                                borderRadius: 16,
                                border: '2px solid #4338ca',
                            }}>
                                <div style={{
                                    width: 56,
                                    height: 56,
                                    background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                                    borderRadius: 12,
                                    display: 'flex',
                                    alignItems: 'center',
                                    justifyContent: 'center',
                                    marginBottom: 20,
                                }}>
                                    <TrophyOutlined style={{ fontSize: 28, color: 'white' }} />
                                </div>
                                <Title level={3} style={{ color: '#4338ca' }}>Our Mission</Title>
                                <Paragraph style={{ fontSize: 16, lineHeight: 1.8, color: '#4b5563' }}>
                                    To ensure that senior citizens in Zamboanga City are given the proper care,
                                    protection, and privileges they deserve, promoting their active participation
                                    in nation-building and securing their rightful place in society.
                                </Paragraph>
                            </Card>
                        </Col>
                        <Col xs={24} md={12}>
                            <Card style={{
                                height: '100%',
                                borderRadius: 16,
                                background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                            }}>
                                <div style={{
                                    width: 56,
                                    height: 56,
                                    background: 'rgba(255,255,255,0.2)',
                                    borderRadius: 12,
                                    display: 'flex',
                                    alignItems: 'center',
                                    justifyContent: 'center',
                                    marginBottom: 20,
                                }}>
                                    <HeartOutlined style={{ fontSize: 28, color: 'white' }} />
                                </div>
                                <Title level={3} style={{ color: 'white' }}>Our Vision</Title>
                                <Paragraph style={{ fontSize: 16, lineHeight: 1.8, color: 'rgba(255,255,255,0.9)' }}>
                                    A society where every senior citizen lives with dignity, respect,
                                    and security—fully enjoying the rights and privileges granted by law
                                    while remaining active and valued members of the community.
                                </Paragraph>
                            </Card>
                        </Col>
                    </Row>
                </div>
            </section>

            {/* Core Values */}
            <section style={{ padding: '80px 24px', background: '#f9fafb' }}>
                <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                    <div style={{ textAlign: 'center', marginBottom: 48 }}>
                        <Text style={{ color: '#4338ca', fontWeight: 600, textTransform: 'uppercase', letterSpacing: 1, fontSize: 13 }}>
                            What We Stand For
                        </Text>
                        <Title level={2} style={{ marginTop: 8 }}>Our Core Values</Title>
                    </div>
                    <Row gutter={[24, 24]}>
                        {[
                            { icon: <HeartOutlined />, title: 'Compassion', desc: 'We treat every senior with kindness and understanding.' },
                            { icon: <SafetyCertificateOutlined />, title: 'Integrity', desc: 'We uphold honesty and transparency in all our services.' },
                            { icon: <TeamOutlined />, title: 'Respect', desc: 'We honor the dignity and wisdom of our elders.' },
                            { icon: <CheckCircleOutlined />, title: 'Excellence', desc: 'We strive to provide the best service possible.' },
                        ].map((value, index) => (
                            <Col xs={12} md={6} key={index}>
                                <Card style={{ textAlign: 'center', borderRadius: 12, height: '100%' }}>
                                    <div style={{
                                        width: 60,
                                        height: 60,
                                        background: '#eef2ff',
                                        borderRadius: '50%',
                                        display: 'flex',
                                        alignItems: 'center',
                                        justifyContent: 'center',
                                        margin: '0 auto 16px',
                                        fontSize: 24,
                                        color: '#4338ca',
                                    }}>
                                        {value.icon}
                                    </div>
                                    <Title level={5}>{value.title}</Title>
                                    <Text style={{ color: '#6b7280' }}>{value.desc}</Text>
                                </Card>
                            </Col>
                        ))}
                    </Row>
                </div>
            </section>

            {/* History Timeline */}
            <section style={{ padding: '80px 24px', background: 'white' }}>
                <div style={{ maxWidth: 800, margin: '0 auto' }}>
                    <div style={{ textAlign: 'center', marginBottom: 48 }}>
                        <Text style={{ color: '#4338ca', fontWeight: 600, textTransform: 'uppercase', letterSpacing: 1, fontSize: 13 }}>
                            Our Journey
                        </Text>
                        <Title level={2} style={{ marginTop: 8 }}>History of OSCA</Title>
                    </div>
                    <Timeline
                        mode="left"
                        items={[
                            {
                                label: '1992',
                                children: <><strong>RA 7432</strong> - Senior Citizens Act was enacted, establishing the Office of Senior Citizens Affairs.</>,
                            },
                            {
                                label: '2003',
                                children: <><strong>RA 9257</strong> - Expanded Senior Citizens Act, increasing benefits and privileges.</>,
                            },
                            {
                                label: '2010',
                                children: <><strong>RA 9994</strong> - Expanded benefits including 20% discount and VAT exemption on medicines.</>,
                            },
                            {
                                label: '2025',
                                children: <><strong>SCIS Launch</strong> - Senior Citizens Information System digitized registration and benefits tracking.</>,
                            },
                        ]}
                    />
                </div>
            </section>

            {/* Stats */}
            <section style={{ padding: '60px 24px', background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)' }}>
                <div style={{ maxWidth: 1000, margin: '0 auto' }}>
                    <Row gutter={[48, 32]} style={{ textAlign: 'center' }}>
                        {[
                            { value: '24,567+', label: 'Registered Seniors' },
                            { value: '98', label: 'Barangays Covered' },
                            { value: '10+', label: 'Years of Service' },
                            { value: '100%', label: 'Commitment' },
                        ].map((stat, index) => (
                            <Col xs={12} md={6} key={index}>
                                <Title level={2} style={{ color: 'white', marginBottom: 4 }}>{stat.value}</Title>
                                <Text style={{ color: 'rgba(255,255,255,0.8)' }}>{stat.label}</Text>
                            </Col>
                        ))}
                    </Row>
                </div>
            </section>
        </div>
    );
};

export default About;
