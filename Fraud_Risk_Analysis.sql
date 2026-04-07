										-- FRAUD RISK ANALYSIS IN CREDIT CARD TRANSACTIONS 

/* Project Overview
This project analyses credit card transaction data to identify patterns of fraudulent activity and understand where risk is most concentrated.

Using SQL,the analysis eplores how fraud varies across transaction categories, transaction sizes, and over time. The goal is to uncover key risk 
indicators that could support fraud detection and prevention strategies. */


-- Section 1: Overall Fraud Rate 
-- Calculates the total number of transactions, fraudulent transactions, and the overall fraud rate.

USE fintech_project;

SELECT
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_transactions,
    ROUND(SUM(is_fraud) / COUNT(*) * 100.0, 2) AS fraud_rate
FROM transactions;


-- Section 2: Fraud by Category
-- Identifies which transaction categories have the highest fraud rates.

SELECT 
	category,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_transactions,
    ROUND(SUM(is_fraud) / COUNT(*) * 100.0, 2) AS fraud_rate
FROM transactions
GROUP BY category;


-- Section 3: Fraud by Transaction Size 
-- Groups transactions into size bands to determine which transaction sizes are most vulnerable to fraud.

SELECT 
	CASE
		WHEN amount < 20 THEN 'low-value'
        WHEN amount BETWEEN 20 AND 100 THEN 'mid-value'
        ELSE 'high-value'
	END AS transactions_size_band,
	
    -- COUNT(*) AS total_transactions,
    -- SUM(is_fraud) AS fraud_transactions,
    ROUND(SUM(is_fraud) / COUNT(*) * 100.0, 2) AS fraud_rate
FROM transactions
GROUP BY transactions_size_band;


-- Section 4: Fraud Over Time
-- Examines how fraud varies across months. 

SELECT 
    YEAR(STR_TO_DATE(transaction_time, '%d/%m/%Y %H:%i')) AS year,
    MONTH(STR_TO_DATE(transaction_time, '%d/%m/%Y %H:%i')) AS month,
    
	COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_transactions,
    ROUND(SUM(is_fraud) / COUNT(*) * 100.0, 2) AS fraud_rate
FROM transactions
GROUP BY 
    YEAR(STR_TO_DATE(transaction_time, '%d/%m/%Y %H:%i')),
    MONTH(STR_TO_DATE(transaction_time, '%d/%m/%Y %H:%i'))
ORDER BY year, month;






