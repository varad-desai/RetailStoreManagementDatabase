/*
Table level check constraints that use function 'dbo.Constraint_Check_Estimated_Time'
*/

ALTER TABLE order_branch_product  with NOCHECK ADD CONSTRAINT 
Check_Completed_Order_insertion CHECK (dbo.Constraint_Check_Estimated_Time(order_id,order_branch_product_id)=1);

