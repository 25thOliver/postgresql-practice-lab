
/*
Exercise 01: Department Highest Salaries

Objective:
Find employees who earn the highest salary in each department.

Concepts:
- INNER JOIN
- Correlated subqueries
- Aggregate functions (MAX)
- Filtering with WHERE

Note:
Returns all employees tied for the highest salary
within their respective departments.
*/

SELECT
    d.name AS department,
    e.name AS employee,
    e.salary
FROM department d
INNER JOIN employee e
    ON d.id = e.department_id
WHERE e.salary = (
    SELECT MAX(e1.salary)
    FROM employee e1
    WHERE e1.department_id = d.id
)
ORDER BY e.salary DESC;
