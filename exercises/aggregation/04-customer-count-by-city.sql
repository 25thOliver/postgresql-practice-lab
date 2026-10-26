/*
Problem: Summarize customer distribution by city
Difficulty: Beginner
Topics: GROUP BY, COUNT, AVG, ROUND, ORDER BY

Requirements:
- Return each city.
- Count customers in each city.
- Calculate average customer age to two decimal places.
- Sort by customer count, highest first.

Approach:
GROUP BY creates one group per city.
COUNT(*) counts rows in each group.
AVG(age) calculates the average age.
ROUND(..., 2) limits the average to two decimal places.
ORDER BY customer_num DESC sorts from highest to lowest.

What I learned:
- GROUP BY enables aggregation by category.
- COUNT(*) counts records in each group.
- AVG() calculates a mean.
- DESC specifies descending sort order.

Expected result: 5 rows
*/

SELECT
    city,
    COUNT(*) AS customer_num,
    ROUND(AVG(age), 2) AS average_age
FROM customers
GROUP BY city
ORDER BY customer_num DESC;