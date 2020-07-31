/*Inventory management view: This view conveys amount of products(stock) that are already in a branch, 
the amount of products that a particular branch owner replenishes(supplier_intake) on a regular basis, 
and the frequency at which products are being bought at each branch (supplier_intake_counter)

*/


CREATE view [inventory management] as 
SELECT p.product_id, p.supplier_id, bp.branch_id,p.product_name, p.cost_price, bp.[stock],p.supplier_intake,  p.supplier_intake_counter
FROM product p 
inner join branch_product bp on
p.product_id = bp.product_id

