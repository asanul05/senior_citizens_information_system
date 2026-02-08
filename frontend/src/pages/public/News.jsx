import { useState, useEffect } from 'react';
import {
  Row,
  Col,
  Card,
  Typography,
  Select,
  Input,
  Spin,
  Empty,
  Tag,
  Pagination,
} from 'antd';
import { SearchOutlined, CalendarOutlined } from '@ant-design/icons';
import dayjs from 'dayjs';
import { publicApi } from '../../services/api';

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
    const fetchAnnouncements = async () => {
      setLoading(true);
      try {
        const response = await publicApi.getAnnouncements();
        const apiData = response.data?.data || [];

        const mapped = apiData.map((item) => ({
          id: item.id,
          title: item.title,
          content: item.content,
          type: item.type || 'news',
          date: item.date || item.published_at || item.created_at,
        }));

        setAnnouncements(mapped);
      } catch (error) {
        // Fallback: keep list empty but log error
        // eslint-disable-next-line no-console
        console.error('Failed to load announcements', error);
      } finally {
        setLoading(false);
      }
    };

    fetchAnnouncements();
  }, []);

  const typeColors = {
    event: { color: '#4338ca', bg: '#eef2ff' },
    notice: { color: '#059669', bg: '#ecfdf5' },
    advisory: { color: '#dc2626', bg: '#fef2f2' },
    news: { color: '#0891b2', bg: '#ecfeff' },
  };

  const filtered = announcements
    .filter((a) => filter === 'all' || a.type === filter)
    .filter((a) => a.title.toLowerCase().includes(search.toLowerCase()));

  const paginated = filtered.slice(
    (currentPage - 1) * pageSize,
    currentPage * pageSize,
  );

  return (
    <div>
      {/* Hero */}
      <section
        style={{
          background: 'linear-gradient(135deg, #4338ca 0%, #6366f1 100%)',
          color: 'white',
          padding: '60px 24px 80px',
          textAlign: 'center',
        }}
      >
        <div style={{ maxWidth: 800, margin: '0 auto' }}>
          <Title level={1} style={{ color: 'white', marginBottom: 16 }}>
            News & Announcements
          </Title>
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
                placeholder='Search announcements...'
                size="large"
                allowClear
                onChange={(e) => {
                  setSearch(e.target.value);
                  setCurrentPage(1);
                }}
                style={{ borderRadius: 8 }}
              />
            </Col>
            <Col xs={24} sm={12} md={4}>
              <Select
                value={filter}
                onChange={(v) => {
                  setFilter(v);
                  setCurrentPage(1);
                }}
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
              <Text type="secondary">
                {filtered.length} announcements found
              </Text>
            </Col>
          </Row>
        </div>
      </section>

      {/* List */}
      <section style={{ padding: '32px 24px 80px', background: '#f9fafb' }}>
        <div style={{ maxWidth: 1200, margin: '0 auto' }}>
          {loading ? (
            <div style={{ textAlign: 'center', padding: 80 }}>
              <Spin size="large" />
            </div>
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
                        style={{
                          height: '100%',
                          borderRadius: 12,
                          border: '1px solid #e5e7eb',
                        }}
                        bodyStyle={{ padding: 24 }}
                      >
                        <div
                          style={{
                            display: 'flex',
                            alignItems: 'center',
                            gap: 8,
                            marginBottom: 12,
                          }}
                        >
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
                            <CalendarOutlined />{' '}
                            {dayjs(item.date).format('MMM D, YYYY')}
                          </Text>
                        </div>
                        <Title level={5} style={{ marginBottom: 8 }}>
                          {item.title}
                        </Title>
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
