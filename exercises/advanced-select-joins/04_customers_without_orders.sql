
/*
Exercise 04: Customers Who Never Ordered

Objective:
Identify customers who have never placed an order.

Concepts:
- LEFT JOIN
- NULL filtering
- Anti-join pattern

Note:
A LEFT JOIN preserves all customers. Customers without
matching orders have NULL in the order columns.
Filtering on order_id IS NULL identifies those customers.
*/

SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
