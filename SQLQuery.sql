CREATE DATABASE ecommerce_project;
GO

USE ecommerce_project;
GO

SELECT TOP 5 * FROM ecommerce_data;

-- 1. Total Sales & Profit (KPI)

SELECT
ROUND(SUM(Sales),2) as Total_Sales,
ROUND(SUM(Profit),2) as Total_Profit
from ecommerce_data;


--2. Sales by Region
SELECT
Region,ROUND(Sum(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 3. Sales by Category
SELECT
Category, ROUND(Sum(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 4. Top 5 Customers
SELECT TOP 5[Customer_Name], ROUND(SUM(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC;


-- 5.  Profit by Category

SELECT Category, ROUND(SUM(Profit),2) as Total_Profit
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Profit DESC;


-- 6.  Loss Making Products

SELECT TOP 10 [Product_Name], ROUND(SUM(Profit),2) as Total_Profit
FROM ecommerce_data
GROUP BY [Product_Name]
HAVING SUM(Profit)<0
ORDER BY Total_Profit;


-- 7. Loss by Category

SELECT Category, ROUND(SUM(Profit),2) as Total_Profit
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Profit;

-- 8. Yearly Sales Trend

SELECT Order_Year, ROUND(SUM(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Order_Year
ORDER BY Order_Year;


-- 9. Monthly Sales Trend

SELECT Order_Month, ROUND(SUM(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Order_Month
ORDER BY Order_Month;


-- 10. Discount Impact on Pofit

SELECT Discount, ROUND(AVG(Profit),2) as Avg_Profit
from ecommerce_data
GROUP BY Discount
ORDER BY Discount;