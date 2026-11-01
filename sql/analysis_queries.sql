-- Customer Churn | Table: customers
SELECT contract, COUNT(*) AS customers,
 SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) AS churned,
 ROUND(100.0*SUM(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS churn_rate_pct
FROM customers GROUP BY contract ORDER BY churn_rate_pct DESC;
SELECT internet_service, AVG(monthly_charges) AS avg_monthly_charges FROM customers GROUP BY internet_service;