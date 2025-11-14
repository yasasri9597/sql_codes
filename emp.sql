WITH RECURSIVE emp_tree AS (
    SELECT employee_id, name, manager_id, 1 AS level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employee_id, e.name, e.manager_id, t.level + 1
    FROM employees e
    JOIN emp_tree t
    ON e.manager_id = t.employee_id
)
SELECT * FROM emp_tree ORDER BY level;
