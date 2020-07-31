/*
This function returns next delivery_id
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[function_get_next_delivery_id]()
RETURNS INT
AS
	BEGIN

		DECLARE @rowcount_of_delivery INT;
		SET @rowcount_of_delivery = (SELECT COUNT(*) FROM dbo.[delivery]);

		DECLARE @next_delivery_id INT;
		
		IF @rowcount_of_delivery = 0
			BEGIN
			SET @next_delivery_id = 1;
			END;
		ELSE
			BEGIN
			DECLARE @max_delivery_id INT;
			SET @max_delivery_id = (SELECT MAX(delivery_id)
									FROM dbo.[delivery]
									);

			SET @next_delivery_id = @max_delivery_id + 1 ;

			END;

		RETURN @next_delivery_id;

	END;