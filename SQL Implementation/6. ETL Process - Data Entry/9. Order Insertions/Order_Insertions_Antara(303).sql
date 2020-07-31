-- Initiated an order

insert into dbo.[order] values(303, 10011, 2019, 'delivery', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(715, 509, 303, 8, 1, 1);
insert into dbo.[order_branch_product] values(716, 510, 303, 8, 1, 1);

SELECT * from order_branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 303;

SELECT * FROM [ORDER];

-- If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 2;

select * from delivery

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 2;

select * from delivery

-- Enter customer_feedback

insert into customer_feedback values(8, 303, 10, 7, 5, 8, 9);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit
