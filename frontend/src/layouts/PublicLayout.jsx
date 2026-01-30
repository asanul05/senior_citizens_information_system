import { Outlet } from 'react-router-dom';
import Navbar from '../components/public/Navbar';
import Footer from '../components/public/Footer';

const PublicLayout = () => {
    return (
        <div style={{
            minHeight: '100vh',
            display: 'flex',
            flexDirection: 'column',
            background: '#fafbfc',
        }}>
            <Navbar />
            <main style={{
                flex: 1,
                marginTop: 70, // Height of navbar
            }}>
                <Outlet />
            </main>
            <Footer />
        </div>
    );
};

export default PublicLayout;
