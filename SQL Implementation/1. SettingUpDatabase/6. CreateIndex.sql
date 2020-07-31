/*

-- ADD Index to tables

*/

-- 1. employee

CREATE INDEX employee_index ON dbo.[employee](employee_id);


-- 2. product

CREATE INDEX product_index ON dbo.[product](product_id);


-- 3. supplier

CREATE INDEX supplier_index ON dbo.[supplier](supplier_id);


-- 4. branch

CREATE INDEX branch_index ON dbo.[branch](branch_id);


-- 5. branch_product
CREATE INDEX branch_product_index ON dbo.[branch_product](branch_product_id);


-- 6. branch_customer

CREATE INDEX branch_customer_index ON dbo.[branch_customer](branch_id, customer_id);


-- 7. order_branch_product

CREATE INDEX order_branch_product_index ON dbo.[order_branch_product](order_branch_product_id);


-- 8. customer

CREATE INDEX customer_index ON dbo.[customer](customer_id);


-- 9. order

CREATE INDEX order_index ON dbo.[order](order_id);


-- 10. customer_benefit

CREATE INDEX customer_benefit_index ON dbo.[customer_benefit](customer_benefit_id);


-- 11. location

CREATE INDEX location_index ON dbo.[location](location_id);


-- 12. delivery

CREATE INDEX delivery_index ON dbo.[delivery](delivery_id);


-- 13. customer_feedback

CREATE INDEX customer_feedback_index ON dbo.[customer_feedback](customer_feedback_id);


-- 14. delivery_personnel

CREATE INDEX delivery_personnel_index ON dbo.[delivery_personnel](delivery_personnel_id);

