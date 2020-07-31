-- Checking of table values

SELECT * FROM dbo.[order];
SELECT * FROM dbo.[customer];







select * from dbo.delivery;

select * from dbo.delivery_personnel;

select * from branch_product;





SELECT * FROM dbo.[order_branch_product];
select * from branch_product
select * from product


-- Initiated an order

insert into dbo.[order] values(300, 10001, 2019, 'onsite', 1, 0);

select * from [order]



-- Added items in order

insert into dbo.[order_branch_product] values(702, 501, 300, 10, 1, 1);
insert into dbo.[order_branch_product] values(703, 512, 300, 16, 1, 1);

select * from order_branch_product



-- completing order

update dbo.[order] set order_completed = 1 where order_id = 300;

/*If delivery - Start delivery

update dbo.[delivery] set start_time = GETDATE() where delivery_id = 237;

DELETE FROM delivery where delivery_id = '237'

-- End delivery 

update dbo.[delivery] set end_time = GETDATE() where delivery_id = 237;

select * from delivery
*/


-- Enter customer_feedback

insert into customer_feedback values(1, 300, 7, 8, 9, 8, 10);

select * from customer_feedback
select * from customer_benefit


/*
508	108	100008	3.19	7
509	109	100009	3.99	44

510	110	100010	5.99	14
511	101	100002	3.99	17

508	108	100008	3.19	5
531	109	100010	5.99	5
*/


