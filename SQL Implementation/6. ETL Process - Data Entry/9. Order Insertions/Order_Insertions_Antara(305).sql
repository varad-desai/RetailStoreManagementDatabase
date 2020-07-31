select * from customer;
--Premium customer:10006
-- Initiated an order

insert into dbo.[order] values(305, 10006, 2019, 'delivery', 1, 0);

-- Added 2 items in order

insert into dbo.[order_branch_product] values(721, 506, 305, 2, 1, 1);
insert into dbo.[order_branch_product] values(722, 507, 305, 3, 1, 1);
select * from order_branch_product;
-- completing order

update dbo.[order] set order_completed = 1 where order_id = 305;

-- If delivery - Start delivery
select * from delivery;
update dbo.[delivery] set start_time = GETDATE() where delivery_id = 3;

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 3;
select * from delivery;
select * from delivery_personnel;
-- Enter customer_feedback

insert into customer_feedback values(10, 305, 7, 9, 10, 10, 10);
select * from customer_feedback;
select * from customer_benefit;
