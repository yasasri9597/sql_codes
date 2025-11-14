-- Show employees with their department names
SELECT e.name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department = d.department_id;

-- Show all departments, even those with no employees
SELECT d.department_name, e.name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department;
