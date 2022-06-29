# SELECT e.id employee_id, e.first_name, e.last_name, p.title
# FROM employees e
#          LEFT JOIN projects_employees pe on e.id = pe.employee_id
#          LEFT JOIN projects p on pe.project_id = p.id;

# SELECT t.id team_id, t.name team_name, e.first_name first_name, e.last_name lastname
# FROM teams t
#          LEFT JOIN employees e on t.id = e.team_id;

# SELECT e.id as employee_id, e.first_name, e.last_name, t.name as team_name
# FROM employees e
#          INNER JOIN teams t on t.id = e.team_id WHERE t.id = 2;

SELECT e.id as employee_id, e.first_name, e.last_name, t.name as team_name, cb.name building_name
FROM employees e
         INNER JOIN teams t on t.id = e.team_id
         INNER JOIN company_buildings cb on t.building_id = cb.id
WHERE building_id = 3 ORDER BY e.birthdate;
