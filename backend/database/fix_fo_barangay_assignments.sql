-- =====================================================
-- FIX FO AND BARANGAY ASSIGNMENTS
-- Run this on Railway database to correct mappings
-- =====================================================
-- Created: 2026-02-01
-- Purpose: Fix branch_barangays and admin_users assignments
-- =====================================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

-- =====================================================
-- STEP 0: Add missing barangays and rename existing ones
-- =====================================================

-- Add truly missing barangays (not alternate names)
INSERT INTO `barangays` (`id`, `code`, `name`, `district`, `city`, `created_at`, `updated_at`) VALUES
(96, 'ZC-096', 'Kasanyangan', 'District 2', 'Zamboanga City', NOW(), NOW()),
(97, 'ZC-097', 'Camino Nuevo', 'District 2', 'Zamboanga City', NOW(), NOW()),
(98, 'ZC-098', 'Pasobolong', 'District 2', 'Zamboanga City', NOW(), NOW());

-- Rename existing barangays to include alternate names
UPDATE `barangays` SET `name` = 'Calarian_Southcom' WHERE `id` = 14;
UPDATE `barangays` SET `name` = 'Canelar_Camins' WHERE `id` = 16;
UPDATE `barangays` SET `name` = 'San Jose Gusu_Suterville' WHERE `id` = 63;
UPDATE `barangays` SET `name` = 'Talabaan_Gapuh' WHERE `id` = 75;

-- =====================================================
-- STEP 1: Update branches table with correct info
-- =====================================================
UPDATE `branches` SET 
    `name` = 'Field Office 1',
    `address` = 'Ayala Gym, Zamboanga City',
    `contact_number` = '983-0391'
WHERE `id` = 2;

UPDATE `branches` SET 
    `name` = 'Field Office 2',
    `address` = 'Sta. Barbara beside OSCA Office, Zamboanga City',
    `contact_number` = '991-4514'
WHERE `id` = 3;

UPDATE `branches` SET 
    `name` = 'Field Office 3',
    `address` = 'Sta. Maria Barangay New Hall, Zamboanga City',
    `contact_number` = '985-1130'
WHERE `id` = 4;

UPDATE `branches` SET 
    `name` = 'Field Office 4',
    `address` = 'IBT Divisoria, Zamboanga City',
    `contact_number` = '990-1455'
WHERE `id` = 5;

UPDATE `branches` SET 
    `name` = 'Field Office 5',
    `address` = 'Culianan Compound, Zamboanga City',
    `contact_number` = '955-1268'
WHERE `id` = 6;

UPDATE `branches` SET 
    `name` = 'Field Office 6',
    `address` = 'Curuan, Zamboanga City',
    `contact_number` = '926-6759'
WHERE `id` = 7;

UPDATE `branches` SET 
    `name` = 'Field Office 7',
    `address` = 'Vitali (Technical Vocational School), Zamboanga City',
    `contact_number` = '926-6852'
WHERE `id` = 8;

-- =====================================================
-- STEP 2: Clear existing branch_barangays mappings
-- =====================================================
DELETE FROM `branch_barangays`;

-- =====================================================
-- STEP 3: Insert correct FO-Barangay assignments
-- Uses fixed date '2026-02-01' instead of CURDATE() for Railway compatibility
-- =====================================================

-- FO1 (branch_id=2): Ayala, Baluno, La Paz, Labuan, Cawit, Limpapa, Maasin, 
-- Pamucutan, Patalon, Recodo, Sinubung, Talisayan, Sinunuc, Tulungatung
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(2, 2, '2026-02-01', 1),   -- Ayala
(2, 4, '2026-02-01', 1),   -- Baluno
(2, 27, '2026-02-01', 1),  -- La Paz
(2, 28, '2026-02-01', 1),  -- Labuan
(2, 18, '2026-02-01', 1),  -- Cawit
(2, 37, '2026-02-01', 1),  -- Limpapa
(2, 42, '2026-02-01', 1),  -- Maasin
(2, 51, '2026-02-01', 1),  -- Pamucutan
(2, 56, '2026-02-01', 1),  -- Patalon
(2, 59, '2026-02-01', 1),  -- Recodo
(2, 71, '2026-02-01', 1),  -- Sinubung
(2, 76, '2026-02-01', 1),  -- Talisayan
(2, 72, '2026-02-01', 1),  -- Sinunuc
(2, 85, '2026-02-01', 1);  -- Tulungatung

