/*
Create Master key, Certificate and Symmetric key for data encryption 

Please follow the sequence while execution
*/

-- Select Database
USE RetailStoreManagement_Team10;

-- 1. Create DMK(Master Key)
CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'P@ssw0rd';

-- 2. Create certificate to protect symmetric key
CREATE CERTIFICATE rsm_certificate
WITH SUBJECT = 'RetailStoreManagement Certificate',
EXPIRY_DATE = '2026-10-31';

-- 3. Create symmetric key to encrypt data
CREATE SYMMETRIC KEY rsm_symmetric_key
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE rsm_certificate;

-- 4. Open symmetric key
OPEN SYMMETRIC KEY rsm_symmetric_key
DECRYPTION BY CERTIFICATE rsm_certificate;
