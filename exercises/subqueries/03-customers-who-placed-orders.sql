/*
Problem: Find customers who have placed at least one order.

Topics: Subqueries, IN, SELECT

What I learned:
- The inner query retrieves customer IDs from orders.
- IN checks whether a customer ID appears in the subquery result.
- The customers table returns each matching customer once.
- A subquery can filter records without using a JOIN.
*/

SELECT
    customer_id,
    first_name,
    last_name
FROM customers 
WHERE customer_id IN(
    SELECT 
        customer_id
    FROM orders
);

