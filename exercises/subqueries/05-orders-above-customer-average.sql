/*
Problem: Find orders whose amounts exceed the average order amount
for their respective customers.

Topics: Correlated subqueries, AVG, WHERE, table aliases

What I learned:
- The inner query calculates an average for a specific customer.
- Table aliases distinguish the outer and inner orders tables.
- The correlation condition links both queries by customer_id.
- The subquery is evaluated in relation to each outer order.
- A single-order customer has no order above their own average.
*/

SELECT 
    o.order_id,
    o.customer_id,
    o.order_amount,
    status
FROM orders o 
WHERE o.order_amount > (
    SELECT 
        AVG(i.order_amount)
    FROM orders i
    WHERE i.customer_id = o.customer_id
);