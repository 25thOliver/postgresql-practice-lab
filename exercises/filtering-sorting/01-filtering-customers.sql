/*
Problem: Find customers from Nairobi
Difficulty: Beginner
Topic: Filtering
Pattern: Equality comparison with WHERE

Approach:
Select all columns from customers and retain rows
where city equals 'Nairobi'.

What I learned:
WHERE filters rows based on a condition.
Without ORDER BY, result order is not guaranteed.

*/

SELECT *
FROM customers
WHERE city = 'Nairobi';