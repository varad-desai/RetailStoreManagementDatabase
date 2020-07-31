/*

-- Table level check constraints

*/

USE RetailStoreManagement_Team10;


--1) employee Table:

ALTER TABLE dbo.[employee]
ADD CONSTRAINT employee_type 
CHECK(type in ('Fulltime','contract'));


--2) product Table:

ALTER TABLE dbo.[product]
ADD CONSTRAINT check_cost_price
CHECK(cost_price >= 0);

ALTER TABLE dbo.[product]
ADD CONSTRAINT check_product_discount 
CHECK(product_discount >= 0);

ALTER TABLE dbo.[product]
ADD CONSTRAINT check_discount_on_quantity 
CHECK(discount_on_quantity >= 0);

ALTER TABLE dbo.[product]
ADD CONSTRAINT check_supplier_intake 
CHECK(supplier_intake > 0);


--3) supplier Table

-- Dont need any check constraints


--4) branch Table

-- Dont need any check constraints


--5) branch_product Table:

ALTER TABLE dbo.[branch_product]
ADD CONSTRAINT check_selling_price 
CHECK(selling_price >= 0);

ALTER TABLE dbo.[branch_product]
ADD CONSTRAINT check_stock 
CHECK(stock >= 20);


--6) branch_customer Table

-- Dont need any check constraints


--7) order_branch_product Table:

ALTER TABLE dbo.[order_branch_product]
ADD CONSTRAINT check_quantity 
CHECK(quantity > 0);

ALTER TABLE dbo.[order_branch_product]
ADD CONSTRAINT check_discounted_selling_price 
CHECK(discounted_selling_price >= 0);


--8) customer Table:

ALTER TABLE dbo.[customer]
ADD CONSTRAINT check_customer_type 
CHECK(customer_type in ('regular','premium'));

ALTER TABLE dbo.[customer]
ADD CONSTRAINT check_customer_discount
CHECK(customer_discount >= 0); 
-- ?? not sure arent we having some set type of customer_discounts?

--9) order Table:

ALTER TABLE dbo.[order]
ADD CONSTRAINT check_order_type 
CHECK(order_type in ('onsite','pickup','delivery'));

ALTER TABLE dbo.[order]
ADD CONSTRAINT check_total_price 
CHECK(total_price > 0);

--10) customer_benefit Table

ALTER TABLE dbo.[customer_benefit]
ADD CONSTRAINT check_customer_satisfaction 
CHECK(customer_satisfaction >= 0);

ALTER TABLE dbo.[customer_benefit]
ADD CONSTRAINT check_customer_discounted_total_price 
CHECK(customer_discounted_total_price >= 0);


--11) location Table

-- Dont need any check constraints


--12) delivery Table

ALTER TABLE dbo.[delivery]
ADD CONSTRAINT check_delivery_fee 
CHECK(delivery_fee >= 0);

ALTER TABLE dbo.[delivery]
ADD CONSTRAINT check_start_and_end_time
CHECK(end_time >= start_time);


--13) customer_feedback Table
select * from dbo.[customer_feedback];

ALTER TABLE dbo.[customer_feedback]
ADD CONSTRAINT check_timely_delivery
CHECK(timely_delivery BETWEEN 0 AND 10);

ALTER TABLE dbo.[customer_feedback]
ADD CONSTRAINT check_stock_availablity
CHECK(stock_availability BETWEEN 0 AND 10);

ALTER TABLE dbo.[customer_feedback]
ADD CONSTRAINT check_quality
CHECK(quality BETWEEN 0 AND 10);

ALTER TABLE dbo.[customer_feedback]
ADD CONSTRAINT check_employee_response
CHECK(employee_response BETWEEN 0 AND 10);

ALTER TABLE dbo.[customer_feedback]
ADD CONSTRAINT check_cleanliness
CHECK(cleanliness BETWEEN 0 AND 10);


--14) delivery_personnel Table

-- Dont need any check constraints