-- FO2 (branch_id=3): Baliwasan, Campo Islam, Kasanyangan, Mariki, Rio Hondo, 
-- San Jose Cawa-cawa, San Jose Gusu_Suterville, Sta. Barbara, Sta. Catalina, 
-- Sto. Nino, Zone I-IV
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(3, 3, '2026-02-01', 1),   -- Baliwasan
(3, 15, '2026-02-01', 1),  -- Campo Islam
(3, 96, '2026-02-01', 1),  -- Kasanyangan (NEW)
(3, 48, '2026-02-01', 1),  -- Mariki
(3, 60, '2026-02-01', 1),  -- Rio Hondo
(3, 62, '2026-02-01', 1),  -- San Jose Cawa-cawa
(3, 63, '2026-02-01', 1),  -- San Jose Gusu_Suterville (RENAMED)
(3, 66, '2026-02-01', 1),  -- Santa Barbara
(3, 67, '2026-02-01', 1),  -- Santa Catalina
(3, 69, '2026-02-01', 1),  -- Santo Nino
(3, 92, '2026-02-01', 1),  -- Zone I
(3, 93, '2026-02-01', 1),  -- Zone II
(3, 94, '2026-02-01', 1),  -- Zone III
(3, 95, '2026-02-01', 1);  -- Zone IV

-- FO3 (branch_id=4): Cabatangan, Calarian_Southcom, Camino Nuevo, Canelar_Camins,
-- Capisan, Dulian (UP), Pasonanca, Malagutay, Sta. Maria, San Roque, Tumaga
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(4, 11, '2026-02-01', 1),  -- Cabatangan
(4, 14, '2026-02-01', 1),  -- Calarian_Southcom (RENAMED)
(4, 97, '2026-02-01', 1),  -- Camino Nuevo (NEW)
(4, 16, '2026-02-01', 1),  -- Canelar_Camins (RENAMED)
(4, 17, '2026-02-01', 1),  -- Capisan
(4, 24, '2026-02-01', 1),  -- Dulian (Lower Pasonanca / UP)
(4, 55, '2026-02-01', 1),  -- Pasonanca
(4, 43, '2026-02-01', 1),  -- Malagutay
(4, 68, '2026-02-01', 1),  -- Santa Maria
(4, 64, '2026-02-01', 1),  -- San Roque
(4, 86, '2026-02-01', 1);  -- Tumaga

-- FO4 (branch_id=5): Arena Blanco, Boalan, Divisoria, Guiwan, Lumayang, 
-- Lumbangan, Lunzuran, Mampang, Putik, Talon-Talon, Tetuan, Tigtabon, Pangapuyan
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(5, 1, '2026-02-01', 1),   -- Arena Blanco
(5, 5, '2026-02-01', 1),   -- Boalan
(5, 22, '2026-02-01', 1),  -- Divisoria
(5, 26, '2026-02-01', 1),  -- Guiwan
(5, 39, '2026-02-01', 1),  -- Lumayang
(5, 40, '2026-02-01', 1),  -- Lumbangan
(5, 41, '2026-02-01', 1),  -- Lunzuran
(5, 44, '2026-02-01', 1),  -- Mampang
(5, 57, '2026-02-01', 1),  -- Putik
(5, 77, '2026-02-01', 1),  -- Talon-talon
(5, 79, '2026-02-01', 1),  -- Tetuan
(5, 82, '2026-02-01', 1),  -- Tigtabon
(5, 52, '2026-02-01', 1);  -- Pangapuyan

-- FO5 (branch_id=6): Bolong, Bunguiao, Culianan, Dulian (UB), Lamisahan, 
-- Landang Laum, Landang Gua, Manalipa, Manicahan, Sangali, Victoria, 
-- Taluksangay, Tumalutab, Guisao, Pasilmanta, Cabaluay, Cacao, Mercedes, 
-- Lanzones, Lapakan, Pasobolong, Salaan, Talabaan_Gapuh, Tolosa, Zambowood
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(6, 6, '2026-02-01', 1),   -- Bolong
(6, 8, '2026-02-01', 1),   -- Bunguiao
(6, 19, '2026-02-01', 1),  -- Culianan
(6, 23, '2026-02-01', 1),  -- Dulian (Upper Bunguiao)
(6, 29, '2026-02-01', 1),  -- Lamisahan
(6, 31, '2026-02-01', 1),  -- Landang Laum
(6, 30, '2026-02-01', 1),  -- Landang Gua
(6, 45, '2026-02-01', 1),  -- Manalipa
(6, 47, '2026-02-01', 1),  -- Manicahan
(6, 65, '2026-02-01', 1),  -- Sangali
(6, 89, '2026-02-01', 1),  -- Victoria
(6, 78, '2026-02-01', 1),  -- Taluksangay
(6, 87, '2026-02-01', 1),  -- Tumalutab
(6, 25, '2026-02-01', 1),  -- Guisao
(6, 54, '2026-02-01', 1),  -- Pasilmanta
(6, 10, '2026-02-01', 1),  -- Cabaluay
(6, 12, '2026-02-01', 1),  -- Cacao
(6, 49, '2026-02-01', 1),  -- Mercedes
(6, 32, '2026-02-01', 1),  -- Lanzones
(6, 33, '2026-02-01', 1),  -- Lapakan
(6, 98, '2026-02-01', 1),  -- Pasobolong (NEW)
(6, 61, '2026-02-01', 1),  -- Salaan
(6, 75, '2026-02-01', 1),  -- Talabaan_Gapuh (RENAMED)
(6, 83, '2026-02-01', 1),  -- Tolosa
(6, 91, '2026-02-01', 1);  -- Zambowood

