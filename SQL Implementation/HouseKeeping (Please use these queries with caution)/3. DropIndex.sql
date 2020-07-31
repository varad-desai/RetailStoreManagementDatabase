-- DROP Index from tables


-- 1. employee

DROP INDEX employee_index ON dbo.[employee];


-- 2. product

DROP INDEX product_index ON dbo.[product];


-- 3. supplier

DROP INDEX supplier_index ON dbo.[supplier];


-- 4. branch

DROP INDEX branch_index ON dbo.[branch];


-- 5. branch_product
DROP INDEX branch_product_index ON dbo.[branch_product];


-- 6. branch_customer

DROP INDEX branch_customer_index ON dbo.[branch_customer];


-- 7. order_branch_product

DROP INDEX order_branch_product_index ON dbo.[order_branch_product];


-- 8. customer

DROP INDEX customer_index ON dbo.[customer];


-- 9. order

DROP INDEX order_index ON dbo.[order];


-- 10. customer_benefit

DROP INDEX customer_benefit_index ON dbo.[customer_benefit];


-- 11. location

DROP INDEX location_index ON dbo.[location];


-- 12. delivery

DROP INDEX delivery_index ON dbo.[delivery];


-- 13. customer_feedback

DROP INDEX customer_feedback_index ON dbo.[customer_feedback];


-- 14. delivery_personnel

DROP INDEX delivery_personnel_index ON dbo.[delivery_personnel];

