-- =====================================
-- DELETE SENIOR CITIZENS AND RELATED DATA
-- Run this in DBeaver on Railway MySQL
-- =====================================
-- This script deletes senior_citizens with:
--   - id < 38
--   - id = 41
--   - id = 43
-- And all related records in child tables

-- Disable foreign key checks temporarily
SET FOREIGN_KEY_CHECKS = 0;

-- Delete from id_printing_queue
DELETE FROM id_printing_queue 
WHERE senior_id < 38 OR senior_id IN (41, 43);

-- Delete from complaints
DELETE FROM complaints 
WHERE complainant_id < 38 OR complainant_id IN (41, 43);

-- Delete from benefit_claims
DELETE FROM benefit_claims 
WHERE senior_id < 38 OR senior_id IN (41, 43);

-- Delete from senior_accounts
DELETE FROM senior_accounts 
WHERE senior_id < 38 OR senior_id IN (41, 43);

-- Delete from applications
DELETE FROM applications 
WHERE senior_id < 38 OR senior_id IN (41, 43);

-- Delete the senior citizens
DELETE FROM senior_citizens 
WHERE id < 38 OR id IN (41, 43);

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Verify
SELECT COUNT(*) as remaining_seniors FROM senior_citizens;
