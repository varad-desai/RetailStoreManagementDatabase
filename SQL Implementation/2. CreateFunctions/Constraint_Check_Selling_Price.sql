/*
This function checks if there is discount on that product then
discounted_selling_price from order_branch_product 
should be less than selling_price from branch_product table
*/

USE [RetailStoreManagement_Team10]
GO
CREATE FUNCTION [dbo].[Constraint_Check_Selling_Price]
(@discounted_selling_price float, @branch_product_id int, @order_branch_product_id int)
Returns float
AS
BEGIN
--PRINT 'Function Constraint_Check_Selling_Price starts';
DECLARE @discount int;
DECLARE @quantity int;
DECLARE @selling_price float;
DECLARE @product_id int;
SET @product_id= (select product_id from branch_product where branch_product_id=@branch_product_id); 
--PRINT '@product_id'@productid
SET @discount=(select product_discount from product where product_id=@product_id);
--PRINT @discount

SET @quantity=(select quantity from order_branch_product where branch_product_id=@branch_product_id and order_branch_product_id=@order_branch_product_id);
--PRINT @quantity

SET @selling_price=(select selling_price from branch_product where branch_product_id=@branch_product_id);
--PRINT @selling_price
DECLARE @check int;
     if(@discount>0)
	 BEGIN
	     if(@discounted_selling_price<@selling_price)
		   SET @check=1;
		 else
		    SET @check=0;
     END
	 Return @check;
--PRINT 'Function Constraint_Check_Selling_Price ends';
END;