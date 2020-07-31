/*
Table level check constraints that use function 'dbo.Constraint_Check_Customer_Discounted_TotalPrice'
*/

ALTER TABLE customer_benefit ADD CONSTRAINT 
Compare_Customer_Discounted_TotalPrice CHECK (dbo.Constraint_Check_Customer_Discounted_TotalPrice(customer_discounted_total_price,order_id)=1);
