/*
Exercise: Find customers who have placed at least one order.

Topics:
- EXISTS
- Correlated subqueries
- Foreign-key relationships

What I learned:
EXISTS checks whether a correlated subquery returns at least
one row. It is useful when checking relationships without
needing to retrieve or aggregate matching rows.
*/

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city 
FROM customers c 
WHERE EXISTS(
    SELECT 1
    FROM orders o
    WHERE c.customer_id = o.customer_id
);