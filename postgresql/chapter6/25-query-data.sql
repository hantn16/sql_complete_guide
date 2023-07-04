-- SELECT e.id AS employee_id,e.first_name,e.last_name,p.title
-- FROM employees AS e
-- LEFT JOIN employees_projects AS ep ON ep.employee_id = e.id
-- LEFT JOIN projects as p ON ep.project_id = p.id;
-- SELECT e.id AS employee_id,e.first_name,e.last_name,p.title
-- FROM employees AS e
-- INNER JOIN employees_projects AS ep ON ep.employee_id = e.id
-- INNER JOIN projects as p ON ep.project_id = p.id;
-- SELECT e.id AS employee_id,e.first_name,e.last_name,t.name AS team_name 
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;

SELECT e.id AS employee_id,e.first_name, e.last_name,t.name as team_name,b.name as building
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
LEFT JOIN buildings AS b ON t.building_id = b.id
WHERE t.name LIKE 'Data%'
ORDER BY e.last_name;