-- FO6 (branch_id=7): Buenavista, Calabasa, Curuan, Dita, Latuan, 
-- Lubigan, Muti, Quiniput, Panubigan
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(7, 7, '2026-02-01', 1),   -- Buenavista
(7, 13, '2026-02-01', 1),  -- Calabasa
(7, 20, '2026-02-01', 1),  -- Curuan
(7, 21, '2026-02-01', 1),  -- Dita
(7, 34, '2026-02-01', 1),  -- Latuan
(7, 38, '2026-02-01', 1),  -- Lubigan
(7, 50, '2026-02-01', 1),  -- Muti
(7, 58, '2026-02-01', 1),  -- Quiniput
(7, 53, '2026-02-01', 1);  -- Panubigan

-- FO7 (branch_id=8): Licomo, Limaong, Mangusu, Sibulao, Tagasilay, 
-- Taguiti, Tictapul, Tigbalabag, Tumitus, Vitali
INSERT INTO `branch_barangays` (`branch_id`, `barangay_id`, `assigned_date`, `is_active`) VALUES
(8, 35, '2026-02-01', 1),  -- Licomo
(8, 36, '2026-02-01', 1),  -- Limaong
(8, 46, '2026-02-01', 1),  -- Mangusu
(8, 70, '2026-02-01', 1),  -- Sibulao
(8, 73, '2026-02-01', 1),  -- Tagasilay
(8, 74, '2026-02-01', 1),  -- Taguiti
(8, 80, '2026-02-01', 1),  -- Tictapul
(8, 81, '2026-02-01', 1),  -- Tigbalabag
(8, 88, '2026-02-01', 1),  -- Tumitus
(8, 90, '2026-02-01', 1);  -- Vitali

-- =====================================================
-- STEP 4: Fix/Create FO Admin accounts (role_id=2)
-- Create all 7 FO admins with proper names and branch mappings
-- =====================================================

-- Update existing FO admins (id=2,3) with proper names
UPDATE `admin_users` SET 
    `first_name` = 'FO1',
    `last_name` = 'Admin',
    `username` = 'fo1admin',
    `employee_id` = 'OSCA-FO1-001',
    `email` = 'fo1@osca.gov.ph',
    `position` = 'Field Office 1 Manager',
    `branch_id` = 2
WHERE `id` = 2;

UPDATE `admin_users` SET 
    `first_name` = 'FO2',
    `last_name` = 'Admin',
    `username` = 'fo2admin',
    `employee_id` = 'OSCA-FO2-001',
    `email` = 'fo2@osca.gov.ph',
    `position` = 'Field Office 2 Manager',
    `branch_id` = 3
WHERE `id` = 3;

-- Insert FO3-FO7 admins (IDs 8-12)
-- Password hash is for '123' using bcrypt
INSERT INTO `admin_users` (`id`, `employee_id`, `username`, `password_hash`, `first_name`, `middle_name`, `last_name`, `extension`, `position`, `gender_id`, `mobile_number`, `email`, `role_id`, `branch_id`, `barangay_id`, `is_active`, `created_at`, `updated_at`) VALUES
(8, 'OSCA-FO3-001', 'fo3admin', '$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK', 'FO3', NULL, 'Admin', NULL, 'Field Office 3 Manager', 1, '09171234573', 'fo3@osca.gov.ph', 2, 4, NULL, 1, NOW(), NOW()),
(9, 'OSCA-FO4-001', 'fo4admin', '$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK', 'FO4', NULL, 'Admin', NULL, 'Field Office 4 Manager', 1, '09171234574', 'fo4@osca.gov.ph', 2, 5, NULL, 1, NOW(), NOW()),
(10, 'OSCA-FO5-001', 'fo5admin', '$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK', 'FO5', NULL, 'Admin', NULL, 'Field Office 5 Manager', 1, '09171234575', 'fo5@osca.gov.ph', 2, 6, NULL, 1, NOW(), NOW()),
(11, 'OSCA-FO6-001', 'fo6admin', '$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK', 'FO6', NULL, 'Admin', NULL, 'Field Office 6 Manager', 1, '09171234576', 'fo6@osca.gov.ph', 2, 7, NULL, 1, NOW(), NOW()),
(12, 'OSCA-FO7-001', 'fo7admin', '$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK', 'FO7', NULL, 'Admin', NULL, 'Field Office 7 Manager', 1, '09171234577', 'fo7@osca.gov.ph', 2, 8, NULL, 1, NOW(), NOW())
ON DUPLICATE KEY UPDATE
    `first_name` = VALUES(`first_name`),
    `last_name` = VALUES(`last_name`),
    `username` = VALUES(`username`),
    `branch_id` = VALUES(`branch_id`),
    `position` = VALUES(`position`);

