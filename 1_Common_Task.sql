create database INTERNSHIP;
use INTERNSHIP; 
CREATE TABLE customer_099(
 customer_id INT,
 order_date DATE,
 order_id INT PRIMARY KEY,
 product varchar(40),
 product_id int,
 in_time time,
 out_time time,
 arrival_date DATE,
 dispact_date DATE,
 sender_location varchar(40),
 receiver_location varchar(40),
 social_media varchar(20)
);
INSERT INTO customer_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1111,'2023-01-11',25800,'Phone',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1111,'2023-02-20',25810,'Washing-machine',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1111,'2023-03-11',25820,'Refrigerator',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1111,'2023-03-19',25830,'AC',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1112,'2023-01-12',24800,'Phone',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1112,'2023-02-22',24810,'Washing-machine',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1112,'2023-03-12',24820,'Refrigerator',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1112,'2023-03-18',24830,'AC',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1113,'2023-01-11',22800,'Phone',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1113,'2023-02-20',22810,'Washing-machine',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1113,'2023-03-11',22820,'Refrigerator',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1113,'2023-03-19',22830,'AC',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1114,'2023-01-11',27800,'Phone',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1114,'2023-02-20',27810,'Washing-machine',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1114,'2023-03-11',27820,'Refrigerator',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1114,'2023-03-19',27830,'AC',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
INSERT INTO customer_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1115,'2023-01-11',29800,'Phone',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1115,'2023-02-20',29810,'Washing-machine',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1115,'2023-03-11',29820,'Refrigerator',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1115,'2023-03-19',29830,'AC',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');

select * from customer_099;

======================================================================================================================================================

CREATE TABLE order_table_099(
 customer_id INT,
 order_date DATE,
 order_id INT PRIMARY KEY,
 product varchar(40),
 product_id int,
 in_time time,
 out_time time,
 arrival_date DATE,
 dispact_date DATE,
 sender_location varchar(40),
 receiver_location varchar(40),
 social_media varchar(20)
 );
INSERT INTO order_table_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1111,'2023-01-11',25800,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','amazon'),
(1111,'2023-02-20',25810,'watch',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1111,'2023-03-11',25820,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','olx'),
(1111,'2023-03-19',25830,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1111,'2023-04-01',25840,'printer',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','snapdeal');
INSERT INTO order_table_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1112,'2023-01-12',24800,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1112,'2023-02-22',24810,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1112,'2023-03-12',24820,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1112,'2023-03-18',24830,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1112,'2023-04-02',24840,'printer',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','snapdeal');
INSERT INTO order_table_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1113,'2023-01-11',22800,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1113,'2023-02-20',22810,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1113,'2023-03-11',22820,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1113,'2023-03-19',22830,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1113,'2023-04-01',22840,'printer',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','snapdeal');
INSERT INTO order_table_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1114,'2023-01-11',27800,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','amazon'),
(1114,'2023-02-20',27810,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1114,'2023-03-11',27820,'pen',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','flipkart'),
(1114,'2023-03-19',27830,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart'),
(1114,'2023-05-01',27840,'grocery',005,'10:01:01','11:13:01','2023-05-09','2023-05-06','vellore','chennai','bigbasket');
INSERT INTO order_table_099
(customer_id,order_date,order_id,product,product_id,in_time,out_time,arrival_date,dispact_date,sender_location,receiver_location,social_media) VALUES
(1115,'2023-01-11',29800,'smartpen',001,'10:01:01','11:30:01','2023-01-09','2023-01-06','madurai','chennai','facebook'),
(1115,'2023-02-20',29810,'mouse',002,'10:03:01','11:05:01','2023-03-09','2023-03-06','mumbai','chennai','instagram'),
(1115,'2023-03-11',29820,'keyboard',003,'10:01:01','11:12:01','2023-02-09','2023-02-06','mumbai','chennai','facebook'),
(1115,'2023-03-19',29830,'monitor',004,'10:01:01','11:23:01','2023-04-09','2023-04-06','madurai','chennai','ekart');
select *from order_table_099;
========================================================================================================================================================
CREATE TABLE Customers_99 (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(100),
    date_purchased date
    );
    
    insert into customers_99 (customerID,name,age,email,phone,address,date_purchased) values
    (1111,'San',20,'san@gmail.com',9874563210,'Tuticorin','2023-01-10'),
    (1112,'Ram',22,'ram@gmail.com',98745586210,'Trichy','2023-03-10'),
    (1113,'Kavian',21,'kavi@gmail.com',9825463210,'Madurai','2023-03-10'),
    (1114,'Raja',19,'raj@gmail.com',9876985630,'Rameswaram','2023-04-19'),
    (1115,'John',21,'john@gmail.com',9874578910,'Chennai','2023-05-20'
    );
    
    select * from customers_99;	