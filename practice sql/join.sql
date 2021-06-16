--1.Natural JOIN
SELECT  e.department_id,ROUND(max(e.salary))
FROM EMPLOYEES e 
JOIN DEPARTMENTS d 
on e.department_id = d.department_id
GROUP BY e.department_id
HAVING max(e.salary)>10000;


--2.self-join
SELECT worker.last_name emp, manager.last_name mgr 
from EMPLOYEES worker JOIN EMPLOYEES manager  
ON (worker.manager_id=manager.employee_id);