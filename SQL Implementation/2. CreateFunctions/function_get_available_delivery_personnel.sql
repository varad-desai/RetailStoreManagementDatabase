/*
This function gets the available delivery_personnel prioritized by delivery_personel_id
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[function_get_available_delivery_personnel]()
RETURNS INT
AS
	BEGIN
	DECLARE @avalilable_delivery_personnel INT;
	SET @avalilable_delivery_personnel = (	SELECT TOP 1 delivery_personnel_id 
											FROM dbo.[delivery_personnel]
											WHERE dbo.[delivery_personnel].availability = 1
											);
		
	RETURN @avalilable_delivery_personnel;
	END;