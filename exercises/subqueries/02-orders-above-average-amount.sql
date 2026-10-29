/*
Problem: Find orders whose amount is greater than the average order amount.

Topics: Subqueries, AVG, WHERE

What I learned:
- AVG calculates the average order amount.
- A scalar subquery returns a single value.
- The outer query compares each order against that average.
- WHERE filters out orders that do not exceed the average.
*/

SELECT 
    order_id,
    customer_id,
    order_amount,
    status 
from orders 
where order_amount > (
    select 
        avg(order_amount)
    from orders
);