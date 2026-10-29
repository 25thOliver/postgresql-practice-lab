/*
Problem: Find customers whose age is greater than the average age.

Topics: Subqueries, AVG, WHERE

What I learned:
- A subquery can calculate a value used by an outer query.
- AVG calculates the average of a column.
- The inner query returns one value for the outer query to compare.
- WHERE filters customers based on that calculated average.
*/

SELECT 
    customer_id,
    first_name,
    last_name,
    age
FROM customers 
WHERE age > (
    SELECT 
        AVG(age)
    FROM customers
);