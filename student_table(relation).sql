

--1.college 
CREATE TABLE college
(
college_id NUMBER(10) PRIMARY KEY ,
name VARCHAR2 (20) NOT NULL,
col_address VARCHAR2 (30)
);



--2.student table.

CREATE TABLE student
(
    student_id NUMBER(10) UNIQUE,
    student_name VARCHAR2 (20) NOT NULL,
    st_mobile NUMBER (14),
    st_address VARCHAR2 (30),

CONSTRAINT cust_addr_FK FOREIGN KEY (student_name) REFERENCES college(name)

);