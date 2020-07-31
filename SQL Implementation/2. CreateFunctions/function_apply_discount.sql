/*
This function will apply discount on price and will return discounted price
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[function_apply_discount]( @price FLOAT, @discount INT )
RETURNS FLOAT
AS 
BEGIN
	DECLARE @discounted_price FLOAT;
	SET @discounted_price = @price-(@price*CAST(@discount AS FLOAT)/100);
	
	RETURN @discounted_price;
END;