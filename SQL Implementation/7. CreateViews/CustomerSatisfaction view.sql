/*Customer Satisfaction view: This view indicates the customer_feedback for a particular order, 
these values are then used to calculate the customer_satisfaction column.
*/

CREATE VIEW [CustomerSatisfaction] as 
SELECT o.order_id, o.customer_id, o.order_type, 
cf.timely_delivery,cf.stock_availability,cf.quality,cf.employee_response,cf.cleanliness, cb.customer_satisfaction
from [order] o 
inner join customer_benefit cb on
o.order_id = cb.order_id
inner join customer_feedback cf on
cf.order_id = o.order_id
