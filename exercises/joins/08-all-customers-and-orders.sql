/*
Problem: List every customer with their order details,
including customers who have never placed an order.

Difficulty: Beginner
Topics: LEFT JOIN, table aliases, foreign keys, ORDER BY

Requirements:
- Return every customer.
- Show customer and order details.
- Keep customers who have no matching orders.
- Sort by customer ID.

Approach:
- customers is the left table.
- LEFT JOIN retains all rows from the left table.
- The ON condition matches records by customer_id.
- Unmatched order columns are returned as NULL.

What I learned:
- INNER JOIN keeps only matching rows.
- LEFT JOIN preserves all rows from the left table.
- One customer can appear on multiple rows when they
  have multiple orders.
- NULL order fields indicate no matching order.
*/

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    o.order_id,
    o.order_date,
    o.order_amount,
    o.status
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;