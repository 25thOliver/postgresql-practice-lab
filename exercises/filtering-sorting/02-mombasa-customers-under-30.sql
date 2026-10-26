/*
Problem: Find Mombasa customers younger than 30
Difficulty: Beginner
Topic: Filtering multiple conditions
Pattern: WHERE + AND

Approach:
Filter customers by city and age, requiring both
conditions to be true.

What I learned:
AND returns rows only when both conditions are true.
The comparison age < 30 excludes customers aged 30 or older.

*/

SELECT * 
FROM customers
WHERE city = 'Mombasa'
    AND age < 30;