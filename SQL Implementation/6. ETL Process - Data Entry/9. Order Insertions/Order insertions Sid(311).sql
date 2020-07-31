SELECT * FROM dbo.[order_branch_product];
select * from branch_product
select * from product


-- Initiated an order

insert into dbo.[order] values(311, 10005, 2019, 'onsite', 1, 0);

select * from [order]


-- Added items in order

insert into dbo.[order_branch_product] values(735, 502, 311, 10, 1, 1);
insert into dbo.[order_branch_product] values(736, 513, 311, 6, 1, 1);
insert into dbo.[order_branch_product] values(737, 506, 311, 17, 1, 1);
insert into dbo.[order_branch_product] values(738, 521, 311, 11, 1, 1);
insert into dbo.[order_branch_product] values(739, 523, 311, 10, 1, 1);

select * from order_branch_product



-- completing order

update dbo.[order] set order_completed = 1 where order_id = 311;

/*If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 237;

DELETE FROM delivery where delivery_id = '237'

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 237;

select * from delivery
*/


-- Enter customer_feedback

insert into customer_feedback values(9, 311, 10, 8, 5, 9, 7);

select * from customer_feedback
select * from customer_benefit