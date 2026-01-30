<?php

use Illuminate\Foundation\Application;
use Illuminate\Http\Request;

// Handle CORS preflight requests BEFORE Laravel boots
$origin = $_SERVER['HTTP_ORIGIN'] ?? '*';
$allowedOrigins = ['http://localhost:5173', 'http://localhost:3000', 'http://127.0.0.1:5173'];

// Allow vercel.app domains dynamically
if (strpos($origin, 'vercel.app') !== false) {
    $allowedOrigins[] = $origin;
}

if (in_array($origin, $allowedOrigins) || $origin === '*') {
    header("Access-Control-Allow-Origin: $origin");
} else {
    header("Access-Control-Allow-Origin: *");
}

header("Access-Control-Allow-Methods: GET, POST, PUT, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With, Accept, Origin");
header("Access-Control-Allow-Credentials: true");
header("Access-Control-Max-Age: 86400");

// Handle preflight OPTIONS request immediately
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit();
}

define('LARAVEL_START', microtime(true));

// Determine if the application is in maintenance mode...
if (file_exists($maintenance = __DIR__.'/../storage/framework/maintenance.php')) {
    require $maintenance;
}

// Register the Composer autoloader...
require __DIR__.'/../vendor/autoload.php';

// Bootstrap Laravel and handle the request...
/** @var Application $app */
$app = require_once __DIR__.'/../bootstrap/app.php';

$app->handleRequest(Request::capture());
