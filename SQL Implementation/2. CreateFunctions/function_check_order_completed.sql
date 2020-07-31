/*
This function returns the order completed flag in INT format
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[function_check_order_completed]
(@order_id int)
Returns int
AS
BEGIN

DECLARE @order_completed bit;

SET @order_completed=(select order_completed from [order] where order_id=@order_id);

Return CAST(@order_completed AS INT);
END;