-- =====================================================
-- STEP 5: Fix Barangay Admin accounts (role_id=3)
-- Fix both branch_id AND barangay_id for correct mapping
-- =====================================================

-- tetuan.admin (id=4): 
--   barangay_id should be 79 (Tetuan, NOT 1 Arena Blanco)
--   branch_id should be 5 (FO4 - Tetuan belongs to FO4)
UPDATE `admin_users` SET 
    `barangay_id` = 79,
    `branch_id` = 5,
    `first_name` = 'Tetuan',
    `last_name` = 'Admin',
    `username` = 'tetuan.admin',
    `position` = 'Barangay Tetuan Coordinator'
WHERE `id` = 4;

-- santamaria.admin (id=5): 
--   barangay_id should be 68 (Santa Maria)
--   branch_id should be 4 (FO3 - Sta Maria belongs to FO3)
UPDATE `admin_users` SET 
    `barangay_id` = 68,
    `branch_id` = 4,
    `first_name` = 'Santa Maria',
    `last_name` = 'Admin',
    `username` = 'santamaria.admin',
    `position` = 'Barangay Santa Maria Coordinator'
WHERE `id` = 5;

-- guiwan.admin (id=6): 
--   barangay_id should be 26 (Guiwan)
--   branch_id should be 5 (FO4 - Guiwan belongs to FO4)
UPDATE `admin_users` SET 
    `barangay_id` = 26,
    `branch_id` = 5,
    `first_name` = 'Guiwan',
    `last_name` = 'Admin',
    `username` = 'guiwan.admin',
    `position` = 'Barangay Guiwan Coordinator'
WHERE `id` = 6;

COMMIT;

-- =====================================================
-- VERIFICATION QUERIES (Run after migration)
-- =====================================================

-- Check all FO admins
-- SELECT id, username, first_name, last_name, branch_id, role_id 
-- FROM admin_users WHERE role_id = 2;

-- Check all Barangay admins
-- SELECT au.id, au.username, au.first_name, b.name as barangay, br.name as branch
-- FROM admin_users au
-- LEFT JOIN barangays b ON au.barangay_id = b.id
-- LEFT JOIN branches br ON au.branch_id = br.id
-- WHERE au.role_id = 3;

-- Check FO barangay counts
-- SELECT br.name, COUNT(*) as barangay_count 
-- FROM branches br 
-- LEFT JOIN branch_barangays bb ON br.id = bb.branch_id 
-- WHERE br.id > 1
-- GROUP BY br.id, br.name;

-- =====================================================
-- ADMIN ACCOUNT SUMMARY (after running this script)
-- =====================================================
-- 
-- FO ADMINS (role_id=2):
-- | ID | Username  | Branch    | Password |
-- |----|-----------|-----------|----------|
-- | 2  | fo1admin  | FO1 (id=2)| 123      |
-- | 3  | fo2admin  | FO2 (id=3)| 123      |
-- | 8  | fo3admin  | FO3 (id=4)| 123      |
-- | 9  | fo4admin  | FO4 (id=5)| 123      |
-- | 10 | fo5admin  | FO5 (id=6)| 123      |
-- | 11 | fo6admin  | FO6 (id=7)| 123      |
-- | 12 | fo7admin  | FO7 (id=8)| 123      |
--
-- BARANGAY ADMINS (role_id=3):
-- | ID | Username         | Barangay     | FO  |
-- |----|------------------|--------------|-----|
-- | 4  | tetuan.admin     | Tetuan       | FO4 |
-- | 5  | santamaria.admin | Santa Maria  | FO3 |
-- | 6  | guiwan.admin     | Guiwan       | FO4 |

