--Employee table view
/*  This view displays details of employee with employee_id, first_name,last_name,type of employee,
employee_password in encrypted format and employee password in decrypted format.
It shows the encryption applied on employee table.
*/


Go
CREATE VIEW [view_employee_password] as 
SELECT e.employee_id,e.first_name,e.last_name,e.type, e.employee_password ,
CAST(DECRYPTBYKEY(e.employee_password)AS VARCHAR) AS employee_password_decrypt 
from employee e;
Go

-- To see the view use the following SQL statement

OPEN SYMMETRIC KEY rsm_symmetric_key  
DECRYPTION BY CERTIFICATE rsm_certificate
GO
SELECT * FROM [view_employee_password];


