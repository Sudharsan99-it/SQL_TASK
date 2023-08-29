---DDL COMMANDS

---1.CREATE:

CREATE TABLE CUSTOMER(
 Customer_ID INT,
 Order_Date DATE,
 Order_ID INT PRIMARY KEY,
 Product varchar(30),
 Product_ID int,
 Sales_Date Date,
 receiver_location varchar(20)
);

---2.ALTER:

ALTER table CUSTOMER ADD column TOTAL_AMOUNT INT(7);

---2.=(i) ALTER WITH RENAME For Column.

ALTER table CUSTOMER RENAME column Sales_Date to Payment_Date;

---2.=(ii) ALTER WITH RENAME For Table.

ALTER table CUSTOMER RENAME to CLIENT;
 
---3.) DROP:

DROP TABLE CLIENT;   ---For droping the table from a database.
DROP DATABASE USER;   ---For droping the database.

---4.) TRUNCATE:

TRUNCATE TABLE CLIENT; 
 

---DML COMMANDS

---5.) INSERT: 

INSERT INTO CLIENT
(Customer_ID,Order_Date,Order_ID,Product,Product_ID,Payment_Date,receiver_location,TOTAL_AMOUNT) VALUES
(201,'2023-10-12',545948,'MILK',19228,'2023-10-15','CHENNAI',5000),
(203,'2023-09-23',545946,'BREAD',19228,'2023-10-27','GOA',1200),
(202,'2023-11-23',547948,'VEGETABLES',19228,'2023-12-02','OOTY',9000),
(205,'2023-10-23',543958,'EGGS',19228,'2023-11-01','TUTICORIN',3000);

---5.) UPDATE:

UPDATE CLIENT SET Customer_ID='099' WHERE receiver_location='TUTICORIN';
  
---6.) DELETE:

DELETE FROM CLIENT WHERE Customer_ID=203;