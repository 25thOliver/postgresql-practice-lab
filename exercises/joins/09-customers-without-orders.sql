/*
Problem: Find customers who have never placed an order.

Difficulty: Beginner
Topics: LEFT JOIN, IS NULL, anti-join

Requirements:
- Return the customer's ID, first name, and last name.
- Exclude customers with matching orders.
- Sort by customer ID.

Approach:
- LEFT JOIN retains every customer.
- Unmatched orders have NULL values in the order columns.
- WHERE o.order_id IS NULL identifies unmatched customers.

What I learned:
- LEFT JOIN combined with IS NULL is a common anti-join pattern.
- Count distinct customers when measuring customers who have orders.
- Order counts and customer counts are not necessarily the same.
*/

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id 
    WHERE o.order_id IS NULL
ORDER BY c.customer_id;