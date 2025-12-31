# Project Backgorund
This online retail store has appointed you as a consultant to analyze business data and provide strategic insights for the CEO and CMO. Management aims to understand the key factors driving revenue and develop the right strategy for growth in the coming year. The analysis focuses on operational performance, marketing effectiveness, and customer behavior and characteristics based on demographic data. By making full use of available data, this project aims to evaluate current business performance and identify strategic opportunities that can support the company's expansion and increased competitiveness.

**Insight and recomandation**

This project delivers executive-level insights for CEO and CMO stakeholders by diagnosing the true drivers of revenue growth, stability, and customer behavior in an online retail business. Rather than focusing on descriptive metrics alone, the analysis identifies why performance changes and where actionable levers exist.

Key objectives of the project include:

1. **Diagnosing revenue growth drivers across markets**, distinguishing between scale-driven and value-driven countries to support differentiated growth strategies.
2. **Identifying sources of revenue volatility**, assessing whether fluctuations are caused by demand patterns or post-purchase issues such as returns and cancellations.
3. **Evaluating customer dependency and revenue concentration risk**, ensuring business performance is not overly reliant on a small group of customers.
4. **Understanding customer behavior through segmentation and lifecycle analysis**, highlighting which customer segments drive stable revenue and where churn risk is highest.
5. **Highlighting sustainable growth opportunities**, focusing on retention, repeat purchase behavior, and revenue quality rather than short-term volume expansion.

An interactive PowerBI dashboard can be downloaded [here](./OnlineRetailDashboard.pbix)

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found [here](..)

# Executive Summary

## Overview of Findings

This dashboard presents a summary of online retail business performance based on sales analysis, customer behavior, and revenue distribution in 2011. Total revenue reached £9.19 million, originating from over 18,500 orders from over 4,000 customers, with an average transaction value of £495 and a repeat customer rate of 70.31%, indicating strong customer loyalty. In terms of repeat revenue, 94.09% came from repeat customers, emphasizing the importance of retention strategies in driving business growth.
Sales trends show stable revenue growth throughout the year, with a significant increase in November and a sharp decline in December. Revenue by region shows that the United Kingdom contributed over 84% of total revenue.

Below is the overview page from the PowerBI dashboard and more examples are included throughout the report. The entire interactive dashboard can be downloaded [here](./OnlineRetailDashboard.pbix)


<img width="1863" height="963" alt="Cuplikan layar 2025-12-31 114850" src="https://github.com/user-attachments/assets/109a9949-15e2-4f62-854b-695f1b642eb8" />

Based on the findings in the overview and the background of this project (namely, answering questions from the CEO and CMO based on existing data), here are the questions and answers in the form of insights from the data that has been found.

## Business Performance/CEO View

<img width="1815" height="1077" alt="Cuplikan layar 2025-12-31 123518" src="https://github.com/user-attachments/assets/8ce0d4e2-8f45-4fb9-8a5c-de4b36c8dab7" />

### 1) Which countries truly drive revenue growth, and is growth driven by customer scale or customer value?
The United Kingdom contributed the highest revenue of over 7 million, which is around 84% of total revenue, with a large number of customers (over 3,800), making it the main market. This was followed by several other countries such as Germany and France, which showed relatively high revenue despite their limited number of customers. This pattern shows that revenue growth depends not only on customer scale, but also on the average order value (AOV) and shopping intensity.

### 2) Is revenue volatility driven by demand fluctuation or by operational quality issues?
Revenue volatility does not always align with order volume. In some months, orders increase but net revenue is constrained by higher returns. This suggests that performance issues are driven more by post-purchase factors than by weak demand.

### 3) How much revenue is actually lost due to returns and cancellations?
The clear difference between gross revenue and net revenue shows that some income is lost after a transaction occurs. Returns and cancellations consistently erode the final result (although they do not have a significant impact because the value of returns is small, they must still be taken into account), so profitability is not only determined by sales, but also by how many transactions are successfully retained.

