-- use the database context
USE RetailStoreManagement_Team10;

-- 6. Insert rows into the customer table
-- customer(customer_id, first_name, last_name, customer_type, customer_password)
INSERT INTO dbo.[customer] VALUES (10001, 'Jerald', 'Kim', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_0')));
INSERT INTO dbo.[customer] VALUES (10002, 'Steve', 'Sanders', 'premium', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_1')));
INSERT INTO dbo.[customer] VALUES (10003, 'Dianna', 'Porter', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_2')));
INSERT INTO dbo.[customer] VALUES (10004, 'Lauren', 'Lawrence', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_3')));
INSERT INTO dbo.[customer] VALUES (10005, 'Kristen', 'Peters', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_4')));
INSERT INTO dbo.[customer] VALUES (10006, 'Vincent', 'Cross', 'premium', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_5')));
INSERT INTO dbo.[customer] VALUES (10007, 'Wendell', 'Reynolds', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_6')));
INSERT INTO dbo.[customer] VALUES (10008, 'Ebony', 'Fletcher', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_7')));
INSERT INTO dbo.[customer] VALUES (10009, 'Marcus', 'Waters', 'premium', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_8')));
INSERT INTO dbo.[customer] VALUES (10010, 'Terrell', 'Hoffman', 'regular', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'customer_9')));
