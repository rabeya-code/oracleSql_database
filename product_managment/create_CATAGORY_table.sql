DROP TABLE catagory;

CREATE TABLE catagory (
    catagory_id NUMBER (6) primary key,
    catagory_name VARCHAR (20)
);

INSERT INTO catagory
(catagory_id,catagory_name) VALUES (101,'food item');
INSERT INTO catagory
(catagory_id,catagory_name) VALUES (102,'soft drink');
INSERT INTO catagory
(catagory_id,catagory_name) VALUES (103,'groccares');

SELECT * FROM catagory;

 DESC CATAGORY;


