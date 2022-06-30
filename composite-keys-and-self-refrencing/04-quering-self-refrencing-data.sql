SELECT e.first_name employee_firstname,
       e.last_name  employee_lastname,
       s.first_name supervisor_firstname,
       s.last_name  supervisor_lastname
FROM employees e
         INNER JOIN employees s ON e.supervisor_id = s.id;