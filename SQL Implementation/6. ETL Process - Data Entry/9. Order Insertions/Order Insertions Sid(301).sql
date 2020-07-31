SELECT * FROM dbo.[order_branch_product];
select * from branch_product
select * from product


-- Initiated an order

insert into dbo.[order] values(301, 10002, 2019, 'pickup', 1, 0);

select * from [order]



-- Added items in order

insert into dbo.[order_branch_product] values(701, 510, 301, 10, 1, 1);
insert into dbo.[order_branch_product] values(711, 507, 301, 16, 1, 1);
insert into dbo.[order_branch_product] values(712, 506, 301, 17, 1, 1);
insert into dbo.[order_branch_product] values(717, 514, 301, 16, 1, 1);

select * from order_branch_product



-- completing order

update dbo.[order] set order_completed = 1 where order_id = 301;

/*If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 237;

DELETE FROM delivery where delivery_id = '237'

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 237;

select * from delivery
*/


-- Enter customer_feedback

insert into customer_feedback values(2, 301, 9, 7, 9, 8, 8);

select * from customer_feedback
select * from customer_benefit