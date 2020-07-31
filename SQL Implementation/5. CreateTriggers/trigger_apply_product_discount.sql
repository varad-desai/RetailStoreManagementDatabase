/*
Creating trigger 'trigger_apply_product_discount'

This trigger checks if there is any discount present on a product. 
Then it applies the discount on selling price of the product and calculates discounted_selling_price.
Further the trigger checks the quantity of product ordered by customer.
If the quantity is greater than or equal to 15 then it applies further 5% discount on discounted_selling_price.
This trigger also calculates and stores sale_profit.
*/

USE RetailStoreManagement_Team10
GO
CREATE TRIGGER [dbo].[trigger_apply_product_discount]
ON [dbo].[order_branch_product]
AFTER INSERT
AS
	BEGIN
		PRINT 'Applying product_discount';

		DECLARE @product_selling_price FLOAT;
		DECLARE @product_discount INT;
		DECLARE @calculated_discounted_selling_price FLOAT;
		DECLARE @quantity INT;

		PRINT 'Local variables declared';

		SET @product_selling_price = (
										SELECT CAST(bp.selling_price AS FLOAT) 
										FROM branch_product bp 
										join inserted i ON bp.branch_product_id = i.branch_product_id
									);
		PRINT 'Calculated @product_selling_price';
		
		SET @product_discount = (
								SELECT CAST(p.product_discount AS INT)
								FROM product p
								join branch_product bp ON bp.product_id = p.product_id
								join inserted i ON bp.branch_product_id = i.branch_product_id
								);

		PRINT 'Calculated @product_discount';

		SET @quantity = (SELECT CAST(quantity AS INT) FROM inserted);

		PRINT 'Calculated @quantity';

		SET @calculated_discounted_selling_price = dbo.[function_apply_discount](@product_selling_price, @product_discount);

		PRINT 'Calculated @calculated_discounted_selling_price';

		PRINT '@product_selling_price = '+ CAST(@product_selling_price AS nvarchar(50));
		PRINT '@product_discount = '+ CAST(@product_discount AS nvarchar(50));
		PRINT '@calculated_discounted_selling_price = '+ CAST(@calculated_discounted_selling_price AS nvarchar(50));
		
		PRINT 'Printed calculated values';

		IF (@quantity >= 15) 
			BEGIN

			DECLARE @discount_on_quantity INT;
			SET @discount_on_quantity = (
										SELECT CAST(p.discount_on_quantity AS INT)
										FROM product p
										join branch_product bp ON bp.product_id = p.product_id
										join inserted i ON bp.branch_product_id = i.branch_product_id
										);


			SET @calculated_discounted_selling_price = dbo.[function_apply_discount](@calculated_discounted_selling_price, @discount_on_quantity);
			PRINT 'quantity discount applied: @calculated_discounted_selling_price = '+ CAST(@calculated_discounted_selling_price AS nvarchar(50));
			END

		PRINT 'Calculated quantity discount';

		DECLARE @product_id INT;
		SET @product_id = (	SELECT bp.product_id 
							FROM branch_product bp 
							JOIN inserted i ON bp.branch_product_id = i.branch_product_id
							);

		DECLARE @cost_price FLOAT;
		SET @cost_price = (SELECT cost_price FROM dbo.[product] where product_id = @product_id);

		DECLARE @sale_profit FLOAT;
		SET @sale_profit = @calculated_discounted_selling_price - @cost_price;
		PRINT '@sale_profit = '+ CAST(@sale_profit AS nvarchar(50));

		UPDATE dbo.[order_branch_product]
		SET sale_profit = @sale_profit
		WHERE order_branch_product_id = (SELECT order_branch_product_id from INSERTED); 

		PRINT 'Updated sale_profit in order_branch_product'

		UPDATE dbo.[order_branch_product] 
		SET discounted_selling_price = @calculated_discounted_selling_price
		WHERE order_branch_product_id = (SELECT order_branch_product_id from INSERTED);

		PRINT 'Updated discounted_selling_price in order_branch_product';
	END;