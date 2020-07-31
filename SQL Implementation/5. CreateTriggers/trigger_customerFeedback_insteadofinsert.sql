/*
This trigger manages null values in customer_feedback table
*/

use RetailStoreManagement_Team10
go
create trigger [dbo].[trigger_customerFeedback_insteadofinsert]
on [dbo].[customer_feedback]
instead of insert 
as 
begin
	declare @feedback_id int
	declare @order_id int
	declare @timely_delivery int
	declare @stock_availability int
	declare @quality int
	declare @employee_response int
	declare @cleanliness int

	select @feedback_id = customer_feedback_id from inserted
	select @order_id = order_id from inserted
	select @timely_delivery = (timely_delivery) from inserted
	select @stock_availability = stock_availability from inserted
	select @quality = quality from inserted
	select @employee_response = employee_response from inserted
	select @cleanliness = cleanliness from inserted

	if (@timely_delivery is null)
		set @timely_delivery = 0

	if (@stock_availability is null)
		set @stock_availability = 0

	if (@quality is null)
		set @quality = 0
		
	if (@employee_response is null)
		set @employee_response = 0

	if (@cleanliness is null)
		set @cleanliness = 0

	insert into customer_feedback values (@feedback_id, @order_id, 
	@timely_delivery,@stock_availability,@quality, @employee_response, 
	@cleanliness)
end