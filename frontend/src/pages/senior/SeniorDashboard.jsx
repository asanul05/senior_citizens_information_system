import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Card, Row, Col, Typography, Button, Statistic, Divider, Avatar, Tag, Space, Spin, Grid, Dropdown, Empty } from 'antd';
import {
    UserOutlined,
    SafetyOutlined,
    SettingOutlined,
    LogoutOutlined,
    IdcardOutlined,
    GiftOutlined,
    NotificationOutlined,
    FileTextOutlined,
    EnvironmentOutlined,
    ClockCircleOutlined,
    ArrowRightOutlined,
} from '@ant-design/icons';
import { seniorPortalApi, publicApi } from '../../services/api';
import dayjs from 'dayjs';
import relativeTime from 'dayjs/plugin/relativeTime';

dayjs.extend(relativeTime);

const { Title, Paragraph, Text } = Typography;

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:8000/api';

const SeniorDashboard = () => {
    const [senior, setSenior] = useState(null);
    const [stats, setStats] = useState(null);
    const [loading, setLoading] = useState(true);
    const [recentAnnouncements, setRecentAnnouncements] = useState([]);
    const [announcementsLoading, setAnnouncementsLoading] = useState(true);
    const navigate = useNavigate();
    const screens = Grid.useBreakpoint();
    const isMobile = !screens.sm;

    useEffect(() => {
        const storedSenior = localStorage.getItem('senior');
        if (!storedSenior) {
            navigate('/senior/login');
            return;
        }
        const seniorData = JSON.parse(storedSenior);
        setSenior(seniorData);
        fetchDashboardStats(seniorData.id);
        fetchRecentAnnouncements();
    }, [navigate]);

    const fetchDashboardStats = async (seniorId) => {
        try {
            const response = await seniorPortalApi.getDashboardStats(seniorId);
            const statsData = response.data.data;
            setStats(statsData);

            setSenior((prev) => {
                if (!prev) return prev;
                const updated = {
                    ...prev,
                    photo: statsData.photo || prev.photo || null,
                    photo_url: statsData.photo_url || prev.photo_url || null,
                };
                localStorage.setItem('senior', JSON.stringify(updated));
                return updated;
            });
        } catch (error) {
            console.error('Failed to fetch dashboard stats:', error);
        } finally {
            setLoading(false);
        }
    };

    const fetchRecentAnnouncements = async () => {
        try {
            setAnnouncementsLoading(true);
            const response = await publicApi.getAnnouncements({ limit: 3 });
            const items = response.data.data || response.data || [];
            setRecentAnnouncements(items.slice(0, 3));
        } catch (error) {
            console.error('Failed to fetch recent announcements:', error);
            setRecentAnnouncements([]);
        } finally {
            setAnnouncementsLoading(false);
        }
    };

    const getAvatarSrc = () => {
        if (!senior) return undefined;
        if (senior.photo_url) return senior.photo_url;
        if (senior.photo) return `${API_URL.replace('/api', '')}/storage/${senior.photo}`;
        return undefined;
    };

    const handleLogout = () => {
        localStorage.removeItem('senior_token');
        localStorage.removeItem('senior');
        navigate('/senior/login');
    };

    const getAnnouncementTypeColor = (type) => {
        const colors = {
            general: 'blue',
            event: 'purple',
            health: 'green',
            benefit: 'gold',
            urgent: 'red',
            schedule: 'cyan',
        };
        return colors[type?.toLowerCase()] || 'default';
    };

    const formatAnnouncementDate = (item) => {
        const rawDate = item.created_at || item.published_at || item.date;
        if (!rawDate) return '';

        const parsed = dayjs(rawDate);
        return parsed.isValid() ? parsed.fromNow() : rawDate;
    };

    if (!senior) return null;

    const menuItems = [
        { icon: <GiftOutlined />, title: 'Benefits', description: 'Apply for senior citizen benefits', path: '/senior/benefits', color: '#059669' },
        { icon: <NotificationOutlined />, title: 'Announcements', description: 'View news from your barangay', path: '/senior/announcements', color: '#f59e0b' },
        { icon: <FileTextOutlined />, title: 'Complaints', description: 'File a complaint or feedback', path: '/senior/complaints', color: '#dc2626' },
    ];

    const profileMenu = {
        items: [
            {
                key: 'profile',
                icon: <UserOutlined />,
                label: 'My Profile',
            },
            {
                key: 'logout',
                icon: <LogoutOutlined />,
                label: 'Logout',
                danger: true,
            },
        ],
        onClick: ({ key }) => {
            if (key === 'profile') {
                navigate('/senior/profile');
                return;
            }

            if (key === 'logout') {
                handleLogout();
            }
        },
    };

    return (
        <div style={{ minHeight: '100vh', background: '#f9fafb' }}>
            {/* Header */}
            <div style={{
                background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
                color: 'white',
                padding: isMobile ? '16px' : '24px',
            }}>
                <div style={{
                    maxWidth: 1000,
                    margin: '0 auto',
                    display: 'flex',
                    justifyContent: 'space-between',
                    alignItems: 'center',
                    flexWrap: 'nowrap',
                    columnGap: 16,
                }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: 16, minWidth: 0, flex: '1 1 auto' }}>
                        <SafetyOutlined style={{ fontSize: 28 }} />
                        <div style={{ minWidth: 0 }}>
                            <Title level={4} style={{ color: 'white', margin: 0, whiteSpace: 'nowrap' }}>Senior Portal</Title>
                            <Text style={{ color: 'rgba(255,255,255,0.8)' }}>Welcome, {senior.name}</Text>
                        </div>
                    </div>
                    <Space
                        wrap
                        style={{
                            marginLeft: 'auto',
                            width: 'auto',
                            justifyContent: 'flex-end',
                        }}
                    >
                        <Dropdown menu={profileMenu} placement="bottomRight" trigger={['click']}>
                            <Button
                                ghost
                                shape="circle"
                                icon={<SettingOutlined style={{ fontSize: 18 }} />}
                                style={{
                                    height: 42,
                                    width: 42,
                                    display: 'inline-flex',
                                    alignItems: 'center',
                                    justifyContent: 'center',
                                }}
                            />
                        </Dropdown>
                    </Space>
                </div>
            </div>

            {/* Main Content */}
            <div style={{ maxWidth: 1000, margin: '0 auto', padding: isMobile ? '16px' : '24px' }}>
                {/* Profile Card */}
                <Card
                    hoverable
                    onClick={() => navigate('/senior/profile')}
                    style={{ marginBottom: 24, borderRadius: 16, cursor: 'pointer' }}
                >
                    <Row gutter={[16, 16]} align="middle">
                        <Col>
                            <Avatar
                                size={80}
                                icon={<UserOutlined />}
                                style={{ background: '#4338ca' }}
                                src={getAvatarSrc()}
                            />
                        </Col>
                        <Col flex={1}>
                            <Title level={3} style={{ marginBottom: 4 }}>{senior.name}</Title>
                            <Space size="middle" wrap>
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
                <Row gutter={[12, 12]} style={{ marginBottom: 24 }}>
                    <Col xs={12} sm={6}>
                        <Card
                            hoverable
                            onClick={() => navigate('/senior/profile')}
                            style={{ borderRadius: 12, textAlign: 'center', cursor: 'pointer' }}
                        >
                            <Statistic
                                title="ID Status"
                                value={loading ? '-' : (stats?.id_status || 'Active')}
                                valueStyle={{ color: stats?.id_status === 'Active' ? '#52c41a' : '#faad14', fontSize: 20 }}
                            />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card
                            hoverable
                            onClick={() => navigate('/senior/benefits')}
                            style={{ borderRadius: 12, textAlign: 'center', cursor: 'pointer' }}
                        >
                            <Statistic
                                title="Benefits"
                                value={loading ? '-' : (stats?.eligible_benefits || 0)}
                                suffix={`/ ${stats?.total_benefits || 3}`}
                                valueStyle={{ fontSize: 20 }}
                            />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card
                            hoverable
                            onClick={() => navigate('/senior/announcements')}
                            style={{ borderRadius: 12, textAlign: 'center', cursor: 'pointer' }}
                        >
                            <Statistic
                                title="Announcements"
                                value={loading ? '-' : (stats?.announcements || 0)}
                                valueStyle={{ fontSize: 20, color: '#faad14' }}
                            />
                        </Card>
                    </Col>
                    <Col xs={12} sm={6}>
                        <Card
                            hoverable
                            onClick={() => navigate('/senior/complaints')}
                            style={{ borderRadius: 12, textAlign: 'center', cursor: 'pointer' }}
                        >
                            <Statistic
                                title="Complaints"
                                value={loading ? '-' : (stats?.complaints || 0)}
                                valueStyle={{ fontSize: 20 }}
                            />
                        </Card>
                    </Col>
                </Row>

                {/* Menu Grid */}
                <Title level={4}>Quick Actions</Title>
                <Row gutter={[12, 12]}>
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

                {/* Announcements Preview */}
                <Divider />
                <Card style={{ borderRadius: 12 }}>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: 12, marginBottom: 12, flexWrap: 'wrap' }}>
                        <Title level={5} style={{ margin: 0 }}>Recent Announcements</Title>
                        <Button type="link" onClick={() => navigate('/senior/announcements')} style={{ padding: 0 }}>
                            View all <ArrowRightOutlined />
                        </Button>
                    </div>

                    {announcementsLoading ? (
                        <div style={{ textAlign: 'center', padding: 24 }}>
                            <Spin />
                        </div>
                    ) : recentAnnouncements.length > 0 ? (
                        <div style={{ display: 'flex', flexDirection: 'column', gap: 10 }}>
                            {recentAnnouncements.map((item) => (
                                <Card
                                    key={item.id}
                                    size="small"
                                    hoverable
                                    onClick={() => navigate('/senior/announcements')}
                                    style={{ borderRadius: 10, cursor: 'pointer' }}
                                >
                                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', gap: 10, flexWrap: 'wrap' }}>
                                        <div style={{ flex: 1, minWidth: 0 }}>
                                            <Space size={6} wrap style={{ marginBottom: 4 }}>
                                                {item.type && (
                                                    <Tag color={getAnnouncementTypeColor(item.type)}>
                                                        {item.type_name || item.type}
                                                    </Tag>
                                                )}
                                            </Space>
                                            <Text strong style={{ display: 'block', marginBottom: 4 }}>{item.title}</Text>
                                            <Paragraph style={{ marginBottom: 0, color: '#4b5563' }} ellipsis={{ rows: 2 }}>
                                                {item.content || item.description || item.body || ''}
                                            </Paragraph>
                                        </div>
                                        <Text type="secondary" style={{ fontSize: 12, whiteSpace: 'nowrap' }}>
                                            <ClockCircleOutlined style={{ marginRight: 4 }} />
                                            {formatAnnouncementDate(item)}
                                        </Text>
                                    </div>
                                </Card>
                            ))}
                        </div>
                    ) : (
                        <Empty
                            image={Empty.PRESENTED_IMAGE_SIMPLE}
                            description="No announcements at the moment"
                        />
                    )}
                </Card>

            </div>
        </div>
    );
};

export default SeniorDashboard;
