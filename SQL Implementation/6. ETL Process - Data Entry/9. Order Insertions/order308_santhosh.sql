-- Initiated an order

insert into dbo.[order] values(308, 10009, 2020, 'pickup', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(740, 524, 308, 6, 1, 1);
insert into dbo.[order_branch_product] values(741, 508, 308, 15, 1, 1);

delete from dbo.[order_branch_product] where order_branch_product_id = 741;

SELECT * from order_branch_product
SELECT * from branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 308;

insert into customer_feedback values(15, 308, 10, 6, 10, 8, 9);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit