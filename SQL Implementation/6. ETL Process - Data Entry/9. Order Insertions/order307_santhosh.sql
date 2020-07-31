use RetailStoreManagement_Team10;

SELECT * FROM dbo.[order];

SELECT * FROM dbo.[order_branch_product];

select * from dbo.delivery;

select * from dbo.delivery_personnel;

select * from branch_product
order by branch_id;

select * from product;

select * from customer;

select * from customer_benefit;

select * from customer_feedback;

--  306, 307, 308, 309

-- Initiated an order

insert into dbo.[order] values(307, 10008, 2019, 'delivery', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(721, 522, 307, 12, 1, 1);
insert into dbo.[order_branch_product] values(722, 523, 307, 14, 1, 1);

SELECT * from order_branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 307;

SELECT * FROM [ORDER];

-- If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 3;

select * from delivery

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 3;

select * from delivery

-- Enter customer_feedback

insert into customer_feedback values(12, 307, 9, 8, 7, 10, 10);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit

