/*

-- ADD Primary key constraints

*/

-- Select database

USE RetailStoreManagement_Team10;

-- 1. employee

ALTER TABLE dbo.[employee] 
ADD CONSTRAINT employee_primarykey 
PRIMARY KEY ([employee_id]);

-- 2. product

ALTER TABLE dbo.[product] 
ADD CONSTRAINT product_primarykey 
PRIMARY KEY ([product_id]);

-- 3. supplier

ALTER TABLE dbo.[supplier] 
ADD CONSTRAINT supplier_primarykey 
PRIMARY KEY ([supplier_id]);

-- 4. branch

ALTER TABLE dbo.[branch] 
ADD CONSTRAINT branch_primarykey 
PRIMARY KEY ([branch_id]);

-- 5. branch_product

ALTER TABLE dbo.[branch_product] 
ADD CONSTRAINT branch_product_primarykey 
PRIMARY KEY ([branch_product_id]);

-- 6. branch_customer

ALTER TABLE dbo.[branch_customer] 
ADD CONSTRAINT branch_customer_primarykey 
PRIMARY KEY ([branch_id], [customer_id]);

-- 7. order_branch_product

ALTER TABLE dbo.[order_branch_product] 
ADD CONSTRAINT order_branch_product_primarykey 
PRIMARY KEY ([order_branch_product_id]);

-- 8. customer

ALTER TABLE dbo.[customer] 
ADD CONSTRAINT customer_primarykey 
PRIMARY KEY ([customer_id]);

-- 9. order

ALTER TABLE dbo.[order] 
ADD CONSTRAINT order_primarykey 
PRIMARY KEY ([order_id]);

-- 10. customer_benefit

ALTER TABLE dbo.[customer_benefit] 
ADD CONSTRAINT customer_benefit_primarykey 
PRIMARY KEY ([customer_benefit_id]);

-- 11. location

ALTER TABLE dbo.[location] 
ADD CONSTRAINT location_primarykey 
PRIMARY KEY ([location_id]);

-- 12. delivery

ALTER TABLE dbo.[delivery] 
ADD CONSTRAINT delivery_primarykey 
PRIMARY KEY ([delivery_id]);

-- 13. customer_feedback

ALTER TABLE dbo.[customer_feedback] 
ADD CONSTRAINT customer_feedback_primarykey 
PRIMARY KEY ([customer_feedback_id]);

-- 14. delivery_personnel

ALTER TABLE dbo.[delivery_personnel] 
ADD CONSTRAINT delivery_personnel_primarykey 
PRIMARY KEY ([delivery_personnel_id]);

