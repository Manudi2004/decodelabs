# DecodeLabs Data Analytics Internship

## Task 1 — Data Cleaning & Preparation

### Objective
Clean a raw e-commerce orders dataset (1,200 rows) by handling missing values, fixing floating point precision errors, and standardizing date formats.

### Dataset
| Attribute | Value |
|-----------|-------|
| File      | `Dataset_for_Data_Analytics.xlsx` |
| Rows      | 1,200 |
| Columns   | 14 |
| Date Range| 2023-01-01 to 2025-06-30 |

### Issues Found & Fixed

| Change ID | Column | Issue | Fix |
|-----------|--------|-------|-----|
| CR001 | CouponCode | 309 missing/null values | Imputed with `'NONE'` |
| CR002 | UnitPrice, TotalPrice | Floating point precision errors | Rounded to 2 decimal places |
| CR003 | Date | Non-standard datetime format | Converted to ISO 8601 (YYYY-MM-DD) |

### Verification Gate (for Project 2 unlock)
- ✅ 0% error rate on unique identifiers (0 duplicate OrderIDs)
- ✅ 0% error rate on date formats (all dates in YYYY-MM-DD)

### Files
```
├── Dataset_for_Data_Analytics.xlsx   # Original raw dataset
├── cleaned_dataset.xlsx              # Cleaned output
├── clean_data.py                     # Python cleaning script
├── change_log.pdf                    # PDF documentation of all changes
└── README.md
```

### How to Run
```bash
pip install pandas openpyxl
python clean_data.py
```

### Tools Used
- Python 3
- pandas — data manipulation
- openpyxl — Excel formatting
