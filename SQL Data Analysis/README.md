Project 3 — SQL Data Analysis

DecodeLabs Data Analytics Internship | Batch 2026

Overview

SQL-based analysis of a 1,200-row e-commerce orders dataset, querying
directly against a SQLite database to extract filtered, grouped, and
aggregated business insights.

Repository Structure

Project3_SQL/
├── sql_analysis.py        # Colab script: loads data into SQLite, runs all queries
├── queries.sql             # Standalone SQL file (all 10 queries)
├── key_observations.md     # Business-facing summary of findings
└── README.md                # This file



Methodology


Filtering: WHERE with single and multi-condition logic, including
IN, comparisons, and IS NULL.
Sorting & limiting: ORDER BY + LIMIT to surface top-N results.
Aggregation: COUNT, SUM, AVG via GROUP BY.
Grouped filtering: HAVING to filter on aggregate conditions.
Percentage contribution: correlated subqueries to compute each
group's share of the overall total.


Key Findings (full detail in key_observations.md)


41.4% of orders are Cancelled or Returned — confirmed independently
via SQL aggregation, consistent with the Project 2 EDA finding.
Instagram and Email are the only referral sources clearing a
245-order HAVING threshold — the clear volume leaders.
Top customers by spend show almost no repeat purchasing — the customer
base looks acquisition-driven rather than loyalty-driven.
Revenue is evenly distributed across all 7 products (12–15.5% share
each) — no single product dominates or lags badly.


Tools

Python, pandas, sqlite3, Google Colab.
