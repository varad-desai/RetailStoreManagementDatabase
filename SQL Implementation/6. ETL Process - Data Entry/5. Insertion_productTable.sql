-- use the database context
USE RetailStoreManagement_Team10;

-- 5. Insert rows into the product table
-- Product(product_id, supplier_id, product_name, cost_price, product_discount, discount_on_quantity, supplier_intake,  supplier_intake_counter)
INSERT INTO dbo.[product] VALUES (100001, 123,'candy', 1.00, 1,1,20, 0);
INSERT INTO dbo.[product] VALUES (100002, 145,'milk', 2.99, 1,1,120,0);
INSERT INTO dbo.[product] VALUES (100003, 167,'sugar', 3.09, 1,1,60,0);
INSERT INTO dbo.[product] VALUES (100004, 189,'bread', 1.99, 1,1,40,0);
INSERT INTO dbo.[product] VALUES (100005, 190,'cheese', 4.50, 1,1,40,0);
INSERT INTO dbo.[product] VALUES (100006, 109,'cream', 3.69, 1,1,35,0);
INSERT INTO dbo.[product] VALUES (100007, 198,'chocolates', 2.99, 1,1,40,0);
INSERT INTO dbo.[product] VALUES (100008, 176,'chips', 2.00, 1,1,60,1);
INSERT INTO dbo.[product] VALUES (100009, 154,'juice', 2.89, 1,1,70,0);
INSERT INTO dbo.[product] VALUES (100010, 132,'frozen', 4.89, 1,1,40,0);