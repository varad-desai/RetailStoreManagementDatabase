/*
This trigger manages stock in branch_product table according to quantity in order_branch_product table
and also takes supplier_intake if required.
*/

USE RetailStoreManagement_Team10
GO
CREATE TRIGGER [dbo].[trigger_change_stock_on_quantity]
ON [dbo].[order_branch_product]
AFTER INSERT 
AS
	BEGIN
		PRINT 'Stock Management Starts';

		DECLARE @product_quantity INT;
		DECLARE @stock INT;
		DECLARE @supplier_intake INT;
		DECLARE @branch_product_id INT;

		PRINT 'Declared all variables'

		SET @product_quantity = (SELECT quantity from Inserted);
		PRINT ' @product_quantity = ' + CAST(@product_quantity AS VARCHAR(30));

		SET @stock = (	SELECT bp.[stock ] 
						FROM dbo.[branch_product] bp
						JOIN dbo.[order_branch_product] obp on bp.branch_product_id = obp.branch_product_id
						WHERE obp.order_branch_product_id = (SELECT order_branch_product_id FROM Inserted) 
						);
		PRINT ' @stock = ' + CAST(@stock AS VARCHAR(30));

		SET @supplier_intake = (SELECT p.supplier_intake FROM dbo.[product] p
								JOIN dbo.[branch_product] bp on bp.product_id = p.product_id
								WHERE branch_product_id = (SELECT branch_product_id FROM Inserted)
								);
		PRINT ' @supplier_intake = ' + CAST(@supplier_intake AS VARCHAR(30));

		SET @branch_product_id = (SELECT branch_product_id FROM Inserted);
		PRINT ' @branch_product_id = ' + CAST(@branch_product_id AS VARCHAR(30));

		IF @product_quantity > @stock
			BEGIN

			PRINT 'Quantity is greater than stock';

			EXEC procedure_take_supplier_intake @stock, @supplier_intake, @branch_product_id;
			PRINT 'Took supplier intake';

			SET @stock = (	SELECT bp.[stock ] 
						FROM dbo.[branch_product] bp
						JOIN dbo.[order_branch_product] obp on bp.branch_product_id = obp.branch_product_id
						WHERE obp.order_branch_product_id = (SELECT order_branch_product_id FROM Inserted) 
						);

			EXEC procedure_change_stock_on_quantity @product_quantity, @stock, @branch_product_id;
			PRINT 'Reduced quantity from stock';

			END;
	
		ELSE
			BEGIN
			PRINT 'Quantity is lesser than or equal to stock'

			EXEC procedure_change_stock_on_quantity @product_quantity, @stock, @branch_product_id;
			PRINT 'Reduced quantity from stock';

			END;

	END;