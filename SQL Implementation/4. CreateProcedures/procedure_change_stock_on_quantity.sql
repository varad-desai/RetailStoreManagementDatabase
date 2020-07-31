/*
This procedure changes stock in branch according to quantity of the product ordered by the customer.
*/
USE RetailStoreManagement_Team10
GO
CREATE PROCEDURE [dbo].[procedure_change_stock_on_quantity]
	@product_quantity INT,
	@stock_in_branch INT,
	@branch_product_id INT
AS
	BEGIN

	DECLARE @updated_stock INT;
	SET @updated_stock = @stock_in_branch - @product_quantity;

	UPDATE dbo.[branch_product] 
	SET [stock ] = @updated_stock
	WHERE branch_product_id = @branch_product_id;

	END;