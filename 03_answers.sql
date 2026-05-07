-- Retail SQL Analysis Answers
-- Use this only after trying the questions yourself.

USE retail_analysis;

-- 1. Show all rows.
SELECT *
FROM sales_orders;

-- 2. Show selected columns.
SELECT order_id, order_date, product, sales, profit
FROM sales_orders;

-- 3. Count total orders.
SELECT COUNT(*) AS total_orders
FROM sales_orders;

-- 4. Total sales and total profit.
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_orders;

-- 5. Overall profit margin.
SELECT
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percent
FROM sales_orders;

-- 6. Sales by region.
SELECT
    region,
    SUM(sales) AS total_sales
FROM sales_orders
GROUP BY region
ORDER BY total_sales DESC;

-- 7. Profit by category.
SELECT
    category,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY category
ORDER BY total_profit DESC;

-- 8. Sales by product.
SELECT
    product,
    SUM(sales) AS total_sales
FROM sales_orders
GROUP BY product
ORDER BY total_sales DESC;

-- 9. Profit by product.
SELECT
    product,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY product
ORDER BY total_profit DESC;

-- 10. Orders by city.
SELECT
    city,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY city
ORDER BY total_orders DESC;

-- 11. Orders by delivery status.
SELECT
    delivery_status,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY delivery_status
ORDER BY total_orders DESC;

-- 12. Orders by payment method.
SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY payment_method
ORDER BY total_orders DESC;

-- 13. Monthly sales.
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    SUM(sales) AS total_sales
FROM sales_orders
GROUP BY order_month
ORDER BY order_month;

-- 14. Returned orders.
SELECT *
FROM sales_orders
WHERE delivery_status = 'Returned';

-- 15. Products where total profit is greater than 100.
SELECT
    product,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY product
HAVING total_profit > 100
ORDER BY total_profit DESC;
