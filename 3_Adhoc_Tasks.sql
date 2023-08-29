---NEW table "sales_data_updated" table from the table "sales_purchase_data_updated"

DROP TABLE IF EXISTS sales_data_updated;
CREATE TABLE sales_data_updated AS
SELECT
    Row_ID,
    Customer_Name,
    Customer_ID,
    Order_ID,
    Product_Name,
    Product_ID,
    Category,	
    Sub_Category,	
    Sales,	
    Quantity,
    Discount,	
    Profit,
    STR_TO_DATE(Order_Date, '%d-%m-%Y') AS Order_Date,
    STR_TO_DATE(Ship_Date, '%d-%m-%Y')AS Ship_Date,
    Segment,
    Country,
    State,
    City,
    Region,
    Ship_Mode
FROM sales_purchase_data;
select*FROM sales_purchase_data_updated;


---1."Order_Id" Format changing

SELECT
    SUBSTRING(Order_Id, 4) AS Order_Id
    FROM sales_data_updated;
	
	
---2."Order_Month  &  Order_Year"

SELECT 
Order_Date,
month(Order_Date) as Order_Month,
year(Order_Date) as Order_Year
FROM sales_data_updated;


---3."Customer_ID" Format changing

SELECT
  SUBSTRING(Customer_Id, 4) AS Customer_Id
FROM sales_data_updated;


---4."Concatenate"

SELECT
  CONCAT(Region, '_', Country, '_', City, '_', State) AS location_info
FROM sales_data_updated;


---5."Sales_order_info" Table Creation

CREATE TABLE Sales_order_info AS
SELECT 
    SUBSTRING(Product_ID, 8) AS Product_ID,
    Category,
    Sub_Category,
    Product_Name,
    Sales,
    Quantity,
    Sales / Quantity AS per_quantity_price,
    CASE
        WHEN Sales > 1000 THEN 'Super'
        WHEN Sales > 400 AND Sales <= 1000 THEN 'Average'
        WHEN Sales <400 THEN 'low'
    END AS super_type,
    Discount,
    Profit,
    CASE
        WHEN Profit < 0 THEN 1
        ELSE 0
    END AS Loss
FROM sales_purchase_data_updated;

SELECT * FROM Sales_order_info; 


---6.DISTINCT "Order-ID"

SELECT COUNT(DISTINCT Order_Id) AS Order_Count
FROM sales_purchase_data_updated;


---7.DISTINCT "Product_Name"

SELECT COUNT(DISTINCT Product_Name) AS Unique_Product_Names
FROM Sales_order_info;


---8.DISTINCT "Segment"

SELECT COUNT(DISTINCT Segment) AS Distinct_Segment
FROM sales_purchase_data_updated;


---9.Recent "Order_Date"

SELECT MAX(Order_Date) AS recent_order_date
FROM sales_purchase_data_updated;


---10.Older "Order_Date"

SELECT MIN(Order_Date) AS old_order_date
FROM sales_purchase_data_updated;


---11.Recent Ordered Customer Info.

SELECT * FROM sales_purchase_data_updated
WHERE Order_Date = (
  SELECT MAX(Order_Date)
  FROM sales_purchase_data_updated
);


---12."Texas & New York" Customers.

SELECT
  COUNT(DISTINCT CASE  WHEN State = 'Texas' THEN Customer_ID END) AS No_of_cust_texas,
  COUNT(DISTINCT CASE  WHEN State = 'New York' THEN Customer_ID END) AS No_of_cust_New_york
FROM sales_purchase_data_updated
WHERE
  State IN ('Texas','New York');

