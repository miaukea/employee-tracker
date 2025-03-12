SELECT departments.department_name AS department, roles.title
FROM roles
LEFT JOIN departments
ON roles.department_id = departments.department_id

SELECT roles.title AS roles, employees.last_name
FROM employees
LEFT JOIN roles
ON employees.role_id = roles.id 

ORDER BY employees.last_name; 