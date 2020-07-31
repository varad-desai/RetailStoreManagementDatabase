/*
This trigger manages availability of delivery_personnel according to changes in delivery table.
*/

USE RetailStoreManagement_Team10
GO
CREATE TRIGGER [dbo].[trigger_delivery_personnel_availability]
ON [dbo].[delivery]
AFTER UPDATE
AS
BEGIN

	PRINT 'trigger_delivery_personnel_availability starts';
	
	DECLARE @start_time time;
	SET @start_time = (SELECT start_time FROM Inserted);
	PRINT '@start_time = ' + CAST(@start_time AS VARCHAR(250));

	DECLARE @end_time time;
	SET @end_time = (SELECT end_time FROM Inserted);
	PRINT '@end_time = ' + CAST(@end_time AS VARCHAR(250));

	DECLARE @delivery_personnel_id INT;
	SET @delivery_personnel_id=(select delivery_personnel_id from inserted);

	IF (@start_time IS NOT NULL) AND (@end_time IS NULL)
		BEGIN
		Update dbo.[delivery_personnel]
		SET dbo.[delivery_personnel].[availability] = 0 
		where delivery_personnel_id= @delivery_personnel_id;
		END;
	ELSE IF(@start_time IS NOT NULL) AND (@end_time IS NOT NULL)
		BEGIN
		Update dbo.[delivery_personnel]
		SET dbo.[delivery_personnel].[availability] = 1 
		where delivery_personnel_id= @delivery_personnel_id;
		END;
	PRINT 'trigger_delivery_personnel_availability completes';
END;