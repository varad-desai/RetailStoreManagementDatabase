/*

-- ADD Foreign key constraints

*/

-- Select database

USE RetailStoreManagement_Team10;

-- 1. employee

ALTER TABLE dbo.employee ADD CONSTRAINT employee_branch_foreignkey 
FOREIGN KEY (branch_id) REFERENCES dbo.branch(branch_id);


-- 2. product

ALTER TABLE dbo.[product] ADD CONSTRAINT product_supplier_foreignkey 
FOREIGN KEY (supplier_id) REFERENCES dbo.[supplier](supplier_id);


-- 3. supplier

-- Does not have foreign key


-- 4. branch

ALTER TABLE dbo.[branch] ADD CONSTRAINT branch_location_foreignkey 
FOREIGN KEY (location_id) REFERENCES dbo.[location](location_id);


-- 5. branch_product

ALTER TABLE dbo.[branch_product] ADD CONSTRAINT branch_product_branch_foreignkey 
FOREIGN KEY (branch_id) REFERENCES dbo.[branch](branch_id);

ALTER TABLE dbo.[branch_product] ADD CONSTRAINT branch_product_product_foreignkey 
FOREIGN KEY (product_id) REFERENCES dbo.[product](product_id);


-- 6. branch_customer

ALTER TABLE dbo.[branch_customer] ADD CONSTRAINT branch_customer_branch_foreignkey 
FOREIGN KEY (branch_id) REFERENCES dbo.[branch](branch_id);

ALTER TABLE dbo.[branch_customer] ADD CONSTRAINT branch_customer_customer_foreignkey 
FOREIGN KEY (customer_id) REFERENCES dbo.[customer](customer_id);


-- 7. order_branch_product

ALTER TABLE dbo.[order_branch_product] ADD CONSTRAINT order_branch_product_branch_product_foreignkey 
FOREIGN KEY (branch_product_id) REFERENCES dbo.[branch_product](branch_product_id);

ALTER TABLE dbo.[order_branch_product] ADD CONSTRAINT order_branch_product_order_foreignkey 
FOREIGN KEY (order_id) REFERENCES dbo.[order](order_id);



-- 8. customer

-- Does not have foreign key


-- 9. order

ALTER TABLE dbo.[order] ADD CONSTRAINT order_customer_foreignkey 
FOREIGN KEY (customer_id) REFERENCES dbo.[customer](customer_id);


-- 10. customer_benefit

ALTER TABLE dbo.[customer_benefit] ADD CONSTRAINT customer_benefit_order_foreignkey 
FOREIGN KEY (order_id) REFERENCES dbo.[order](order_id);


-- 11. location

-- Does not have foreign key


-- 12. delivery

ALTER TABLE dbo.[delivery] ADD CONSTRAINT delivery_order_foreignkey 
FOREIGN KEY (order_id) REFERENCES dbo.[order](order_id);

ALTER TABLE dbo.[delivery] ADD CONSTRAINT delivery_delivery_personnel_foreignkey 
FOREIGN KEY (delivery_personnel_id) REFERENCES dbo.[delivery_personnel](delivery_personnel_id);

ALTER TABLE dbo.[delivery] ADD CONSTRAINT delivery_location_foreignkey 
FOREIGN KEY (location_id) REFERENCES dbo.[location](location_id);


-- 13. customer_feedback

ALTER TABLE dbo.[customer_feedback] ADD CONSTRAINT customer_feedback_order_foreignkey 
FOREIGN KEY (order_id) REFERENCES dbo.[order](order_id);


-- 14. delivery_personnel

-- Does not have foreign key


