
/*
Problem: Find cities with at least 18 customers
Difficulty: Beginner
Topics: GROUP BY, COUNT, HAVING, ORDER BY

Requirements:
- Group customers by city.
- Count customers in each city.
- Return only cities with at least 18 customers.
- Sort by customer count, highest first.

Approach:
GROUP BY creates a group for each city.
COUNT(*) calculates the size of each group.
HAVING filters groups based on the aggregate count.
ORDER BY DESC sorts the qualifying groups.

What I learned:
- WHERE filters rows before aggregation.
- HAVING filters groups after aggregation.
- Aggregate conditions such as COUNT(*) >= 18
  belong in HAVING when filtering grouped results.

Expected result: 4 rows
*/

SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
HAVING COUNT(*) >= 18
ORDER BY customer_count DESC;
EOF
