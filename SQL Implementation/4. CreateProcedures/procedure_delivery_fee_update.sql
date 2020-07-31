/*
This procedure applies $10 delivery fee to the total price if total price is less than $20.
*/

USE RetailStoreManagement_Team10
GO
CREATE PROCEDURE [dbo].[procedure_delivery_fee_update]
@total_price float,
@order_id int,
@delivery_id INT
As
BEGIN
IF @total_price<20
     Begin 
	   Update dbo.[delivery] SET delivery_fee= 10.00 where order_id = @order_id and delivery_id = @delivery_id;                 
     END;
if @total_price >= 20
   BEGIN
   Update dbo.[delivery] SET delivery_fee= 0.00 where order_id = @order_id and delivery_id = @delivery_id;
	END;
End