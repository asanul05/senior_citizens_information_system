import { useState } from 'react';
import { Outlet, useNavigate, useLocation } from 'react-router-dom';
import { Layout, Menu, Button, Avatar, Dropdown, Typography, Space } from 'antd';
import {
    DashboardOutlined,
    UserOutlined,
    TeamOutlined,
    FileTextOutlined,
    PrinterOutlined,
    NotificationOutlined,
    ExclamationCircleOutlined,
    FolderOutlined,
    HeatMapOutlined,
    SettingOutlined,
    LogoutOutlined,
    MenuFoldOutlined,
    MenuUnfoldOutlined,
    GiftOutlined,
} from '@ant-design/icons';
import { useAuth } from '../contexts/AuthContext';

const { Header, Sider, Content } = Layout;
const { Text } = Typography;

const AdminLayout = () => {
    const [collapsed, setCollapsed] = useState(false);
    const { user, logout, isMainAdmin } = useAuth();
    const navigate = useNavigate();
    const location = useLocation();

    const handleLogout = async () => {
        await logout();
        navigate('/login');
    };

    // Get user role
    const userRole = user?.role_id || 3;
    const isFO = userRole === 2;

    // Build menu items based on role
    const menuItems = [
        {
            key: '/admin/dashboard',
            icon: <DashboardOutlined />,
            label: 'Dashboard',
        },
        {
            key: '/admin/registration',
            icon: <FileTextOutlined />,
            label: 'Registration',
            children: [
                { key: '/admin/registration/new', label: 'New ID' },
                // Hide Revalidation and Lost/Damaged from FO
                ...(!isFO ? [
                    { key: '/admin/registration/revalidation', label: 'Revalidation' },
                    { key: '/admin/registration/lost-damaged', label: 'Lost/Damaged' },
                ] : []),
                { key: '/admin/registration/list', label: 'Application List' },
            ],
        },
        {
            key: '/admin/pre-registrations',
            icon: <FileTextOutlined />,
            label: 'Online Applications',
        },
        {
            key: '/admin/seniors',
            icon: <TeamOutlined />,
            label: 'Senior Citizens',
        },
        // ID Printing only for Main Admin
        ...(!isFO ? [{
            key: '/admin/id-printing',
            icon: <PrinterOutlined />,
            label: 'ID Printing',
        }] : []),
        {
            key: '/admin/benefits',
            icon: <GiftOutlined />,
            label: 'Benefits',
        },
        {
            key: '/admin/complaints',
            icon: <ExclamationCircleOutlined />,
            label: 'Complaints',
        },
        {
            key: '/admin/announcements',
            icon: <NotificationOutlined />,
            label: 'Announcements',
        },
        // Archives and Heat Map - View only for FO
        {
            key: '/admin/archives',
            icon: <FolderOutlined />,
            label: 'Archives',
        },
        {
            key: '/admin/heatmap',
            icon: <HeatMapOutlined />,
            label: 'Heat Map',
        },
        // Accounts only for Main Admin
        ...(isMainAdmin() ? [{
            key: '/admin/accounts',
            icon: <SettingOutlined />,
            label: 'Accounts',
        }] : []),
    ];

    const userMenuItems = [
        {
            key: 'profile',
            icon: <UserOutlined />,
            label: 'Profile',
        },
        {
            type: 'divider',
        },
        {
            key: 'logout',
            icon: <LogoutOutlined />,
            label: 'Logout',
            danger: true,
            onClick: handleLogout,
        },
    ];

    const getRoleBadgeColor = (roleId) => {
        switch (roleId) {
            case 1: return '#52c41a'; // Main Admin - Green
            case 2: return '#1890ff'; // Branch Admin - Blue
            case 3: return '#faad14'; // Barangay Admin - Gold
            default: return '#8c8c8c';
        }
    };

    return (
        <Layout style={{ minHeight: '100vh' }}>
            <Sider
                trigger={null}
                collapsible
                collapsed={collapsed}
                width={260}
                style={{
                    background: 'linear-gradient(180deg, #312e81 0%, #4338ca 100%)',
                    boxShadow: '2px 0 8px rgba(0, 0, 0, 0.15)',
                }}
            >
                {/* Logo */}
                <div style={{
                    height: 64,
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center',
                    gap: 10,
                    background: 'rgba(255, 255, 255, 0.05)',
                    borderBottom: '1px solid rgba(255, 255, 255, 0.1)',
                }}>
                    <img
                        src="/osca_logo.jpg"
                        alt="OSCA Logo"
                        style={{ width: 36, height: 36, borderRadius: 8, objectFit: 'cover' }}
                    />
                    {!collapsed && (
                        <Text strong style={{ color: '#fff', fontSize: 18 }}>
                            SCIS Admin
                        </Text>
                    )}
                </div>

                {/* Navigation Menu */}
                <Menu
                    theme="dark"
                    mode="inline"
                    selectedKeys={[location.pathname]}
                    defaultOpenKeys={['/registration']}
                    items={menuItems}
                    onClick={({ key }) => navigate(key)}
                    style={{
                        background: 'transparent',
                        borderRight: 0,
                        marginTop: 8,
                    }}
                />
            </Sider>

            <Layout>
                {/* Header */}
                <Header style={{
                    padding: '0 24px',
                    background: '#fff',
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'space-between',
                    boxShadow: '0 1px 4px rgba(0, 0, 0, 0.08)',
                    position: 'sticky',
                    top: 0,
                    zIndex: 100,
                }}>
                    <Button
                        type="text"
                        icon={collapsed ? <MenuUnfoldOutlined /> : <MenuFoldOutlined />}
                        onClick={() => setCollapsed(!collapsed)}
                        style={{ fontSize: 18 }}
                    />

                    <Dropdown menu={{ items: userMenuItems }} placement="bottomRight">
                        <Space style={{ cursor: 'pointer', padding: '4px 8px', borderRadius: 8, transition: 'background 0.2s' }}>
                            <Avatar
                                style={{
                                    background: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
                                }}
                                icon={<UserOutlined />}
                            />
                            <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-start', lineHeight: 1.3 }}>
                                <Text strong style={{ fontSize: 13 }}>{user?.full_name || 'User'}</Text>
                                <Text type="secondary" style={{ fontSize: 11 }}>{user?.role_name || 'Admin'}</Text>
                            </div>
                        </Space>
                    </Dropdown>
                </Header>

                {/* Main Content */}
                <Content style={{
                    margin: 24,
                    padding: 24,
                    background: '#fff',
                    borderRadius: 8,
                    minHeight: 'calc(100vh - 112px)',
                }}>
                    <Outlet />
                </Content>
            </Layout>
        </Layout >
    );
};

export default AdminLayout;
