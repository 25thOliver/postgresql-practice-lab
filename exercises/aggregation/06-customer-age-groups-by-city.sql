/*
Problem: Compare customer age groups by city
Difficulty: Beginner
Topics: GROUP BY, COUNT, SUM, CASE WHEN, ORDER BY

Requirements:
- Count all customers in each city.
- Count customers younger than 30.
- Count customers aged 30 and above.
- Sort by total customer count, highest first.

Approach:
GROUP BY creates one group per city.
COUNT(*) counts all customer records.
CASE WHEN assigns 1 to matching customers and 0 otherwise.
SUM adds those values to calculate conditional counts.
ORDER BY DESC sorts from highest to lowest.

What I learned:
- Conditional aggregation calculates multiple metrics
  from the same grouped dataset.
- CASE WHEN expresses row-level conditions.
- SUM can count rows that meet a condition.
- Age groups below 30 and 30 or above are distinct.

Expected result: 5 rows
*/

SELECT
    city,
    COUNT(*) AS Total_customers,
    SUM(CASE WHEN age < 30 THEN 1 ELSE 0 END) AS Below_thirty,
    SUM(CASE WHEN age >= 30 THEN 1 ELSE 0 END) AS Thirty_and_above
FROM customers
GROUP BY city
ORDER BY Total_customers DESC;

