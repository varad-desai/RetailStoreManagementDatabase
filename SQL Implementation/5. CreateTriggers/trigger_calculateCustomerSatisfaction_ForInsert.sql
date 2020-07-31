/*
This trigger calculates customer_satisfaction using the values in customer_feedback 
and stores it in customer_benefit table.
*/

use RetailStoreManagement_Team10
go
create trigger [dbo].[trigger_calculateCustomerSatisfaction_ForInsert]
on [dbo].[customer_feedback]
for insert
as
begin
	PRINT 'trigger_calculateCustomerSatisfaction_ForInsert starts';

	DECLARE @order_id INT;
	SET @order_id = (SELECT order_id FROM Inserted);
	PRINT '@order_id = ' + CAST(@order_id AS varchar(30));

	DECLARE @order_type VARCHAR(30);
	SET @order_type = (SELECT order_type FROM dbo.[order] WHERE order_id = @order_id);
	PRINT '@order_type = ' + CAST(@order_type AS varchar(30));

	IF @order_type = 'delivery'
		BEGIN
		update customer_benefit
		set customer_satisfaction = 
		(select(inserted.stock_availability
				+inserted.quality
				+inserted.employee_response
			    +inserted.cleanliness)*100)/50
		from inserted
		join customer_benefit on inserted.order_id = customer_benefit.order_id
		where inserted.order_id = customer_benefit.order_id;
		END;
	ELSE
		BEGIN
		update customer_benefit
		set customer_satisfaction = 
			(select(inserted.[timely_delivery]
				+inserted.stock_availability
				+inserted.quality
				+inserted.employee_response
			    +inserted.cleanliness)*100)/40
		from inserted
		join customer_benefit on inserted.order_id = customer_benefit.order_id
		where inserted.order_id = customer_benefit.order_id;
		END;

	PRINT 'trigger_calculateCustomerSatisfaction_ForInsert completes';

end