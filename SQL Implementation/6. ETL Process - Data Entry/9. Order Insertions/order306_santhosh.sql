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

insert into dbo.[order] values(306, 10007, 2020, 'onsite', 1, 0);

-- Added 2 items in order

insert into dbo.[order_branch_product] values(723, 520, 306, 10, 1, 1);
insert into dbo.[order_branch_product] values(724, 521, 306, 12, 1, 1);

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 306;

-- giving customer feedback

insert into customer_feedback values(11, 306, 5, 4, 9, 4, 9);
