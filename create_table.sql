



-- create user/schema;
CREATE USER user_name
	IDENTIFIED BY password;
-- grant permissions like create sesssion, create table, etc
GRANT crate session, create table ...
to user_name;
-- assign table space for user
-- must be connect system
 alter user usr_name quota 50m on system;

-- show all tables in schema/user
SELECT table_name
	FROM user_tables
	ORDER BY table_name;
-- create a simple table
CREATE TABLE students (
  ID number(11) primary key,
  studentName varchar2(60),
  mobile varchar2(11),
  studentAddress varchar2(200));
  
 -- show table describe
 desc table_name;

--data insert in students table
INSERT INTO students (ID ,name, mobile ,address)
VALUES (&Id, &name, &mobile, &address);


--

