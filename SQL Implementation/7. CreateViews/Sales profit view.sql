/*VIEW FOR SALES PROFIT: This view exhibits the sale profit of an order placed 
by a customer which includes particular products from a specific branch. 
Sale_profit is computed by the difference between quantity * discounted_selling_price and cost_price.
*/

CREATE VIEW [sales_profit_view] as
SELECT  distinct p.product_id, bp.branch_product_id,obp.order_id,cost_price, quantity, discounted_selling_price,
(quantity*discounted_selling_price) as [Discounted Selling price of all the products in an order],
(sale_profit*quantity) as [Total profit of that product on the order]
FROM branch_product bp
inner join product p on
p.product_id = bp.product_id
inner join order_branch_product obp on
bp.branch_product_id = obp.branch_product_id








