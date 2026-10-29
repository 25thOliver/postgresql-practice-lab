/*
Problem: Calculate the total amount spent by each customer,
including customers who have never placed an order.

Topics: LEFT JOIN, SUM, GROUP BY, COALESCE

What I learned:
- LEFT JOIN keeps all customers, including those without orders.
- SUM adds up each customer's order amounts.
- GROUP BY calculates a separate total for each customer.
- COALESCE replaces NULL totals with 0.
*/

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COALESCE(SUM(o.order_amount), 0) AS Total_Spent
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY c.customer_id;