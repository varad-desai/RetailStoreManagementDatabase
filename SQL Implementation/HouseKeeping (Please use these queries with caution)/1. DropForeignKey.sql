-- DROP Foreign key constraints


-- 1. employee

ALTER TABLE dbo.employee DROP CONSTRAINT employee_branch_foreignkey;


-- 2. product

ALTER TABLE dbo.[product] DROP CONSTRAINT product_supplier_foreignkey;


-- 3. supplier

-- Does not have foreign key


-- 4. branch

ALTER TABLE dbo.[branch] DROP CONSTRAINT branch_location_foreignkey;


-- 5. branch_product

ALTER TABLE dbo.[branch_product] DROP CONSTRAINT branch_product_branch_foreignkey;

ALTER TABLE dbo.[branch_product] DROP CONSTRAINT branch_product_product_foreignkey;


-- 6. branch_customer

ALTER TABLE dbo.[branch_customer] DROP CONSTRAINT branch_customer_branch_foreignkey;

ALTER TABLE dbo.[branch_customer] DROP CONSTRAINT branch_customer_customer_foreignkey;


-- 7. order_branch_product

ALTER TABLE dbo.[order_branch_product] DROP CONSTRAINT order_branch_product_branch_product_foreignkey;

ALTER TABLE dbo.[order_branch_product] DROP CONSTRAINT order_branch_product_order_foreignkey;



-- 8. customer

-- Does not have foreign key


-- 9. order

ALTER TABLE dbo.[order] DROP CONSTRAINT order_customer_foreignkey;


-- 10. customer_benefit

ALTER TABLE dbo.[customer_benefit] DROP CONSTRAINT customer_benefit_order_foreignkey;


-- 11. location

-- Does not have foreign key


-- 12. delivery

ALTER TABLE dbo.[delivery] DROP CONSTRAINT delivery_order_foreignkey;

ALTER TABLE dbo.[delivery] DROP CONSTRAINT delivery_delivery_personnel_foreignkey;

ALTER TABLE dbo.[delivery] DROP CONSTRAINT delivery_location_foreignkey;


-- 13. customer_feedback

ALTER TABLE dbo.[customer_feedback] DROP CONSTRAINT customer_feedback_order_foreignkey;


-- 14. delivery_personnel

-- Does not have foreign key


