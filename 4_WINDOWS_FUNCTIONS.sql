---a.)UPDATING THE CHANGES TO EMPLOYEE TABLE

CREATE TABLE Employee (
    id INT,
    salary DECIMAL(10, 2),
    age INT,
    phone_number VARCHAR(15),
    email_id VARCHAR(255),
    location VARCHAR(100)
);

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (1, 50000, 30, '123-456-7890', 'john@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (2, 60000, 35, '987-654-3210', 'sarah@example.com', 'Paris');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (3, 75000, 42, '555-123-4567', 'mike@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (4, 40000, 28, '111-222-3333', 'anna@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (5, 55000, 31, '444-555-6666', 'david@example.com', 'Sydney');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (1, 65000, 36, '777-888-9999', 'laura@example.com', 'Tokyo');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (7, 70000, 39, '222-333-4444', 'peter@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (8, 45000, 27, '888-999-0000', 'emily@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (9, 52000, 33, '333-444-5555', 'megan@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (10, 58000, 37, '666-777-8888', 'alex@example.com', 'Paris');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (2, 60000, 35, '555-666-7777', 'samantha@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (12, 48000, 26, '777-888-9999', 'daniel@example.com', 'Tokyo');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (13, 62000, 32, '444-555-6666', 'lisa@example.com', 'New York');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (5, 56000, 30, '222-333-4444', 'jennifer@example.com', 'Berlin');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (15, 70000, 35, '111-222-3333', 'matthew@example.com', 'London');

INSERT INTO Employee (id, salary, age, phone_number, email_id, location)
VALUES (12, 53000, 31, '888-999-0000', 'natalie@example.com', 'Paris');

---b.)CONSECUTIVE NUMBERS:

SELECT id,
salary,
age,
phone_number,
email_id,
location,
ROW_NUMBER()
OVER(PARTITION BY LOCATION)AS Consecutive_Num
FROM EMPLOYEE;

---c.)Derived Table employee_updated

DROP TABLE IF EXISTS employee_updated;
CREATE TABLE employee_updated AS
SELECT DISTINCT * FROM EMPLOYEE;

---d.)DUPLICATE PH_NO:

WITH DUPLICATES AS(
SELECT *,
DENSE_RANK()
OVER(PARTITION BY phone_number ORDER BY ID)AS Dup_Ph_No
from employee)
SELECT * FROM DUPLICATES WHERE Dup_Ph_No=2;

---e.)Implementation Logic Of Row_Number & Row_Id:

SELECT
email_id,
salary,
location,
ROW_NUMBER()
OVER(PARTITION BY location ORDER BY salary) AS Row_Num
FROM employee;

---Row_id is used to identify the records uniquely from the table of data

---f.)common table expressions:

--- case1:Arranging employee in the increasing order of their salary.

WITH INC_ORDER AS(
SELECT
id,
salary,
email_id,
location,
ROW_NUMBER()
OVER(ORDER BY salary)AS IO_of_SALARY
FROM employee)
SELECT * FROM INC_ORDER;

--- case2:Arranging employee in the increasing order of their salary location wise.

WITH INC_SAL_LOC AS(
SELECT
id,
salary,
email_id,
location,
ROW_NUMBER()
OVER(PARTITION BY location ORDER BY salary)AS SALARY_LOC_Wise
FROM employee)
SELECT * FROM INC_SAL_LOC;

--- case3: Second Highest Salary In Each Location .

WITH SH_SAL AS(
SELECT *,
DENSE_RANK()
OVER(PARTITION BY location ORDER BY salary DESC)AS SECOND_HIGH_SAL
FROM EMPLOYEE)
SELECT * FROM SH_SAL WHERE SECOND_HIGH_SAL=2;

--- case4:Employee With Least Salary In Each Location.

WITH LEAST AS(
SELECT *,
DENSE_RANK()
OVER(PARTITION BY location ORDER BY salary) AS LEAST_SAL
FROM EMPLOYEE)
SELECT * FROM LEAST WHERE LEAST_SAL=1;



