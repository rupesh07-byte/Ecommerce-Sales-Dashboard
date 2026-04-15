
# 💰 1. Total Sales & Profit 
SELECT<br>
ROUND(SUM(Sales),2) as Total_Sales,<br>
ROUND(SUM(Profit),2) as Total_Profit<br>
from ecommerce_data;<br>
<img width="719" height="193" alt="image" src="https://github.com/user-attachments/assets/e7150d19-b35a-431f-81e2-f288606a2f1d" />
 

## 🔍 Key Insights 

• The business generated ~2.29M in total sales but only ~286K in profit, indicating a relatively lower profit margin. <br>
•	This suggests that high revenue does not necessarily translate into high profitability. <br>
•	Costs, discounts, or operational inefficiencies may be impacting profit. <br>

## 💡Business Recommendation

•	Focus on improving profit margins, not just increasing sales. <br>
•	Analyze factors like discounts, shipping costs, and product categories affecting profit.<br>
•	Implement cost optimization strategies to improve overall profitability.<br>

# 📊 2. Sales by Region
SELECT<br>
Region,ROUND(Sum(Sales),2) as Total_Sales<br>
FROM ecommerce_data<br>
GROUP BY Region<br>
ORDER BY Total_Sales DESC;
<img width="658" height="361" alt="image" src="https://github.com/user-attachments/assets/5e993385-b36c-44ab-9ac0-c18da17d45d7" />


## 🔍 Key Insights 
•	The West region generates the highest sales (~725K), making it the strongest revenue contributor. <br>
•	The East region follows closely, indicating a well-performing secondary market. <br>
•	The Central region shows moderate performance, with scope for growth. <br>
•	The South region has the lowest sales (~391K), highlighting a potential underperforming market. <br>

## 💡 Business Recommendation
•	Replicate successful strategies from the West region in other regions. <br>
•	Focus on marketing and expansion efforts in the South region to boost sales. <br>
•	Analyze customer behavior in Central & South to identify growth opportunities. <br>
________________________________________

# 📊 3. Sales by Category
SELECT<br>
Category, ROUND(Sum(Sales),2) as Total_Sales<br>
FROM ecommerce_data<br>
GROUP BY Category<br>
ORDER BY Total_Sales DESC;
<img width="766" height="297" alt="image" src="https://github.com/user-attachments/assets/6a71359f-76fe-4c6b-b40d-0dc51d05cb59" />

 
## 🔍 Insights:
•	Technology → Highest sales (₹836K) <br>
•	Furniture → Second (₹741K) <br>
•	Office Supplies → Third (₹719K) <br>
👉 Interesting:<br>
•	Furniture has good sales but low profit ❗ <br>

## 💡 Business Recommendations:
•	🔍 Deep analysis of Furniture: <br>
o	High shipping cost? <br>
o	Low margin products? <br>
•	 Increase price or reduce cost in Furniture <br>
•	Promote Technology more (best in both sales + profit) <br>
•	 Bundle Office Supplies for higher sales<br>

# 📊 4. Top 5 Customers
SELECT TOP 5[Customer_Name], ROUND(SUM(Sales),2) as Total_Sales<br>
FROM ecommerce_data<br>
GROUP BY [Customer_Name]<br>
ORDER BY Total_Sales DESC;
 <img width="806" height="427" alt="image" src="https://github.com/user-attachments/assets/48f9c852-ada4-4533-a375-75dd363624d0" />

## 🔍 Key Insights 
•	Sean Miller (~25K) is the highest revenue-generating customer. <br>
•	Top 5 customers are contributing significant sales, indicating customer concentration. <br>
•	Sales are not evenly distributed → business depends on a few key customers. <br>

## 💡 Business Recommendation 
•	Focus on customer retention strategies (loyalty programs, exclusive offers). <br>
•	Build strong relationships with top customers to ensure repeat business. <br>
•	Try to expand customer base to reduce dependency on a few individuals. <br>

# 📊 5.  Profit by Category
SELECT Category, ROUND(SUM(Profit),2) as Total_Profit<br>
FROM ecommerce_data<br>
GROUP BY Category<br>
ORDER BY Total_Profit DESC;
<img width="771" height="309" alt="image" src="https://github.com/user-attachments/assets/5c8d27c5-66f2-4ce5-a8ed-2aa2445bc56b" />

 
## 🔍 Key Insights 
•	Technology (~145K) is the most profitable category. <br>
•	Office Supplies (~122K) also performs strongly. <br>
•	Furniture (~18K) is significantly underperforming.<br> 

## 💡 Business Recommendation 
•	Increase investment in Technology & Office Supplies (marketing, stock, promotions). <br>
•	Investigate Furniture category issues: <br>
o	High cost <br>
o	Heavy discounts <br>
•	Optimize pricing and reduce unnecessary expenses in low-performing categories. <br>
________________________________________
# 📊 6.  Loss Making Products

