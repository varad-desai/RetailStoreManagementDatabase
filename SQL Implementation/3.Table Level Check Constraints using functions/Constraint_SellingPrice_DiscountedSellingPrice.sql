/*
Table level check constraints that use function 'dbo.Constraint_Check_Selling_Price'
*/

ALTER TABLE order_branch_product ADD CONSTRAINT 
Constraint_SellingPrice_DiscountedSellingPrice CHECK (dbo.Constraint_Check_Selling_Price(discounted_selling_price,branch_product_id, order_branch_product_id)=1);