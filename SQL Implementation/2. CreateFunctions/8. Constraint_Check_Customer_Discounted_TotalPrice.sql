/*
This function checks if the customer_discounted_total_price from customer_benefit table 
is less than total_price from order table

This function will return 1 if customer_discounted_total_price is less than total_price
else it will return 0
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[Constraint_Check_Customer_Discounted_TotalPrice]
(@customer_discounted_total_price float, @order_id int)
Returns INT
AS
BEGIN
DECLARE @customer_type varchar;
DECLARE @total_price float;
DECLARE @customer_id int;

SET @customer_id=(select customer_id from [order] where order_id=@order_id);


SET @customer_type= (select customer_type from customer where customer_id=@customer_id); 

SET @total_price=(select total_price from [order] where order_id=@order_id);

DECLARE @check int;
     if(@customer_type='premium')
	 BEGIN
	     if(@customer_discounted_total_price<@total_price)
		   SET @check=1;
		 else
		    SET @check=0;
     END
	 Return @check;
END;