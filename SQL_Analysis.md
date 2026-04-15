
## 💰 1. Total Sales & Profit (KPI)
SELECT
ROUND(SUM(Sales),2) as Total_Sales,
ROUND(SUM(Profit),2) as Total_Profit
from ecommerce_data;
<img width="719" height="193" alt="image" src="https://github.com/user-attachments/assets/e7150d19-b35a-431f-81e2-f288606a2f1d" />
 

### 🔍 Key Insights 
• The business generated ~2.29M in total sales but only ~286K in profit, indicating a relatively lower profit margin. 
•	This suggests that high revenue does not necessarily translate into high profitability. 
•	Costs, discounts, or operational inefficiencies may be impacting profit. 
### Business Recommendation
•	Focus on improving profit margins, not just increasing sales. 
•	Analyze factors like discounts, shipping costs, and product categories affecting profit. 
•	Implement cost optimization strategies to improve overall profitability.

-- 📊 2. Sales by Region
SELECT
Region,ROUND(Sum(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Region
ORDER BY Total_Sales DESC;
<img width="658" height="361" alt="image" src="https://github.com/user-attachments/assets/5e993385-b36c-44ab-9ac0-c18da17d45d7" />


🔍 Key Insights 
•	The West region generates the highest sales (~725K), making it the strongest revenue contributor. 
•	The East region follows closely, indicating a well-performing secondary market. 
•	The Central region shows moderate performance, with scope for growth. 
•	The South region has the lowest sales (~391K), highlighting a potential underperforming market. 
💡 Business Recommendation
•	Replicate successful strategies from the West region in other regions. 
•	Focus on marketing and expansion efforts in the South region to boost sales. 
•	Analyze customer behavior in Central & South to identify growth opportunities. 
________________________________________

-- 📊 3. Sales by Category
SELECT
Category, ROUND(Sum(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Sales DESC;
<img width="766" height="297" alt="image" src="https://github.com/user-attachments/assets/6a71359f-76fe-4c6b-b40d-0dc51d05cb59" />

 
🔍 Insights:
•	Technology → Highest sales (₹836K) 
•	Furniture → Second (₹741K) 
•	Office Supplies → Third (₹719K) 
👉 Interesting:
•	Furniture has good sales but low profit ❗ 
💡 Business Recommendations:
•	🔍 Deep analysis of Furniture: 
o	High shipping cost? 
o	Low margin products? 
•	 Increase price or reduce cost in Furniture 
•	Promote Technology more (best in both sales + profit) 
•	 Bundle Office Supplies for higher sales



-- 📊 4. Top 5 Customers
SELECT TOP 5[Customer_Name], ROUND(SUM(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY [Customer_Name]
ORDER BY Total_Sales DESC;
 <img width="806" height="427" alt="image" src="https://github.com/user-attachments/assets/48f9c852-ada4-4533-a375-75dd363624d0" />

🔍 Key Insights 
•	Sean Miller (~25K) is the highest revenue-generating customer. 
•	Top 5 customers are contributing significant sales, indicating customer concentration. 
•	Sales are not evenly distributed → business depends on a few key customers. 
💡 Business Recommendation 
•	Focus on customer retention strategies (loyalty programs, exclusive offers). 
•	Build strong relationships with top customers to ensure repeat business. 
•	Try to expand customer base to reduce dependency on a few individuals. 
________________________________________
-- 📊 5.  Profit by Category
<img width="771" height="309" alt="image" src="https://github.com/user-attachments/assets/602e4522-30ae-4a13-8ce5-96e09a3d2eaf" />

SELECT Category, ROUND(SUM(Profit),2) as Total_Profit
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Profit DESC;

 
🔍 Key Insights 
•	Technology (~145K) is the most profitable category. 
•	Office Supplies (~122K) also performs strongly. 
•	Furniture (~18K) is significantly underperforming. 
💡 Business Recommendation 
•	Increase investment in Technology & Office Supplies (marketing, stock, promotions). 
•	Investigate Furniture category issues: 
o	High cost 
o	Heavy discounts 
•	Optimize pricing and reduce unnecessary expenses in low-performing categories. 
________________________________________
-- 📊 6.  Loss Making Products

SELECT TOP 10 [Product_Name], ROUND(SUM(Profit),2) as Total_Profit
FROM ecommerce_data
GROUP BY [Product_Name]
HAVING SUM(Profit)<0
ORDER BY Total_Profit;
<img width="1090" height="507" alt="image" src="https://github.com/user-attachments/assets/8680376f-0c63-4101-979c-badfa9040ee3" />


🔍 Key Insights ✨
•	Several products are generating high negative profit. 
•	Biggest loss: Cubify CubeX Printer (-8879). 
•	Many loss-making items belong to high-value/technology products. 
•	These losses can reduce overall business profitability. 
💡 Business Recommendation 🚀
•	Identify and fix or remove loss-making products. 
•	Re-evaluate: 
o	Pricing strategy 
o	Supplier costs 
o	Discount policies 
•	Avoid selling products below cost unless strategic (e.g., promotions). 
•	Focus more on high-margin products instead of high-sales but low-profit items. 

-- 📊 7. Loss by Category

SELECT Category, ROUND(SUM(Profit),2) as Total_Profit
FROM ecommerce_data
GROUP BY Category
ORDER BY Total_Profit;
<img width="765" height="300" alt="image" src="https://github.com/user-attachments/assets/16e6b9b0-a143-40bd-8862-daded3ebb340" />

 
🔍 Insights:
•	Technology → Highest profit (₹145,454.95) 
•	Office Supplies → Good profit (₹122,490.8) 
•	Furniture → Very low profit (₹18,451.27) 
👉 Big gap: Furniture is underperforming heavily
💡 Business Recommendations:
•	✅ Focus more on Technology products (high-margin category) 
•	⚠️ Investigate Furniture: 
o	High cost? Heavy discounting? Logistics issues? 
•	Reduce discounts or optimize pricing in Furniture 
•	Consider removing low-profit furniture items 
________________________________________
-- 📊 8. Yearly Sales Trend

SELECT Order_Year, ROUND(SUM(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Order_Year
ORDER BY Order_Year ;
<img width="705" height="358" alt="image" src="https://github.com/user-attachments/assets/cfcf3bea-e933-48c1-96bd-8648d1d8de70" />

 

🔍 Insights:
•	2015 slight drop from 2014 
•	Strong growth from 2016 → 2017 
•	2017 is the best year (₹733,215) 
👉 Business is growing consistently after 2015
💡 Business Recommendations:
•	📈 Identify what worked after 2015 (marketing, pricing, products) 
•	🚀 Scale strategies used in 2016–2017 
•	📊 Forecast future demand based on upward trend 
•	💼 Invest more in high-performing years' strategies 
________________________________________
-- 📊 9. Monthly Sales Trend

SELECT Order_Month, ROUND(SUM(Sales),2) as Total_Sales
FROM ecommerce_data
GROUP BY Order_Month
ORDER BY Order_Month;
<img width="743" height="878" alt="image" src="https://github.com/user-attachments/assets/7b2f87f9-6cf2-4f31-b58e-e6bc71c62b3f" />

 
🔍 Insights:
•	Highest sales months: 
o	November (₹352K) 
o	December (₹325K) 
o	September (₹307K) 
•	Lowest sales: 
o	February (~₹59K) 
👉 Strong seasonality (festive/end-year boost)
💡 Business Recommendations:
•	🎯 Increase marketing before Sep–Dec peak season 
•	📦 Stock inventory in advance for high-demand months 
•	🛍️ Run offers in low months (Jan–Feb) to boost sales 
•	📅 Launch new products before peak months 
________________________________________
-- 📊 10. Discount Impact on Profit

SELECT Discount, ROUND(AVG(Profit),2) as Avg_Profit
from ecommerce_data
GROUP BY Discount
ORDER BY Discount;

<img width="865" height="880" alt="image" src="https://github.com/user-attachments/assets/cf9c64fb-83fa-4e28-931d-c24f6a9e7207" />

 
📊 4. Discount vs Avg Profit
🔍 Insights:
•	Profit is positive at low discounts (0–10%) 
•	Profit becomes negative after ~20–30% discount 
•	Heavy discounts (40–50%) = huge losses 
👉 Clear pattern: Higher discount = loss
💡 Business Recommendations:
•	🚫 Avoid discounts above 20% 
•	🎯 Optimal discount range: 0–10% 
•	💡 Use targeted discounts (not blanket discounts) 
•	📊 Apply discount only on slow-moving products 
________________________________________


