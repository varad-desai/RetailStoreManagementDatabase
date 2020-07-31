/*
Creating trigger 'trigger_calculate_total_price'

This trigger first checks whether order is complete or no.
If it is then it calculates total_price and stores it in order table
Then it checks the customer type. 
If the type is 'premium'
Then it applies 10% discount on total_price of the order. 
And stores the result in customer_discounted_total_price.
*/

USE RetailStoreManagement_Team10
GO
CREATE TRIGGER [dbo].[trigger_calculate_total_price]
ON [dbo].[order]
AFTER UPDATE
AS
	BEGIN
		
		PRINT 'Start trigger_calculate_total_price'
		
		DECLARE @order_completion_flag INT;
		SET @order_completion_flag = (SELECT order_completed FROM Inserted);

		PRINT 'Variable @order_completion_flag declared and set'

		IF @order_completion_flag = 1
			BEGIN
			PRINT 'Inside OrderCompleted If statement'
			DECLARE @order_id INT;
			DECLARE @order_total_price FLOAT;

			SET @order_id = (SELECT order_id from Inserted);

			SET @order_total_price = (
									SELECT SUM(discounted_selling_price*quantity) 
									FROM dbo.[order_branch_product]
									WHERE order_id = @order_id
									);

			PRINT '@order_id = ' + CAST(@order_id AS VARCHAR(30));
			PRINT '@order_total_price = ' + CAST(@order_total_price AS VARCHAR(30));

			UPDATE dbo.[order] SET total_price = @order_total_price 
			WHERE order_id = @order_id

			PRINT 'Updated total price in order'

			DECLARE @customer_type VARCHAR(30);
			
			SET @customer_type = (
								SELECT customer_type 
								FROM dbo.[customer] c 
								JOIN dbo.[order] o on c.customer_id = o.customer_id
								WHERE order_id = @order_id
								);
			
			PRINT '@customer_type = ' + CAST(@customer_type AS VARCHAR(30));
			
			IF @customer_type = 'premium'
				BEGIN
				PRINT 'Inside CustomerType premium If statement'
				DECLARE @customer_discounted_total_price FLOAT;
				SET @customer_discounted_total_price = dbo.[function_apply_discount](@order_total_price, 10);
				PRINT '@customer_discounted_total_price = ' + CAST(@customer_discounted_total_price AS VARCHAR(30));
				
				IF @order_id IN (SELECT order_id FROM dbo.[customer_benefit])
					BEGIN
					UPDATE dbo.[customer_benefit] SET customer_discounted_total_price = @customer_discounted_total_price
					WHERE order_id = @order_id;
					END;
				ELSE
					BEGIN

					INSERT INTO dbo.[customer_benefit](customer_benefit_id, order_id, customer_satisfaction, customer_discounted_total_price)
					VALUES(dbo.function_get_next_customer_benefit_id(), @order_id, 0, @customer_discounted_total_price);
					PRINT '1. Row inserted in customer_benefit';

					END;
				PRINT 'Updated customer_discounted_total_price';
				END;
			IF @customer_type = 'regular'
				BEGIN

				PRINT 'Inside CustomerType regular If statement'
				IF @order_id NOT IN (SELECT order_id FROM dbo.[customer_benefit])
					BEGIN

					INSERT INTO dbo.[customer_benefit](customer_benefit_id, order_id, customer_satisfaction, customer_discounted_total_price)
					VALUES(dbo.function_get_next_customer_benefit_id(), @order_id, 0, 0);
					PRINT '2. Row inserted in customer_benefit';
					END;
				END;

			DECLARE @order_type VARCHAR(250);
			SET @order_type = (SELECT order_type FROM Inserted);
			PRINT '@order_type = ' + CAST(@order_type AS VARCHAR(250));

			IF @order_type = 'delivery'
				BEGIN
				EXEC procedure_initiate_delivery @order_id;
				END;
			END;
 	END;