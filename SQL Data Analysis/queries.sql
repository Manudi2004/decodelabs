-- =========================================================================
-- DecodeLabs Data Analytics Internship - Batch 2026
-- Project 3: SQL Data Analysis
-- Dataset: E-commerce Orders (1,200 records)
-- Table assumed: orders
-- =========================================================================

-- Q1: High-value orders (SELECT + WHERE + ORDER BY)
SELECT OrderID, Product, TotalPrice, OrderStatus
FROM orders
WHERE TotalPrice > 2000
ORDER BY TotalPrice DESC
LIMIT 10;


-- Q2: Cancelled/Returned orders paid by Credit Card (multi-condition WHERE)
SELECT OrderID, Product, PaymentMethod, OrderStatus, TotalPrice
FROM orders
WHERE OrderStatus IN ('Cancelled', 'Returned')
  AND PaymentMethod = 'Credit Card'
ORDER BY TotalPrice DESC
LIMIT 10;


-- Q3: Revenue & order count per Product (GROUP BY + COUNT + SUM + AVG)
SELECT Product,
       COUNT(*) AS order_count,
       SUM(TotalPrice) AS total_revenue,
       ROUND(AVG(TotalPrice), 2) AS avg_order_value
FROM orders
GROUP BY Product
ORDER BY total_revenue DESC;


-- Q4: Average order value per Payment Method (GROUP BY + AVG)
SELECT PaymentMethod,
       COUNT(*) AS order_count,
       ROUND(AVG(TotalPrice), 2) AS avg_order_value
FROM orders
GROUP BY PaymentMethod
ORDER BY avg_order_value DESC;


-- Q5: Order status breakdown with % share of total orders (subquery)
SELECT OrderStatus,
       COUNT(*) AS order_count,
       SUM(TotalPrice) AS total_revenue,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders), 2) AS pct_of_orders
FROM orders
GROUP BY OrderStatus
ORDER BY order_count DESC;


-- Q6: Referral sources driving the most orders (GROUP BY + HAVING)
SELECT ReferralSource,
       COUNT(*) AS order_count,
       SUM(TotalPrice) AS total_revenue
FROM orders
GROUP BY ReferralSource
HAVING COUNT(*) > 245
ORDER BY order_count DESC;


-- Q7: Revenue % contribution by Product (GROUP BY + subquery)
SELECT Product,
       SUM(TotalPrice) AS product_revenue,
       ROUND(SUM(TotalPrice) * 100.0 / (SELECT SUM(TotalPrice) FROM orders), 2)
           AS pct_of_total_revenue
FROM orders
GROUP BY Product
ORDER BY pct_of_total_revenue DESC;


-- Q8: Top 10 customers by total spend (GROUP BY + ORDER BY + LIMIT)
SELECT CustomerID,
       COUNT(*) AS orders_placed,
       SUM(TotalPrice) AS total_spend
FROM orders
GROUP BY CustomerID
ORDER BY total_spend DESC
LIMIT 10;


-- Q9: Monthly revenue trend (GROUP BY on a derived date column)
SELECT strftime('%Y-%m', Date) AS year_month,
       COUNT(*) AS order_count,
       SUM(TotalPrice) AS revenue
FROM orders
GROUP BY year_month
ORDER BY year_month;


-- Q10: Highest-value orders placed without a coupon (WHERE IS NULL)
SELECT OrderID, Product, TotalPrice, CouponCode
FROM orders
WHERE CouponCode IS NULL
ORDER BY TotalPrice DESC
LIMIT 10;
