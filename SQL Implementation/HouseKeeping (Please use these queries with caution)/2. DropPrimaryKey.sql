-- DROP Primary key constraints

-- 1. employee

ALTER TABLE dbo.[employee] 
DROP CONSTRAINT employee_primarykey;

-- 2. product

ALTER TABLE dbo.[product] 
DROP CONSTRAINT product_primarykey;

-- 3. supplier

ALTER TABLE dbo.[supplier] 
DROP CONSTRAINT supplier_primarykey;

-- 4. branch

ALTER TABLE dbo.[branch] 
DROP CONSTRAINT branch_primarykey;

-- 5. branch_product

ALTER TABLE dbo.[branch_product] 
DROP CONSTRAINT branch_product_primarykey;

-- 6. branch_customer

ALTER TABLE dbo.[branch_customer] 
DROP CONSTRAINT branch_customer_primarykey;

-- 7. order_branch_product

ALTER TABLE dbo.[order_branch_product] 
DROP CONSTRAINT order_branch_product_primarykey;

-- 8. customer

ALTER TABLE dbo.[customer] 
DROP CONSTRAINT customer_primarykey;

-- 9. order

ALTER TABLE dbo.[order] 
DROP CONSTRAINT order_primarykey;

-- 10. customer_benefit

ALTER TABLE dbo.[customer_benefit] 
DROP CONSTRAINT customer_benefit_primarykey;

-- 11. location

ALTER TABLE dbo.[location] 
DROP CONSTRAINT location_primarykey;

-- 12. delivery

ALTER TABLE dbo.[delivery] 
DROP CONSTRAINT delivery_primarykey;

-- 13. customer_feedback

ALTER TABLE dbo.[customer_feedback] 
DROP CONSTRAINT customer_feedback_primarykey;

-- 14. delivery_personnel

ALTER TABLE dbo.[delivery_personnel] 
DROP CONSTRAINT delivery_personnel_primarykey;

