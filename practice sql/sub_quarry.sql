--1.who get max salary
 select first_name,last_name ,salary
from employees
where salary=(select max(salary)from employees);


--2.
select first_name,last_name 
from employees
where salary>(select salary from employees where last_name='Abel');


--3.whose job id same

salect last_name, job_id,employee_id
from employees
where job_id=(select job_id
                from employees
                where employee_id=141);



--4.lowest avg salary
select last_name, avg(salary)
from employees
group by job_id
having avg(salary)=(select min(avg(salary))
                from employees
                 group by job_id );



--5.
sellect







