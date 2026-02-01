# Senior Citizens Information System (SCIS)
## Zamboanga City OSCA

A comprehensive digital platform for the Office of Senior Citizens Affairs (OSCA) to manage senior citizen registration, benefits tracking, and ID printing.

## 🚀 Features

- **Registration Module** - Digital registration with duplicate detection
- **ID Printing** - Queue management and batch printing
- **Benefits Tracking** - Octogenarian, Nonagenarian, Centenarian benefits
- **Announcements** - News and events management
- **Senior Portal** - Online application for seniors
- **Role-Based Access** - Main Admin, Field Office, Barangay, Senior

## 🛠 Tech Stack

| Layer | Technology |
|-------|------------|
| Frontend | React 19 + Vite + Ant Design |
| Backend | Laravel 12 |
| Database | MySQL/MariaDB |
| Auth | Laravel Sanctum |

## 📦 Installation

### Prerequisites
- PHP 8.2+
- Composer
- Node.js 18+
- MySQL 8.0+ / MariaDB 10.6+

### Backend Setup
```bash
cd backend
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
php artisan serve
```

### Frontend Setup
```bash
cd frontend
npm install
npm run dev
```

## 📁 Project Structure

```
scis-v2/
├── backend/          # Laravel API
│   ├── app/
│   ├── database/
│   └── routes/
├── frontend/         # React SPA
│   ├── src/
│   │   ├── pages/
│   │   ├── components/
│   │   └── services/
│   └── public/

```

## 📄 License

This project is for educational purposes - Software Engineering Course.

## 👥 Authors

- OSCA Zamboanga City Project Team
