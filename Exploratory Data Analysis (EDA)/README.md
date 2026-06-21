# Project 2 — Exploratory Data Analysis (EDA)
**DecodeLabs Data Analytics Internship **

## Overview
Exploratory analysis of a 1,200-row e-commerce orders dataset to surface patterns, trends, and outliers before any
dashboarding or modeling work.

## Repository Structure
```
Project2_EDA/
├── eda_analysis.py          # Full EDA script (run in Google Colab)
├── key_observations.md      # Business-facing summary of findings
├── README.md                # This file
└── /plots                   # Generated charts (distributions, boxplots,
                             # trend, correlation heatmap, breakdowns)
```

## Methodology
- **Descriptive statistics:** mean, median, count, std, min/max for all
  numeric fields.
- **Outlier detection:** IQR method (`Q1 - 1.5×IQR`, `Q3 + 1.5×IQR`).
- **Trend analysis:** monthly order volume and revenue, Jan 2023–Jun 2025.
- **Correlation analysis:** Pearson correlation across numeric fields.
- **Categorical breakdown:** order count and revenue by product, payment
  method, order status, and referral source.

## Key Findings (full detail in `key_observations.md`)
- Median order value ($823.62) is the more reliable "typical order" figure
  than the mean ($1,053.97) — the distribution is right-skewed.
- 8 high-value orders flagged by IQR are legitimate bulk purchases
  (`Quantity = 5`), not data errors.
- **41.4% of orders are Cancelled or Returned** — the largest single
  pattern in the dataset, and the top recommended area for follow-up.
- `UnitPrice` is the strongest driver of `TotalPrice` (r = 0.72).

## Tools
Python, pandas, matplotlib, seaborn, Google Colab.
