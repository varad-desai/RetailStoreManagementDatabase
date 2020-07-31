/*
This procedure will take intake from supplier for the product if there is no sufficient stock left in the branch.
*/

USE RetailStoreManagement_Team10
GO
CREATE PROCEDURE [dbo].[procedure_take_supplier_intake]
	@stock_in_branch INT,
	@supplier_intake INT,
	@branch_product_id INT
AS 
	BEGIN

	DECLARE @updated_stock INT;
	SET @updated_stock = @stock_in_branch + @supplier_intake;
	PRINT '@updated_stock = ' + CAST(@updated_stock AS VARCHAR(30));

	DECLARE @product_id INT;
	SET @product_id = (	SELECT product_id 
						FROM dbo.[branch_product] 
						WHERE branch_product_id = @branch_product_id
						);
	PRINT '@product_id = ' + CAST(@product_id AS VARCHAR(30));

	DECLARE @supplier_intake_counter INT;
	SET @supplier_intake_counter = (	SELECT supplier_intake_counter 
										FROM dbo.[product] 
										WHERE product_id = @product_id
										);
	PRINT '@supplier_intake_counter = ' + CAST(@supplier_intake_counter AS VARCHAR(30));
	
	DECLARE @updated_supplier_intake_counter INT;
	SET @updated_supplier_intake_counter = @supplier_intake_counter + 1;
	PRINT '@updated_supplier_intake_counter = ' + CAST(@updated_supplier_intake_counter AS VARCHAR(30));

	UPDATE dbo.branch_product
	SET [stock ] = @updated_stock
	WHERE branch_product_id = @branch_product_id;

	UPDATE dbo.[product]
	SET supplier_intake_counter = @updated_supplier_intake_counter
	WHERE product_id = @product_id;

	END;