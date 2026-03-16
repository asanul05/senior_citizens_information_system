import { useState, useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Card, Typography, Button, Tag, Space, Spin, Empty, List, Divider } from 'antd';
import {
    SafetyOutlined,
    LogoutOutlined,
    NotificationOutlined,
    CalendarOutlined,
    ArrowLeftOutlined,
    ClockCircleOutlined,
    PushpinOutlined,
} from '@ant-design/icons';
import dayjs from 'dayjs';
import relativeTime from 'dayjs/plugin/relativeTime';
import axios from 'axios';

dayjs.extend(relativeTime);

const { Title, Text, Paragraph } = Typography;

const API_URL = import.meta.env.VITE_API_URL || 'http://localhost:8000/api';

const SeniorAnnouncements = () => {
    const [senior, setSenior] = useState(null);
    const [announcements, setAnnouncements] = useState([]);
    const [loading, setLoading] = useState(true);
    const [expandedId, setExpandedId] = useState(null);
    const navigate = useNavigate();

    useEffect(() => {
        const storedSenior = localStorage.getItem('senior');
        if (!storedSenior) {
            navigate('/senior/login');
            return;
        }
        setSenior(JSON.parse(storedSenior));
        fetchAnnouncements();
    }, [navigate]);

    const fetchAnnouncements = async () => {
        try {
            const response = await axios.get(`${API_URL}/public/announcements`);
            setAnnouncements(response.data.data || response.data || []);
        } catch (error) {
            console.error('Failed to fetch announcements:', error);
        } finally {
            setLoading(false);
        }
    };

    const handleLogout = () => {
        localStorage.removeItem('senior_token');
        localStorage.removeItem('senior');
        navigate('/senior/login');
    };

    if (!senior) return null;

    const getTypeColor = (type) => {
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

    const isRecent = (date) => {
        return dayjs().diff(dayjs(date), 'day') <= 3;
    };

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
                            <Text style={{ color: 'rgba(255,255,255,0.8)' }}>Announcements</Text>
                        </div>
                    </div>
                    <Space>
                        <Button ghost onClick={() => navigate('/senior/dashboard')} icon={<ArrowLeftOutlined />}>
                            Dashboard
                        </Button>
                        <Button ghost onClick={handleLogout} icon={<LogoutOutlined />}>
                            Logout
                        </Button>
                    </Space>
                </div>
            </div>

            {/* Content */}
            <div style={{ maxWidth: 1000, margin: '0 auto', padding: '24px' }}>
                {/* Section Title */}
                <div style={{ display: 'flex', alignItems: 'center', gap: 12, marginBottom: 24 }}>
                    <div style={{
                        width: 44, height: 44, borderRadius: 12,
                        background: '#f59e0b15', display: 'flex',
                        alignItems: 'center', justifyContent: 'center',
                    }}>
                        <NotificationOutlined style={{ fontSize: 22, color: '#f59e0b' }} />
                    </div>
                    <div>
                        <Title level={4} style={{ margin: 0 }}>Latest Announcements</Title>
                        <Text type="secondary">Stay updated with news from OSCA</Text>
                    </div>
                </div>

                {loading ? (
                    <div style={{ textAlign: 'center', padding: 60 }}>
                        <Spin size="large" />
                    </div>
                ) : announcements.length === 0 ? (
                    <Card style={{ borderRadius: 16 }}>
                        <Empty description="No announcements at the moment" />
                    </Card>
                ) : (
                    <div style={{ display: 'flex', flexDirection: 'column', gap: 16 }}>
                        {announcements.map((item) => {
                            const isExpanded = expandedId === item.id;
                            return (
                                <Card
                                    key={item.id}
                                    style={{
                                        borderRadius: 16,
                                        cursor: 'pointer',
                                        border: isRecent(item.created_at) ? '1px solid #fde68a' : '1px solid #e5e7eb',
                                        transition: 'box-shadow 0.2s',
                                    }}
                                    hoverable
                                    onClick={() => setExpandedId(isExpanded ? null : item.id)}
                                >
                                    {/* Header Row */}
                                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: 8, flexWrap: 'wrap', gap: 8 }}>
                                        <Space size="small" wrap>
                                            {item.is_pinned && (
                                                <Tag color="red" icon={<PushpinOutlined />}>Pinned</Tag>
                                            )}
                                            {isRecent(item.created_at) && (
                                                <Tag color="gold">New</Tag>
                                            )}
                                            {item.type && (
                                                <Tag color={getTypeColor(item.type)}>{item.type}</Tag>
                                            )}
                                        </Space>
                                        <Text type="secondary" style={{ fontSize: 12 }}>
                                            <ClockCircleOutlined style={{ marginRight: 4 }} />
                                            {dayjs(item.created_at).fromNow()}
                                        </Text>
                                    </div>

                                    {/* Title */}
                                    <Title level={5} style={{ margin: '4px 0 8px' }}>
                                        {item.title}
                                    </Title>

                                    {/* Content */}
                                    <Paragraph
                                        style={{ color: '#4b5563', margin: 0 }}
                                        ellipsis={isExpanded ? false : { rows: 2 }}
                                    >
                                        {item.content || item.body || item.description || ''}
                                    </Paragraph>

                                    {/* Date */}
                                    {isExpanded && (
                                        <div style={{ marginTop: 12, paddingTop: 12, borderTop: '1px solid #f3f4f6' }}>
                                            <Space>
                                                <CalendarOutlined style={{ color: '#6366f1' }} />
                                                <Text type="secondary" style={{ fontSize: 13 }}>
                                                    Posted on {dayjs(item.created_at).format('MMMM D, YYYY [at] h:mm A')}
                                                </Text>
                                            </Space>
                                            {item.author && (
                                                <Text type="secondary" style={{ fontSize: 13, display: 'block', marginTop: 4 }}>
                                                    By: {item.author}
                                                </Text>
                                            )}
                                        </div>
                                    )}

                                    {/* Click hint */}
                                    {!isExpanded && (
                                        <Text type="secondary" style={{ fontSize: 12, marginTop: 8, display: 'block' }}>
                                            Click to read more →
                                        </Text>
                                    )}
                                </Card>
                            );
                        })}
                    </div>
                )}

                {/* Footer */}
                <div style={{ textAlign: 'center', marginTop: 32 }}>
                    <Link to="/senior/dashboard" style={{ color: '#4338ca' }}>← Back to Dashboard</Link>
                </div>
            </div>
        </div>
    );
};

export default SeniorAnnouncements;
