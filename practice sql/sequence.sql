



--show all table in sthis schema
SELECT TABLE_name
FROM user_table;


CREATE SEQUENCE st_students_id
INCREAMENT BY 5
START WITH 100
NOCYCLE
NOCACHE;


SELECT st_students_id.CURRVAL
FROM DUAL ;

INSERT INTO STVU01 
VALUES (st_students_id.)