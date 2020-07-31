-- use the database context
USE RetailStoreManagement_Team10;

-- 3. Insert rows into the employee table
-- Employee(employee id PK, branch id FK, firstname, lastname,type, employee_password)
INSERT INTO dbo.[employee] VALUES (1, 101, 'David', 'R','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_0')));
INSERT INTO dbo.[employee] VALUES (2, 101, 'Steve', 'K','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_1')));
INSERT INTO dbo.[employee] VALUES (3, 102, 'Joy', 'Brett','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_2')));
INSERT INTO dbo.[employee] VALUES (4, 102, 'Cason', 'Raleigh','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_3')));
INSERT INTO dbo.[employee] VALUES (5, 103, 'Venetia', 'Brett','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_4')));
INSERT INTO dbo.[employee] VALUES (6, 103, 'Cherice', 'Destiny','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_5')));
INSERT INTO dbo.[employee] VALUES (7, 104, 'Beulah', 'Discrol','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_6')));
INSERT INTO dbo.[employee] VALUES (8, 104, 'Katee', 'Stanford','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_7')));
INSERT INTO dbo.[employee] VALUES (9, 105, 'Sparrow', 'Gervase','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_8')));
INSERT INTO dbo.[employee] VALUES (10,105, 'Wynona', 'Vivian','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_9')));
INSERT INTO dbo.[employee] VALUES (11, 106, 'Sabella', 'Jen','Fulltime', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_10')));
INSERT INTO dbo.[employee] VALUES (12, 107, 'Alice', 'Brett','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_11')));
INSERT INTO dbo.[employee] VALUES (13, 108, 'Alexa', 'Christ','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_12')));
INSERT INTO dbo.[employee] VALUES (14, 109, 'Tatum', 'Freddy','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_13')));
INSERT INTO dbo.[employee] VALUES (15, 110, 'Renee', 'Everett','Contract', ENCRYPTBYKEY(KEY_GUID('rsm_symmetric_key'), CONVERT(VARBINARY, 'employee_14')));