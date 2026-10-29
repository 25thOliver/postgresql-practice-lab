/*
Problem: Find customers who have placed more than one order.

Topics: LEFT JOIN, COUNT, GROUP BY, HAVING

What I learned:
- LEFT JOIN preserves customers even if they have no orders.
- COUNT(o.order_id) counts actual orders, ignoring NULL values.
- GROUP BY creates one group per customer.
- HAVING filters groups based on aggregate conditions.
*/

SELECT  
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS customer_orders
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id 
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(o.order_amount) > 1;