
/*
Exercise 02: Second Highest Salary

Objective:
Find the second-highest distinct salary across all employees.

Concepts:
- GROUP BY
- ORDER BY DESC
- LIMIT and OFFSET

Note:
GROUP BY removes duplicate salary values, so employees
earning the same salary count as one distinct salary.
*/

SELECT
    salary AS second_highest_salary
FROM employee
GROUP BY salary
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
