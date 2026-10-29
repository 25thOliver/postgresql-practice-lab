/*
Problem: Find the single order with the highest order amount.

Topics: ORDER BY, DESC, LIMIT

What I learned:
- ORDER BY sorts rows based on a column.
- DESC sorts values from highest to lowest.
- LIMIT 1 returns only the first row.
- Combining ORDER BY DESC with LIMIT 1 finds the highest value.
*/

SELECT 
    order_id,
    customer_id,
    order_date,
    order_amount,
    status 
FROM orders 
ORDER BY order_amount DESC 
LIMIT 1;