/*
This procedure initiates delivery if the order is of type delivery.
*/

USE RetailStoreManagement_Team10
GO
CREATE PROCEDURE [dbo].[procedure_initiate_delivery]
	@order_id INT
AS
	BEGIN

	PRINT 'Start procedure_initiate_delivery'

	DECLARE @order_type VARCHAR(250);
	SET @order_type = (SELECT order_type FROM dbo.[order] WHERE order_id = @order_id);
	PRINT '@order_type' + CAST(@order_type AS VARCHAR(30));

	IF @order_type = 'delivery'
		BEGIN

		INSERT INTO dbo.[delivery](delivery_id, estimated_time, order_id, delivery_personnel_id)
		VALUES(dbo.function_get_next_delivery_id(),'02:00:00', @order_id, dbo.function_get_available_delivery_personnel());
		PRINT 'Inserted a row in Delivery';

		END;

	PRINT 'End procedure_initiate_delivery';

	END;