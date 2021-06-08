--1.log in system.
system/123456

--2.create user.
 create user amina identified by amina;


--3.grant user.
grant create session , create table ,create sequence ,create view to amina ;


--4.space/quota.
alter user amina quota 50m on system ;


--5.connect user .
conn amina/amina;


--6.create table .
create table students (id number(6),name varchar(15),address varchar(50));


--7.insert  data in student .
insert into students(id ,name ,address)
values (&id ,'&name' ,'&address')


--8.show data 
SELECT * FRoM students;

--9.desending by name
SELECT *
FROM students
ORDER BY name DESC;

--10.delet a row
SELECT *
DELET FROM students
WHERE name ='saiful';


--11. update row.
UPDATE students 
SET  name='rakib',address= 'mirpur'
WHERE id=876543 ;




--12.desc with full name .
SELECT first_name || ' ' || last_name as "Full name" 
salary from employees
WHERE salary < 10000
ORDER BY "full name" DESC ;


--13.max salary
SELECT FIRST_NAME , salary 
FROM employees;


--14.count
SELECT count(department_id)
FROM employees;


--15.having
SELECT department_id ,AVG(salary)
FROM employees 
GROUP BY department_id 
HAVING MAX(salary)>10000;












