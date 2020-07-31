-- use the database context
USE RetailStoreManagement_Team10;

-- 8. Insert into deliver_personnel table
-- delivery_personnel(delivery_personnel_id, availability, first_name, last_name, delivery_personnel_password)

INSERT INTO dbo.[delivery_personnel] VALUES (1, 1, 'Nathaniel', 'Ball', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel0')));
INSERT INTO dbo.[delivery_personnel] VALUES (2, 1, 'Lynn', 'Lynch', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel1')));
INSERT INTO dbo.[delivery_personnel] VALUES (3, 1, 'Natalie', 'Reid', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel2')));
INSERT INTO dbo.[delivery_personnel] VALUES (4, 1, 'Jimmie', 'Simpson', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel3')));
INSERT INTO dbo.[delivery_personnel] VALUES (5, 1, 'Whitney', 'Potter', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel4')));
INSERT INTO dbo.[delivery_personnel] VALUES (6, 1, 'Irene', 'Mckinney', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel5')));
INSERT INTO dbo.[delivery_personnel] VALUES (7, 1, 'Marsha', 'Hampton', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel6')));
INSERT INTO dbo.[delivery_personnel] VALUES (8, 1, 'Elmer', 'Marsh', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel7')));
INSERT INTO dbo.[delivery_personnel] VALUES (9, 1, 'Rene', 'Knight', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel8')));
INSERT INTO dbo.[delivery_personnel] VALUES (10, 1, 'David', 'Stevens', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel9')));
INSERT INTO dbo.[delivery_personnel] VALUES (11, 1, 'Test', 'Stevens', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel10')));
INSERT INTO dbo.[delivery_personnel] VALUES (12, 1, 'Testing', 'Stevens', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'delivery_personnel11')));
