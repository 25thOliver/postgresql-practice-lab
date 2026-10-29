/*
Problem: Find customers whose total spending exceeds KES 5,000.

Topics: LEFT JOIN, SUM, GROUP BY, HAVING

What I learned:
- LEFT JOIN connects customers with their orders.
- SUM calculates each customer's total spending.
- GROUP BY creates one group per customer.
- HAVING filters customers based on their total spending.
- WHERE filters individual rows, while HAVING filters aggregated groups.
*/

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(o.order_amount) AS total_spending
FROM customers c 
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(o.order_amount) > 5000; 