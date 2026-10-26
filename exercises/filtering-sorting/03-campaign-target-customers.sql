/*
Problem: Find eligible customers for a marketing campaign
Difficulty: Beginner
Topics: IN, BETWEEN, multiple conditions, ORDER BY

Requirements:
- Customers must live in Nairobi or Kisumu.
- Signup date must fall within 2025.
- Age must be between 25 and 40, inclusive.
- Show the specified customer details.
- Sort by signup date, newest first.

Approach:
Use IN to filter the two cities, BETWEEN for the
date and age ranges, AND to enforce all criteria,
and ORDER BY DESC to sort by the newest signup.

What I learned:
- IN simplifies matching multiple possible values.
- BETWEEN includes both endpoints.
- AND requires all conditions to be true.
- DESC sorts from newest to oldest for dates.

Expected result: 7 rows
*/

SELECT
    customer_id,
    first_name,
    last_name,
    city,
    signup_date,
    age
FROM customers 
WHERE city IN ('Nairobi', 'Kisumu')
    AND signup_date BETWEEN '2025-01-01' AND '2025-12-31'
    AND age BETWEEN 25 AND 40
ORDER BY signup_date DESC;