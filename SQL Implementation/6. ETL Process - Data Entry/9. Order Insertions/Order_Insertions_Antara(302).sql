Use RetailStoreManagement_Team10;
--Initiate an order
insert into dbo.[order] values(302, 10007, 2019, 'onsite', 1, 0);

select * from dbo.[order];

-- Added 2 items in order
insert into dbo.[order_branch_product] values(707, 516, 302, 10, 1, 1);
insert into dbo.[order_branch_product] values(705, 521, 302, 7, 1, 1);

select * from order_branch_product;

-- completing order
update dbo.[order] set order_completed = 1 where order_id = 302;
select * from [order];
--No delivery for this order
--Customer feedback
insert into customer_feedback values(7, 302, 10, 10, 8, 9, 10);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit


