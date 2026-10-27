
/*
Problem: Find cities with at least five customers under 30
Difficulty: Beginner to Intermediate
Topics: GROUP BY, CASE WHEN, SUM, HAVING, ORDER BY

Requirements:
- Return each qualifying city.
- Show total customers per city.
- Count customers younger than 30.
- Include cities with at least five customers under 30.
- Sort by the under-30 count, highest first.

Approach:
COUNT(*) calculates total customers.
SUM(CASE WHEN ...) counts customers under 30.
HAVING filters groups based on that conditional count.
ORDER BY DESC sorts the qualifying cities.

What I learned:
- WHERE filters individual rows before grouping.
- HAVING filters groups after aggregation.
- Conditional aggregation can be reused in HAVING.
- LIMIT is unnecessary when all qualifying groups are required.

Expected result: 3 rows
*/

SELECT
    city,
    COUNT(*) AS Total_customers,
    SUM(CASE WHEN age < 30 THEN 1 ELSE 0 END) AS under_thirty
FROM customers
GROUP BY city
HAVING SUM(CASE WHEN age < 30 THEN 1 ELSE 0 END) >= 5
ORDER BY under_thirty DESC
LIMIT 5;
