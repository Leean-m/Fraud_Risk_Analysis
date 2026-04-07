# Fraud Risk Analysis in Credit Card Transactions (SQL)

## Overview

This project analyses credit card transaction data using SQL to identify patterns of fraudulent activity and understand where fraud risk is most concentrated.

The analysis focuses on how fraud varies across transaction categories, transaction sizes, and over time. The goal is to uncover key risk indicators that could support more targeted fraud detection and prevention strategies.

## Objective

The objective of this project is to:

- Calculate the overall fraud rate within the transaction dataset
- Identify transaction categories with the highest fraud risk
- Analyse how fraud varies across different transaction size bands
- Examine how fraud patterns change over time
- Demonstrate how SQL can be used to extract meaningful fraud insights from transactional data

## Tools Used

- MySQL
- SQL (`SELECT`, `GROUP BY`, `CASE`, aggregation functions, date functions)

## Dataset

The dataset used in this project consists of credit card transaction records containing:

- transaction amount
- transaction timestamp
- spending category
- fraud indicator (`is_fraud`)
- customer and merchant-related details

The dataset was sourced from Kaggle and is commonly used for fraud detection, customer behaviour analysis, anomaly detection, and transaction classification.

## Business Questions

The analysis was guided by the following questions:

1. What is the overall fraud rate?
2. Which transaction categories have the highest fraud rates?
3. Which transaction sizes are most vulnerable to fraud?
4. How does fraud vary over time?

## SQL Queries

The full SQL script used for this analysis is available in the repository:

Fraud_Risk_Analysis.sql

## Key Insights

- Fraud represents a relatively small share of total transactions overall, but it remains a persistent risk within the system.
- Fraud is not evenly distributed across categories, with certain transaction types showing significantly higher fraud rates than others.
- Transaction size influences fraud vulnerability, suggesting that some payment values may be more exposed to fraudulent activity.
- Fraud levels fluctuate over time, highlighting the need for continuous monitoring rather than static detection approaches.

## Business Impact

This analysis supports financial decision-making by:

- identifying high-risk transaction categories for enhanced monitoring
- highlighting where fraud detection resources can be prioritised
- improving understanding of transaction-level fraud exposure
- demonstrating how SQL can be used to uncover actionable fraud insights from raw transactional data

## Data Source

The dataset used in this project was sourced from Kaggle:

[https://www.kaggle.com/datasets/priyamchoksi/credit-card-transactions-dataset]

##  Summary

This project demonstrates how SQL can be used to analyse credit card transaction data and uncover meaningful fraud risk patterns. The findings show that fraud is concentrated in specific areas rather than being evenly distributed, supporting the need for more targeted and data-driven fraud prevention strategies.
