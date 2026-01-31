-- Cleanup SQL for Railway database
-- Delete problematic applications that have NULL applicant_data
-- These applications stored payload in notes field instead of applicant_data

-- First, let's see which ones we're deleting (run this SELECT first to verify)
-- SELECT id, application_number, status, applicant_data, notes FROM applications WHERE applicant_data IS NULL;

-- Delete the applications with NULL applicant_data (these are the broken ones)
DELETE FROM applications WHERE applicant_data IS NULL;

-- Alternative: Delete by specific application numbers if you want to be more specific
-- DELETE FROM applications WHERE application_number IN ('APP-2025-000039', 'APP-2025-000037');

-- After running this, you should be able to create new applications without issues
