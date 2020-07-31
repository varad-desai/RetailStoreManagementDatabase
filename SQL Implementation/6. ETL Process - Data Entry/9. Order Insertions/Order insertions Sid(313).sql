-- Initiated an order

insert into dbo.[order] values(313, 10008, 2020, 'onsite', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(713, 527, 313, 10, 1, 1);
insert into dbo.[order_branch_product] values(714, 532, 313, 10, 1, 1);

SELECT * from order_branch_product
SELECT * from branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 313;

-- If delivery - Start delivery (NO DELIVERY FOR THIS ORDER)
/*select * from delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 237;

DELETE FROM delivery where delivery_id = '237'

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 237;
*/

-- Enter customer_feedback

insert into customer_feedback values(5, 313, 8, 9, 6, 9, 7);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit

