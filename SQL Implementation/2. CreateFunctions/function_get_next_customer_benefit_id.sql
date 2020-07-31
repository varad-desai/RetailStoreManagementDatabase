/*
This function returns next customer_benefit_id
*/

USE RetailStoreManagement_Team10
GO
CREATE FUNCTION [dbo].[function_get_next_customer_benefit_id]()
RETURNS INT
AS
	BEGIN

		DECLARE @rowcount_of_customer_benefit INT;
		SET @rowcount_of_customer_benefit = (SELECT COUNT(*) FROM dbo.[customer_benefit]);

		DECLARE @next_customer_benefit_id INT;
		
		IF @rowcount_of_customer_benefit = 0
			BEGIN
			SET @next_customer_benefit_id = 1;
			END;
		ELSE
			BEGIN
			DECLARE @max_customer_benefit_id INT;
			SET @max_customer_benefit_id = (	SELECT MAX(customer_benefit_id)
												FROM dbo.[customer_benefit]
												);

			SET @next_customer_benefit_id = @max_customer_benefit_id + 1 ;

			END;

		RETURN @next_customer_benefit_id;

	END;