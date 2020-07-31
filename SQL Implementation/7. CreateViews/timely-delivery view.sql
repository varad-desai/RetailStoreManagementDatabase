/*Timely-delivery view: This view showcases the event of delivery, estimated time of occurance of the delivery, 
start_time and end_time of the delivery. Based on these three parameters, the customer gives a feedback 
( scores the delivery out of 10) to the rate the delivery.
*/

CREATE VIEW [timely delivery] as 
SELECT d.delivery_id, cf.order_id, d.location_id, datepart(mi,d.estimated_time) [Estimated arrival], d.start_time, d.end_time, cf.timely_delivery
FROM customer_feedback cf
inner join delivery d on
cf.order_id = d.order_id
