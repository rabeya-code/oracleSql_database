
DROP table e;


----1.create a table
CREATE TABLE e(
  eid NUMBER (10) ,
  ename VARCHAR2 (20) ,
  salary NUMBER (10),
  hire_date date,
  address VARCHAR2(30)  
);



--2.create primary key
alter TABLE e 
add constraint eid_pk PRIMARY KEY (eid);



--3.inser data
INSERT INTO e(eid,ename,salary,hire_date,address) VALUES (&eid,'&ename',&salary,to_date('&date','dd-mm-yyyy'),'&address');
INSERT INTO e(eid,ename,salary,hire_date,address) VALUES (&eid,'&ename',&salary,to_date('&date','dd-mm-yyyy'),'&address');
INSERT INTO e(eid,ename,salary,hire_date,address) VALUES (&eid,'&ename',&salary,to_date('&date','dd-mm-yyyy'),'&address');
INSERT INTO e(eid,ename,salary,hire_date,address) VALUES (&eid,'&ename',&salary,to_date('&date','dd-mm-yyyy'),'&address');
INSERT INTO e(eid,ename,salary,hire_date,address) VALUES (&eid,'&ename',&salary,to_date('&date','dd-mm-yyyy'),'&address');



--4. add two columns
ALTER TABLE e 
ADD (phone NUMBER(15),
    job_title VARCHAR2 (30)
);




SELECT * from e;


--5. make a quarry with 30% bouns.
SELECT ename, job_title,salary,salary+(salary*.30)
FROM e;



---6.min salary
SELECT ename, salary
from e 
where salary = (select min(salary) from e);


--7.update
UPDATE  e    
set job_title = 'maneger';


--8.create a view
CREATE VIEW emp01
AS SELECT ename, salary,job_title,address  
FROM e;



--9.create sequence

CREATE SEQUENCE emp_eid
INCREMENT BY 2
START WITH 001
NOCYCLE
NOCACHE;


--10.create INDEX
CREATE INDEX phone_num
on e (phone);