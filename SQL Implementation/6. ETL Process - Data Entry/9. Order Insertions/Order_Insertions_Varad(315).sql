-- Initiated an order

insert into dbo.[order] values(315, 10003, 2020, 'delivery', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(727, 503, 315, 9, 1, 1);
insert into dbo.[order_branch_product] values(728, 511, 315, 10, 1, 1);

SELECT * from order_branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 315;

SELECT * FROM [ORDER]

-- If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 4;

select * from delivery

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 4;

select * from delivery

-- Enter customer_feedback

insert into customer_feedback values(13, 315, 10, 9, 6, 9, 9);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit
