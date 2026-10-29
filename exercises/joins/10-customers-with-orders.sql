/*
Problem: Find customers who have placed at least one order.

Topics: LEFT JOIN, IS NOT NULL, DISTINCT

What I learned:
- Filter for matching orders using IS NOT NULL.
- DISTINCT removes duplicate customer records caused by multiple orders.
- EXISTS is an alternative when checking whether related records exist.
*/

SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id 
    WHERE o.order_id IS NOT NULL 
ORDER BY c.customer_id;