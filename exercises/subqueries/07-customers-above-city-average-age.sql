/*
Exercise: Find customers older than their city's average age.

Topics:
- Scalar subqueries
- Correlated subqueries
- AVG and ROUND
- Table aliases

What I learned:
A correlated subquery can calculate a different average for
each outer row by matching the inner customer's city to the
outer customer's city.
*/

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.city,
    c.age 
FROM customers c 
WHERE c.age > (
    SELECT 
        ROUND(AVG(c1.age), 2)
    FROM customers c1 
    WHERE c.city = c1.city
);