-- =====================================================
-- UPDATE FO ADMIN PASSWORDS TO '123'
-- Run this after the main migration to update passwords
-- =====================================================
-- Created: 2026-02-01
-- Password hash: $2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK
-- =====================================================

-- Update all FO admin passwords to '123'
UPDATE `admin_users` SET 
    `password_hash` = '$2y$10$oZGAfalfM5Cm1vSXxtPTjOd0h3pe7eXBXsxJonghoB3gA.O3Os6oK'
WHERE `id` IN (2, 3, 8, 9, 10, 11, 12);

-- Verification query (uncomment to check)
-- SELECT id, username, first_name, last_name, branch_id 
-- FROM admin_users 
-- WHERE role_id = 2;

-- =====================================================
-- SUMMARY
-- =====================================================
-- After running this script:
-- | Username  | Password |
-- |-----------|----------|
-- | fo1admin  | 123      |
-- | fo2admin  | 123      |
-- | fo3admin  | 123      |
-- | fo4admin  | 123      |
-- | fo5admin  | 123      |
-- | fo6admin  | 123      |
-- | fo7admin  | 123      |