### 4) Is the business dependent on a small group of customers for revenue?
The Pareto chart shows that the distribution of revenue by customers is not dominated by certain customers, as indicated by the Pareto line not rising significantly for certain customers. This indicates that so far (in 2011) business performance has not been significantly affected by customer behavior. However, this fact shows that customers are not yet strongly attached to the company, so it is very important to determine the company's next steps in attracting customers.


## Customer & Product Insights/CMO View


 <img width="1848" height="1083" alt="Cuplikan layar 2025-12-31 114928" src="https://github.com/user-attachments/assets/fdbe47bd-2675-421a-9fe4-ee89c38c2375" />

### 1) Which customer segments contribute revenue most consistently over time?
Best Customers and Loyal Customers deliver the most consistent revenue over time. Other segments fluctuate more and depend on specific periods, indicating that revenue stability is driven mainly by long-term customer relationships.

### 2) Why do some products show high repeat purchases but long purchase intervals?
Scatter shows that product purchasing patterns are dominated by quadrant II (low repeat, long cycle) and quadrant III (high repeat, long cycle), with very few in quadrant I (low repeat, short cycle) and quadrant IV (high repeat, short cycle). This indicates that customer purchases of the product are still periodic in nature. Customers return to purchase because of the product's function, not because of impulsive urges. This indicates loyalty based on need, not short-term promotions.

### 3) Do repeat customers tend to stay engaged, or do most churn early?
Cohort retention shows the largest drop occurs after the first purchase. Customers who remain beyond this stage tend to be more stable, indicating that the main challenge lies in early customer engagement.

### 4) Does having more customers automatically lead to higher revenue?
Some segments have many customers but generate relatively low revenue. This shows that customer growth does not automatically translate into revenue growth, and customer quality matters more than sheer volume.

### 5) How do customer segments differ in recency, frequency, and spending behavior?
Each segment exhibits distinct behavior patterns. Some customers purchase frequently with moderate value, others purchase less often but spend more, while some show declining engagement. These patterns reflect different customer lifecycle stages.

## Recomendation:

- **Differentiate growth strategy by market type**
Treat the UK as a scale-driven market focused on efficiency and retention, where actions should prioritize basket-size optimization, minimum order value incentives, and repeat-purchase encouragement to maximize volume efficiency. In contrast, countries such as Germany and France should be positioned as value-driven markets, with growth actions centered on protecting AOV through targeted promotions for high-value customers rather than broad customer acquisition campaigns.

- **Stabilize revenue through post-purchase control, not demand stimulation**
Revenue volatility is more influenced by returns and cancellations than by weak demand, therefore actions should focus on reducing post-purchase losses by tightening product expectation alignment, limiting promotional exposure for high-return products, and improving fulfillment accuracy instead of increasing promotional intensity to boost order volume.

- **Use returns as an early profitability signal**
Even though return value is relatively small, it consistently erodes net revenue, so returns should be actively monitored as a control metric, with actions such as setting return-rate thresholds, excluding high-return products from campaigns, and triggering product or listing reviews when return trends begin to rise.

- **Reduce long-term risk by strengthening customer attachment**
Revenue is not concentrated in a few customers, indicating low dependency risk but also weak customer stickiness, therefore actions should focus on strengthening early engagement through second-purchase incentives, targeted follow-up offers after the first transaction, and selective rewards for repeat behavior rather than broad acquisition-driven promotions.

- **Prioritize segments that drive stable revenue, not just volume**
Loyal and Best Customers are the backbone of revenue consistency, so actions should prioritize segment-specific incentives, early access to products, and measuring success by customer migration into high-value segments rather than by total customer growth alone.

- **Align product strategy with need-based purchasing behavior**
Repeat purchases are driven by functional need and long purchase cycles rather than impulse buying, so actions should emphasize product availability, reliability, and replenishment reminders aligned with purchase cycles instead of frequent flash sales or urgency-based promotions.

- **Focus retention efforts on the first repeat purchase**
The highest churn occurs after the first transaction, therefore actions should concentrate on improving the first-to-second purchase transition through post-purchase follow-up offers, low-friction repeat incentives, and evaluation of products that frequently result in one-time purchases.
 
