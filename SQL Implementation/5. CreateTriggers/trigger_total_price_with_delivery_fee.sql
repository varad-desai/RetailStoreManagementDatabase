/*
This trigger calculates and updates total_price_with_delivery_fee when order completes.
*/

USE RetailStoreManagement_Team10
GO
CREATE TRIGGER [dbo].[trigger_total_price_with_delivery_fee]
ON [dbo].[delivery]
AFTER INSERT
AS

		BEGIN
		PRINT 'trigger_total_price_with_delivery_fee starts';

		DECLARE @order_id INT;
		SET @order_id = (select order_id from inserted);
		PRINT '@order_id = ' + CAST(@order_id AS VARCHAR(30));

		DECLARE @total_price INT;
		SET @total_price = dbo.function_get_final_total_price(@order_id);
		PRINT '@total_price = ' + CAST(@total_price AS VARCHAR(30));

		DECLARE @delivery_id INT;
		SET @delivery_id = (select delivery_id from inserted);
		PRINT '@delivery_id = ' + CAST(@delivery_id AS VARCHAR(30));

		EXEC procedure_delivery_fee_update @total_price, @order_id, @delivery_id;
		PRINT 'Excecuted procedure_delivery_fee_update';

		DECLARE @delivery_fee float;
		SET @delivery_fee = (select delivery_fee from dbo.[delivery] where order_id=@order_id);
		PRINT '@delivery_fee = ' + CAST(@delivery_fee AS VARCHAR(30));

		DECLARE @total_price_with_delivery_fee INT;
		SET @total_price_with_delivery_fee = @total_price + @delivery_fee;
		PRINT '@total_price_with_delivery_fee = ' + CAST(@total_price_with_delivery_fee AS VARCHAR(30));
		
		Update dbo.[delivery]
		SET total_price_with_delivery_fee = @total_price_with_delivery_fee
		WHERE order_id = @order_id;
			
		PRINT 'Updated total_price_with_delivery_fee';

		END;