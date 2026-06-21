# Project 3 — SQL Data Analysis
**DecodeLabs Data Analytics Internship | Batch 2026**

## Overview
SQL-based analysis of a 1,200-row e-commerce orders dataset, querying
directly against a SQLite database to extract filtered, grouped, and
aggregated business insights.

## Repository Structure
```
SQL Data Analysis/
├── task_03.py                       # Colab script: loads data into SQLite, runs all queries
├── queries.sql                       # Standalone SQL file (all 10 queries)
├── Key Observations.docx             # Business-facing summary of findings
├── Dataset for Data Analytics.xlsx   # Source dataset
└── README.md                          # This file
```

## How to Run
1. Open Google Colab, upload `Dataset for Data Analytics.xlsx`.
2. Upload and run `task_03.py` (or paste into a notebook cell).
3. The script loads the dataset into an in-memory SQLite table called
   `orders` and prints the result of each query.
4. `queries.sql` can also be run directly against any SQL engine once the
   data is loaded into a table named `orders`.

## Methodology
- **Filtering:** `WHERE` with single and multi-condition logic, including
  `IN`, comparisons, and `IS NULL`.
- **Sorting & limiting:** `ORDER BY` + `LIMIT` to surface top-N results.
- **Aggregation:** `COUNT`, `SUM`, `AVG` via `GROUP BY`.
- **Grouped filtering:** `HAVING` to filter on aggregate conditions.
- **Percentage contribution:** correlated subqueries to compute each
  group's share of the overall total.

## Key Findings (full detail in `Key Observations.docx`)
- **41.4% of orders are Cancelled or Returned** — confirmed independently
  via SQL aggregation, consistent with the Project 2 EDA finding.
- Instagram and Email are the only referral sources clearing a
  245-order `HAVING` threshold — the clear volume leaders.
- Top customers by spend show almost no repeat purchasing — the customer
  base looks acquisition-driven rather than loyalty-driven.
- Revenue is evenly distributed across all 7 products (12–15.5% share
  each) — no single product dominates or lags badly.

## Tools
Python, pandas, sqlite3, Google Colab.
