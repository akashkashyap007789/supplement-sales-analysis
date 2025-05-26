create database Supplement_Sales;

use Supplement_Sales;

CREATE TABLE sales_data (
    Date DATE,
    Product_Name TEXT,
    Category TEXT,
    Units_Sold INTEGER,
    Price REAL,
    Revenue REAL,
    Discount REAL,
    Units_Returned INTEGER,
    Location TEXT,
    Platform TEXT
);

select * from sales_data;

#🔹 1. Total Revenue by Category
SELECT Category, SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Category
ORDER BY Total_Revenue DESC;


#🔹 2. Monthly Revenue Trend
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month,
       SUM(Revenue) AS Monthly_Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;


#🔹 3. Top 10 Best-Selling Products
SELECT Product_Name, SUM(Units_Sold) AS Total_Sold
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sold DESC
LIMIT 10;


#🔹 4. Revenue by Category and Platform
SELECT Category, Platform, SUM(Revenue) AS Revenue
FROM sales_data
GROUP BY Category, Platform
ORDER BY Revenue DESC;


#🔹 5. Highest Returned Products
SELECT Product_Name, SUM(Units_Returned) AS Returns
FROM sales_data
GROUP BY Product_Name
ORDER BY Returns DESC
LIMIT 10;


#🔹 6. Discount Impact: Avg Discount vs Avg Units Sold
SELECT ROUND(Discount, 2) AS Discount_Level,
       AVG(Units_Sold) AS Avg_Units_Sold
FROM sales_data
GROUP BY Discount_Level
ORDER BY Discount_Level;



























































































