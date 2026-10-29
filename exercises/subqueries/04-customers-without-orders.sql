/*
Problem: Find customers who have never placed an order.

Topics: Subqueries, NOT IN, WHERE

What I learned:
- The inner query retrieves customer IDs from orders.
- NOT IN excludes customer IDs that appear in the subquery result.
- The outer query returns customers with no matching orders.
- NOT IN requires care if the subquery can return NULL values.
*/

SELECT
    customer_id,
    first_name,
    last_name
FROM customers 
WHERE customer_id NOT IN(
    SELECT
        customer_id
    FROM orders
);