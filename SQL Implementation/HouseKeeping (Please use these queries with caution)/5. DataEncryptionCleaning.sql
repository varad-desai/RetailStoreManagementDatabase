/*
Cleaning of Encryption Certificate, Symmetric key and Master key

Please follow the sequence while execution.
*/

-- 1. Select Database
USE RetailStoreManagement_Team10;

-- 2. 
CLOSE SYMMETRIC KEY rsm_symmetric_key;

-- 3. 
DROP SYMMETRIC KEY rsm_symmetric_key;

-- 4. 
DROP CERTIFICATE rsm_certificate;

-- 5. 
DROP MASTER KEY;