/*

-- Table creation Queries

*/

-- Select database

USE RetailStoreManagement_Team10;

-- 1. employee

CREATE TABLE [employee] (
  [employee_id] int not null,
  [branch_id] int,
  [first_name] varchar(250),
  [last_name] varchar(250),
  [type] varchar(250),
  [employee_password] varbinary(max)
);

-- 2. product

CREATE TABLE [product] (
  [product_id] int not null,
  [supplier_id] int,
  [product_name] varchar(250),
  [cost_price] float,
  [product_discount] int,
  [discount_on_quantity] int,
  [supplier_intake] int,
  [supplier_intake_counter] int
);

-- 3. supplier

CREATE TABLE [supplier] (
  [supplier_id] int not null,
  [supplier_name] varchar(250)
);

-- 4. branch

CREATE TABLE [branch] (
  [branch_id] int not null,
  [branch_name] varchar(250),
  [location_id] int
);

-- 5. branch_product

CREATE TABLE [branch_product] (
  [branch_product_id] int not null,
  [branch_id] int,
  [product_id] int,
  [selling_price] float,
  [stock] int
);

-- 6. branch_customer

CREATE TABLE [branch_customer] (
  [branch_id] int not null,
  [customer_id] int not null
);

-- 7. order_branch_product

CREATE TABLE [order_branch_product] (
  [order_branch_product_id] int not null,
  [branch_product_id] int,
  [order_id] int,
  [quantity] int,
  [discounted_selling_price] float,
  [sale_profit] float
);

-- 8. customer

CREATE TABLE [customer] (
  [customer_id] int not null,
  [customer_discount] int,
  [first_name] varchar(250),
  [last_name] varchar(250),
  [customer_type] varchar(250),
  [customer_password] varchar(max)
);

-- 9. order

CREATE TABLE [order] (
  [order_id] int not null,
  [customer_id] int,
  [order_date] int,
  [order_type] varchar(250),
  [total_price] float
);

-- 10. customer_benefit

CREATE TABLE [customer_benefit] (
  [customer_benefit_id] int not null,
  [order_id] int,
  [customer_satisfaction] float,
  [customer_discounted_total_price] float
);

-- 11. location

CREATE TABLE [location] (
  [location_id] int not null,
  [street_address] varchar(250),
  [house_no] varchar(250),
  [area] varchar(250),
  [zip_code] int
);

-- 12. delivery

CREATE TABLE [delivery] (
  [delivery_id] int not null,
  [order_id] int,
  [delivery_personnel_id] int,
  [location_id] int,
  [estimated_time] time,
  [start_time] datetime,
  [end_time] datetime,
  [delivery_fee] float,
  [total_price_with_delivery_fee] float
);

-- 13. customer_feedback

CREATE TABLE [customer_feedback] (
  [customer_feedback_id] int not null,
  [order_id] int,
  [timely_delivery] int,
  [stock_availability] int,
  [quality] int,
  [employee_response] int,
  [cleanliness] int
);

-- 14. delivery_personnel

CREATE TABLE [delivery_personnel] (
  [delivery_personnel_id] int not null,
  [availability] bit,
  [first_name] varchar(250),
  [last_name] varchar(250),
  [delivery_personnel_password] varbinary(max)
);


