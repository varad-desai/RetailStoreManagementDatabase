-- Initiated an order

insert into dbo.[order] values(309, 10010, 2020, 'pickup', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(742, 510, 309, 20, 1, 1);
insert into dbo.[order_branch_product] values(743, 515, 309, 24, 1, 1);

SELECT * from order_branch_product
SELECT * from branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 309;

insert into customer_feedback values(17, 309, 10, 7, 2, 8, 9);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit