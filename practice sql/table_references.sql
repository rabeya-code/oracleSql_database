--child table
create table address 
(
    id NUMBER(10) PRIMARY KEY ,
    village VARCHAR (20)
);

--parents table
create TABLE customer
(
    id NUMBER(10) PRIMARY KEY,
    name VARCHAR (120) NOT NULL,
    mobile VARCHAR (114)
    CONSTRAINT cust_mobile_UK UNIQUE
    email VARCHAR(60)   UNIQUE,
    address_id NUMBER (10),
    CONSTRAINT cust_addr_FK FOREIGN KEY (address_id) REFERENCE address(id)

);





DROP TABLE college ;
DROP TABLE student ;
DROP TABLE bill ;

--2.relation between college n studnt.
CREATE TABLE college
(
college_id NUMBER(10) PRIMARY KEY ,
col_name VARCHAR2 (20) NOT NULL,
col_address VARCHAR2 (30)
);




CREATE TABLE student
(
    student_id NUMBER(10) UNIQUE,
    student_name VARCHAR2 (20) NOT NULL,
    col_id NUMBER (10),    
    st_mobile NUMBER (14),
    st_address VARCHAR2 (30),

CONSTRAINT cust_addr_FK FOREIGN KEY (col_id) REFERENCES college(college_id)

);


CREATE TABLE bill
(
    bill_id NUMBER(10) UNIQUE,
    st_id NUMBER(10) NOT NULL,
    coll_id NUMBER (10) NOT NULL,
    pay_method NUMBER(20),
    bill_date date ,
CONSTRAINT stid_FK FOREIGN KEY (st_id) REFERENCES student (student_id),
CONSTRAINT colid_FK FOREIGN KEY (coll_id) REFERENCES college (college_id)


);


DESC college ;
DESC student ;
DESC bill ;