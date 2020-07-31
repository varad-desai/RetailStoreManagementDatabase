/*
This function checks the type of customer and will choose total price.
If the customer_type is premium, Total_price for customer will be customer_discounted_total_price
else if the customer_type is regular, Total_price for customer will be total_price from order table
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[function_get_final_total_price]
(@order_id INT)
RETURNS FLOAT
AS 
	BEGIN
		
		DECLARE @customer_type varchar(30);
		DECLARE @final_total_price FLOAT;
		DECLARE @total_price FLOAT;
		DECLARE @customer_discounted_total_price FLOAT;

		SET @customer_type = (	SELECT c.customer_type 
								FROM dbo.[customer] c 
								LEFT JOIN dbo.[order] o on c.customer_id = o.customer_id
								where o.order_id = @order_id
								);

		SET @total_price = (select total_price 
							from dbo.[order] 
							where order_id = @order_id
							);

		SET @customer_discounted_total_price = (select customer_discounted_total_price 
												from customer_benefit 
												where order_id = @order_id
												);

		IF @customer_type = 'premium'
			BEGIN
			SET @final_total_price = @customer_discounted_total_price;
			END;
		ELSE IF @customer_type = 'regular'
			BEGIN
			SET @final_total_price = @total_price;
			END;

		RETURN @final_total_price;
	END;