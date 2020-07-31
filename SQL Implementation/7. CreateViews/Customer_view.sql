--Customer table view
/*  This view displays details of customer with customer_id, first_name,last_name, 
customer_password in encrypted format and customer password in decrypted format.
It shows the encryption applied on customer table.
*/


CREATE VIEW [view_customer_password] as
SELECT c.customer_id,c.first_name,c.last_name,c.customer_type, c.customer_password ,
CAST(DECRYPTBYKEY(c.customer_password)AS VARCHAR) AS customer_password_decrypt 
from customer c;

GO

-- To see the view use the following SQL statement

OPEN SYMMETRIC KEY rsm_symmetric_key  
DECRYPTION BY CERTIFICATE rsm_certificate
GO
SELECT * FROM [view_customer_password];




 