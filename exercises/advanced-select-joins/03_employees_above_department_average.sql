
/*
Exercise 03: Employees Earning Above Department Average

Objective:
Identify employees whose salaries are higher than
the average salary within their respective departments.

Concepts:
- INNER JOIN
- Correlated subqueries
- AVG() aggregate function
- WHERE filtering

Note:
The subquery calculates a separate average for each
department. Employees earning exactly the average
are excluded.
*/

SELECT
    e.name AS employee,
    d.name AS department,
    e.salary
FROM department d
INNER JOIN employee e
    ON d.id = e.department_id
WHERE e.salary > (
    SELECT AVG(e1.salary)
    FROM employee e1
    WHERE e1.department_id = d.id
);
