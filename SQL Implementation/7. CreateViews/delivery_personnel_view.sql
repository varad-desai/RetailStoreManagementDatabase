--View Delivery_personnel
/*  This view displays details of delivery_personnel with delivery_personnel_id,first_name,last_name,availability, 
delivery_personnel_password in encrypted format and in decrypted format.
It shows the encryption applied on delivery_personnel table.
*/


CREATE VIEW [view_delivery_personnel_password] as
SELECT d.delivery_personnel_id,d.first_name,d.last_name,d.availability, d.delivery_personnel_password ,
CAST(DECRYPTBYKEY(d.delivery_personnel_password)AS VARCHAR) AS delivery_personnel_password_decrypt 
from delivery_personnel d;
Go

-- To see the view use the following SQL statement

OPEN SYMMETRIC KEY rsm_symmetric_key  
DECRYPTION BY CERTIFICATE rsm_certificate
GO
SELECT * FROM [view_delivery_personnel_password];



