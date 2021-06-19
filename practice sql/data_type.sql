--1.
CREATE TABLE  prac(
    id number (10) PRIMARY KEY,
    name varchar (20) NOT NULL,
    salary number (10) DEFAULT 0.0,
    mobile number(14) UNIQUE

);

select * from prac;


insert into prac (id,name,salary,mobile) values (1,'ali',15000,01987623456);
select * from prac;

--2.
DROP TABLE PERSON ;



create TABLE PERSON(
    p_id NUMBER(9),
    p_name VARCHAR2 (30) NOT NULL,
    email VARCHAR2 (50),
    mobile VARCHAR2 (14),
    salary NUMBER (6,2) CHECK(salary>5000 and salary<50000) ,
    CONSTRAINT PERSON_p_ID_PK PRIMARY KEY (p_ID),
    CONSTRAINT PERSON_p_NAME_UK UNIQUE (email),
    CONSTRAINT PERSON_MOBILE_UK UNIQUE(mobile)

);
desc PERSON;
SELECT * FROM PERSON ;
INSERT INTO PERSON VALUES(1,'mehedi','mehedi@gmail.com','019876432224',20000);



