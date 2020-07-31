
-- Initiated an order

insert into dbo.[order] values(310, 10006, 2019, 'onsite', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(709, 517, 310, 7, 1, 1);
insert into dbo.[order_branch_product] values(710, 521, 310, 7, 1, 1);

SELECT * from order_branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 310;

-- If delivery - Start delivery (NO DELIVERY FOR THIS ORDER)
/*select * from delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 237;

DELETE FROM delivery where delivery_id = '237'

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 237;
*/

-- Enter customer_feedback

insert into customer_feedback values(4, 310, 10, 7, 8, 9, 10);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit