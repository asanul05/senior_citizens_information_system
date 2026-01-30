import { useState, useEffect } from 'react';
import { Row, Col, Card, Typography, Select, Input, Spin, Empty, Tag, Pagination } from 'antd';
import { SearchOutlined, CalendarOutlined } from '@ant-design/icons';
import dayjs from 'dayjs';

const { Title, Paragraph, Text } = Typography;
const { Option } = Select;

const News = () => {
    const [announcements, setAnnouncements] = useState([]);
    const [loading, setLoading] = useState(true);
    const [filter, setFilter] = useState('all');
    const [search, setSearch] = useState('');
    const [currentPage, setCurrentPage] = useState(1);
    const pageSize = 9;

    useEffect(() => {
        // Simulate loading announcements from API
        setLoading(true);
        setTimeout(() => {
            setAnnouncements([
                { id: 1, title: 'Distribution of Cash Gift for Centenarians', type: 'event', date: '2026-02-15', content: 'OSCA will distribute cash gifts to centenarians in coordination with barangays. All eligible seniors are encouraged to prepare their requirements.' },
                { id: 2, title: 'Mobile ID Registration in Barangay Tetuan', type: 'notice', date: '2026-02-10', content: 'Free mobile registration for senior citizens in Barangay Tetuan. Bring your documents for on-site processing.' },
                { id: 3, title: 'Updated Requirements for ID Application', type: 'advisory', date: '2026-02-01', content: 'Please bring the following documents when applying for your Senior Citizen ID: Birth Certificate, Barangay Certificate, and 2x2 photo.' },
                { id: 4, title: 'Valentine\'s Day Special Event for Seniors', type: 'event', date: '2026-02-14', content: 'Join us for a special Valentine\'s Day celebration at City Hall. Free lunch and entertainment for all registered seniors.' },
                { id: 5, title: 'New OSCA Branch Opening in Sta. Maria', type: 'news', date: '2026-01-28', content: 'We are pleased to announce the opening of a new OSCA satellite office in Barangay Sta. Maria for easier access to services.' },
                { id: 6, title: 'Reminder: Annual Revalidation Period', type: 'advisory', date: '2026-01-20', content: 'All senior citizens are reminded to revalidate their records during the annual revalidation period from January to March.' },
                { id: 7, title: 'Free Health Checkup Program', type: 'event', date: '2026-03-01', content: 'In partnership with DOH, OSCA will conduct free health checkups for all registered seniors at the City Health Office.' },
                { id: 8, title: 'Office Closed for Fiesta', type: 'notice', date: '2026-02-26', content: 'The OSCA office will be closed on February 26-27 for the city fiesta celebration. Regular operations resume on February 28.' },
            ]);
            setLoading(false);
        }, 500);
    }, []);

    const typeColors = {
        event: { color: '#4338ca', bg: '#eef2ff' },
        notice: { color: '#059669', bg: '#ecfdf5' },
        advisory: { color: '#dc2626', bg: '#fef2f2' },
        news: { color: '#0891b2', bg: '#ecfeff' },
    };

    const filtered = announcements
        .filter(a => filter === 'all' || a.type === filter)
        .filter(a => a.title.toLowerCase().includes(search.toLowerCase()));

    const paginated = filtered.slice((currentPage - 1) * pageSize, currentPage * pageSize);

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
                    <Title level={1} style={{ color: 'white', marginBottom: 16 }}>News & Announcements</Title>
                    <Paragraph style={{ color: 'rgba(255,255,255,0.9)', fontSize: 18 }}>
                        Stay updated with the latest news, events, and advisories from OSCA.
                    </Paragraph>
                </div>
            </section>

            {/* Filters */}
            <section style={{ padding: '32px 24px 0', background: '#f9fafb' }}>
                <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                    <Row gutter={[16, 16]} align="middle">
                        <Col xs={24} sm={12} md={8}>
                            <Input
                                prefix={<SearchOutlined style={{ color: '#9ca3af' }} />}
                                placeholder="Search announcements..."
                                size="large"
                                allowClear
                                onChange={(e) => { setSearch(e.target.value); setCurrentPage(1); }}
                                style={{ borderRadius: 8 }}
                            />
                        </Col>
                        <Col xs={24} sm={12} md={4}>
                            <Select
                                value={filter}
                                onChange={(v) => { setFilter(v); setCurrentPage(1); }}
                                size="large"
                                style={{ width: '100%', borderRadius: 8 }}
                            >
                                <Option value="all">All Types</Option>
                                <Option value="event">Events</Option>
                                <Option value="notice">Notices</Option>
                                <Option value="advisory">Advisories</Option>
                                <Option value="news">News</Option>
                            </Select>
                        </Col>
                        <Col xs={24} md={12} style={{ textAlign: 'right' }}>
                            <Text type="secondary">{filtered.length} announcements found</Text>
                        </Col>
                    </Row>
                </div>
            </section>

            {/* List */}
            <section style={{ padding: '32px 24px 80px', background: '#f9fafb' }}>
                <div style={{ maxWidth: 1200, margin: '0 auto' }}>
                    {loading ? (
                        <div style={{ textAlign: 'center', padding: 80 }}><Spin size="large" /></div>
                    ) : paginated.length === 0 ? (
                        <Empty description="No announcements found" />
                    ) : (
                        <>
                            <Row gutter={[24, 24]}>
                                {paginated.map((item) => {
                                    const typeStyle = typeColors[item.type] || typeColors.news;
                                    return (
                                        <Col xs={24} md={8} key={item.id}>
                                            <Card
                                                hoverable
                                                style={{ height: '100%', borderRadius: 12, border: '1px solid #e5e7eb' }}
                                                bodyStyle={{ padding: 24 }}
                                            >
                                                <div style={{ display: 'flex', alignItems: 'center', gap: 8, marginBottom: 12 }}>
                                                    <Tag
                                                        style={{
                                                            background: typeStyle.bg,
                                                            color: typeStyle.color,
                                                            border: 'none',
                                                            textTransform: 'capitalize',
                                                            fontWeight: 500,
                                                        }}
                                                    >
                                                        {item.type}
                                                    </Tag>
                                                    <Text type="secondary" style={{ fontSize: 12 }}>
                                                        <CalendarOutlined /> {dayjs(item.date).format('MMM D, YYYY')}
                                                    </Text>
                                                </div>
                                                <Title level={5} style={{ marginBottom: 8 }}>{item.title}</Title>
                                                <Paragraph
                                                    style={{ color: '#6b7280', marginBottom: 0 }}
                                                    ellipsis={{ rows: 3 }}
                                                >
                                                    {item.content}
                                                </Paragraph>
                                            </Card>
                                        </Col>
                                    );
                                })}
                            </Row>
                            {filtered.length > pageSize && (
                                <div style={{ textAlign: 'center', marginTop: 40 }}>
                                    <Pagination
                                        current={currentPage}
                                        total={filtered.length}
                                        pageSize={pageSize}
                                        onChange={setCurrentPage}
                                        showSizeChanger={false}
                                    />
                                </div>
                            )}
                        </>
                    )}
                </div>
            </section>
        </div>
    );
};

export default News;
