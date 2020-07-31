SELECT * FROM dbo.[order_branch_product];
select * from branch_product
select * from product


-- Initiated an order

insert into dbo.[order] values(304, 10006, 2020, 'delivery', 1, 0);

select * from [order]



-- Added items in order

insert into dbo.[order_branch_product] values(718, 510, 304, 10, 1, 1);
insert into dbo.[order_branch_product] values(719, 507, 304, 16, 1, 1);
insert into dbo.[order_branch_product] values(720, 506, 304, 15, 1, 1);
insert into dbo.[order_branch_product] values(734, 514, 304, 16, 1, 1);

select * from order_branch_product



-- completing order

update dbo.[order] set order_completed = 1 where order_id = 304;

select * from [order]

--If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 7;

select * FROM delivery

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 7;

select * from delivery
*/


-- Enter customer_feedback

insert into customer_feedback values(6, 304, 10, 6, 10, 7, 8);

select * from customer_feedback
select * from customer_benefit