SELECT TOP 10 [Product_Name], ROUND(SUM(Profit),2) as Total_Profit<br>
FROM ecommerce_data<br>
GROUP BY [Product_Name]<br>
HAVING SUM(Profit)<0<br>
ORDER BY Total_Profit;
<img width="1090" height="507" alt="image" src="https://github.com/user-attachments/assets/8680376f-0c63-4101-979c-badfa9040ee3" />


## 🔍 Key Insights ✨
•	Several products are generating high negative profit. <br>
•	Biggest loss: Cubify CubeX Printer (-8879). <br>
•	Many loss-making items belong to high-value/technology products. <br>
•	These losses can reduce overall business profitability. <br>

## 💡 Business Recommendation 🚀
•	Identify and fix or remove loss-making products. <br>
•	Re-evaluate: <br>
o	Pricing strategy <br>
o	Supplier costs <br>
o	Discount policies <br>
•	Avoid selling products below cost unless strategic (e.g., promotions). <br>
•	Focus more on high-margin products instead of high-sales but low-profit items. <br>

# 📊 7. Loss by Category

SELECT Category, ROUND(SUM(Profit),2) as Total_Profit<br>
FROM ecommerce_data<br>
GROUP BY Category<br>
ORDER BY Total_Profit;
<img width="765" height="300" alt="image" src="https://github.com/user-attachments/assets/16e6b9b0-a143-40bd-8862-daded3ebb340" />

 
## 🔍 Insights:
•	Technology → Highest profit (₹145,454.95) <br>
•	Office Supplies → Good profit (₹122,490.8) <br>
•	Furniture → Very low profit (₹18,451.27) <br>
👉 Big gap: Furniture is underperforming heavily<br>
## 💡 Business Recommendations:
•	✅ Focus more on Technology products (high-margin category) <br>
•	⚠️ Investigate Furniture: <br>
o	High cost? Heavy discounting? Logistics issues? <br>
•	Reduce discounts or optimize pricing in Furniture <br>
•	Consider removing low-profit furniture items <br>
________________________________________
# 📊 8. Yearly Sales Trend

SELECT Order_Year, ROUND(SUM(Sales),2) as Total_Sales<br>
FROM ecommerce_data<br>
GROUP BY Order_Year<br>
ORDER BY Order_Year ;
<img width="705" height="358" alt="image" src="https://github.com/user-attachments/assets/cfcf3bea-e933-48c1-96bd-8648d1d8de70" />

 

## 🔍 Insights:
•	2015 slight drop from 2014 <br>
•	Strong growth from 2016 → 2017 <br>
•	2017 is the best year (₹733,215) <br>
👉 Business is growing consistently after 2015<br>

## 💡 Business Recommendations:
•	📈 Identify what worked after 2015 (marketing, pricing, products) <br>
•	🚀 Scale strategies used in 2016–2017 <br>
•	📊 Forecast future demand based on upward trend <br>
•	💼 Invest more in high-performing years' strategies <br>
________________________________________
# 📊 9. Monthly Sales Trend
SELECT Order_Month, ROUND(SUM(Sales),2) as Total_Sales<br>
FROM ecommerce_data<br>
GROUP BY Order_Month<br>
ORDER BY Order_Month;<br>
<img width="743" height="878" alt="image" src="https://github.com/user-attachments/assets/7b2f87f9-6cf2-4f31-b58e-e6bc71c62b3f" />

 
## 🔍 Insights:
•	Highest sales months: <br>
o	November (₹352K) <br>
o	December (₹325K) <br>
o	September (₹307K) <br>
•	Lowest sales: <br>
o	February (~₹59K) <br>
👉 Strong seasonality (festive/end-year boost)<br>
## 💡 Business Recommendations:
•	🎯 Increase marketing before Sep–Dec peak season <br>
•	📦 Stock inventory in advance for high-demand months <br>
•	🛍️ Run offers in low months (Jan–Feb) to boost sales <br>
•	📅 Launch new products before peak months <br>
________________________________________
# 📊 10. Discount Impact on Profit

SELECT Discount, ROUND(AVG(Profit),2) as Avg_Profit<br>
from ecommerce_data<br>
GROUP BY Discount<br>
ORDER BY Discount;
<img width="865" height="880" alt="image" src="https://github.com/user-attachments/assets/cf9c64fb-83fa-4e28-931d-c24f6a9e7207" />
 
## 🔍 Insights:
•	Profit is positive at low discounts (0–10%) <br>
•	Profit becomes negative after ~20–30% discount <br>
•	Heavy discounts (40–50%) = huge losses <br>
👉 Clear pattern: Higher discount = loss<br>

## 💡 Business Recommendations:
•	🚫 Avoid discounts above 20% <br>
•	🎯 Optimal discount range: 0–10% <br>
•	💡 Use targeted discounts (not blanket discounts)<br> 
•	📊 Apply discount only on slow-moving products <br>



