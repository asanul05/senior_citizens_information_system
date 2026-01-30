import { useState, useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Card, Row, Col, Typography, Button, Statistic, Divider, Avatar, Tag, Space } from 'antd';
import {
    UserOutlined,
    SafetyOutlined,
    LogoutOutlined,
    IdcardOutlined,
    GiftOutlined,
    NotificationOutlined,
    FileTextOutlined,
    EnvironmentOutlined,
    PhoneOutlined,
    CalendarOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';

const { Title, Paragraph, Text } = Typography;

const SeniorDashboard = () => {
    const [senior, setSenior] = useState(null);
    const navigate = useNavigate();

    useEffect(() => {
        const storedSenior = localStorage.getItem('senior');
        if (!storedSenior) {
            navigate('/senior/login');
            return;
        }
        setSenior(JSON.parse(storedSenior));
    }, [navigate]);

    const handleLogout = () => {
        localStorage.removeItem('senior_token');
        localStorage.removeItem('senior');
        navigate('/senior/login');
    };

    if (!senior) return null;

    const menuItems = [
        { icon: <IdcardOutlined />, title: 'My Profile', description: 'View your personal information', path: '/senior/profile', color: '#4338ca' },
        { icon: <GiftOutlined />, title: 'Benefits', description: 'Apply for senior citizen benefits', path: '/senior/benefits', color: '#059669' },
        { icon: <NotificationOutlined />, title: 'Announcements', description: 'View news from your barangay', path: '/senior/announcements', color: '#f59e0b' },
        { icon: <FileTextOutlined />, title: 'Complaints', description: 'File a complaint or feedback', path: '/senior/complaints', color: '#dc2626' },
    ];

    return (
        <div style={{ minHeight: '100vh', background: '#f9fafb' }}>
            {/* Header */}
            <div style={{
                background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                color: 'white',
                padding: '24px',
            }}>
                <div style={{ maxWidth: 1000, margin: '0 auto', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
                        <SafetyOutlined style={{ fontSize: 28 }} />
                        <div>
                            <Title level={4} style={{ color: 'white', margin: 0 }}>Senior Portal</Title>
                            <Text style={{ color: 'rgba(255,255,255,0.8)' }}>Welcome, {senior.name}</Text>
                        </div>
                    </div>
                    <Button ghost onClick={handleLogout} icon={<LogoutOutlined />}>
                        Logout
                    </Button>
                </div>
            </div>

            {/* Main Content */}
            <div style={{ maxWidth: 1000, margin: '0 auto', padding: '24px' }}>
                {/* Profile Card */}
                <Card style={{ marginBottom: 24, borderRadius: 16 }}>
                    <Row gutter={24} align="middle">
                        <Col>
                            <Avatar size={80} icon={<UserOutlined />} style={{ background: '#4338ca' }} />
                        </Col>
                        <Col flex={1}>
                            <Title level={3} style={{ marginBottom: 4 }}>{senior.name}</Title>
                            <Space size="large">
                                <Tag color="blue" icon={<IdcardOutlined />} style={{ fontSize: 14, padding: '4px 12px' }}>
                                    OSCA ID: {senior.osca_id}
                                </Tag>
                                <Tag color="green" icon={<EnvironmentOutlined />}>
                                    {senior.barangay}
                                </Tag>
                            </Space>
                        </Col>
                    </Row>
                </Card>

                {/* Quick Stats */}
                <Row gutter={16} style={{ marginBottom: 24 }}>
                    <Col xs={12} sm={6}>
                        <Card style={{ borderRadius: 12, textAlign: 'center' }}>
                            <Statistic title="ID Status" value="Active" valueStyle={{ color: '#52c41a', fontSize: 20 }} />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card style={{ borderRadius: 12, textAlign: 'center' }}>
                            <Statistic title="Benefits" value={2} suffix="/ 5" valueStyle={{ fontSize: 20 }} />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card style={{ borderRadius: 12, textAlign: 'center' }}>
                            <Statistic title="Announcements" value={3} valueStyle={{ fontSize: 20, color: '#faad14' }} />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card style={{ borderRadius: 12, textAlign: 'center' }}>
                            <Statistic title="Complaints" value={0} valueStyle={{ fontSize: 20 }} />
                        </Card>
                    </Col>
                </Row>

                {/* Menu Grid */}
                <Title level={4}>Quick Actions</Title>
                <Row gutter={[16, 16]}>
                    {menuItems.map((item, index) => (
                        <Col xs={24} sm={12} key={index}>
                            <Card
                                hoverable
                                style={{ borderRadius: 12, cursor: 'pointer' }}
                                onClick={() => navigate(item.path)}
                            >
                                <div style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
                                    <div style={{
                                        width: 50,
                                        height: 50,
                                        borderRadius: 12,
                                        background: `${item.color}15`,
                                        display: 'flex',
                                        alignItems: 'center',
                                        justifyContent: 'center',
                                        fontSize: 24,
                                        color: item.color,
                                    }}>
                                        {item.icon}
                                    </div>
                                    <div>
                                        <Text strong style={{ fontSize: 16 }}>{item.title}</Text>
                                        <div><Text type="secondary">{item.description}</Text></div>
                                    </div>
                                </div>
                            </Card>
                        </Col>
                    ))}
                </Row>

                {/* Recent Activity */}
                <Divider />
                <Card style={{ borderRadius: 12 }}>
                    <Title level={5}>Recent Activity</Title>
                    <div style={{ color: '#8c8c8c', textAlign: 'center', padding: 24 }}>
                        <CalendarOutlined style={{ fontSize: 32, marginBottom: 8 }} />
                        <div>No recent activity</div>
                    </div>
                </Card>

                {/* Footer */}
                <div style={{ textAlign: 'center', marginTop: 32 }}>
                    <Link to="/" style={{ color: '#4338ca' }}>← Back to Main Website</Link>
                </div>
            </div>
        </div>
    );
};

export default SeniorDashboard;
