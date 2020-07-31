insert into dbo.[order] values(317, 10008, 2020, 'delivery', 1, 0);

select * from [order]


-- Added 2 items in order

insert into dbo.[order_branch_product] values(732, 524, 317, 3, 1, 1);
insert into dbo.[order_branch_product] values(733, 525, 317, 8, 1, 1);

SELECT * from order_branch_product
SELECT * from branch_product

-- completing order

update dbo.[order] set order_completed = 1 where order_id = 317;

-- If delivery
select * from delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 5;


-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 5;


-- Enter customer_feedback

insert into customer_feedback values(16, 317, 8, 10, 6, 9, 7);

SELECT * FROM customer_feedback
SELECT * FROM customer_benefit

