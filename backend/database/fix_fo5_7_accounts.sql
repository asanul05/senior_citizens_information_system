-- =====================================================
-- FIX FO5-7 ADMIN ACCOUNTS
-- Run this on Railway database to fix FO5-7 filtering
-- =====================================================
-- Created: 2026-02-01
-- Problem: FO5-7 have role_id=3 (Barangay) and barangay_id set
--          They should have role_id=2 (Branch) and barangay_id=NULL
-- =====================================================

-- Fix FO5 admin (id=10)
-- Currently: role_id=3, barangay_id=1 (Arena Blanco)
-- Should be: role_id=2, barangay_id=NULL
UPDATE `admin_users` SET 
    `role_id` = 2,
    `barangay_id` = NULL
WHERE `id` = 10;

-- Fix FO6 admin (id=11)
-- Currently: role_id=3, barangay_id=2 (Ayala)
-- Should be: role_id=2, barangay_id=NULL
UPDATE `admin_users` SET 
    `role_id` = 2,
    `barangay_id` = NULL
WHERE `id` = 11;

-- Fix FO7 admin (id=12)
-- Currently: role_id=3, barangay_id=3 (Baliwasan)
-- Should be: role_id=2, barangay_id=NULL
UPDATE `admin_users` SET 
    `role_id` = 2,
    `barangay_id` = NULL
WHERE `id` = 12;

-- Verification query (uncomment to check)
-- SELECT id, username, first_name, role_id, branch_id, barangay_id 
-- FROM admin_users 
-- WHERE id IN (10, 11, 12);

-- =====================================================
-- EXPECTED RESULT AFTER RUNNING
-- =====================================================
-- | id | username  | role_id | branch_id | barangay_id |
-- |----|-----------|---------|-----------|-------------|
-- | 10 | fo5admin  | 2       | 6         | NULL        |
-- | 11 | fo6admin  | 2       | 7         | NULL        |
-- | 12 | fo7admin  | 2       | 8         | NULL        |
