USE retail_analysis;

SELECT COUNT(*) AS total_orders
FROM sales_orders;

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_orders;

SELECT
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_percent
FROM sales_orders;

SELECT
    region,
    SUM(sales) AS total_sales
FROM sales_orders
GROUP BY region
ORDER BY total_sales DESC;

SELECT
    category,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY category
ORDER BY total_profit DESC;

SELECT
    product,
    SUM(sales) AS total_sales
FROM sales_orders
GROUP BY product
ORDER BY total_sales DESC;

SELECT
    product,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY product
ORDER BY total_profit DESC;

SELECT
    city,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY city
ORDER BY total_orders DESC;

SELECT
    delivery_status,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY delivery_status
ORDER BY total_orders DESC;

SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY payment_method
ORDER BY total_orders DESC;

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS order_month,
    SUM(sales) AS total_sales
FROM sales_orders
GROUP BY order_month
ORDER BY order_month;

SELECT *
FROM sales_orders
WHERE delivery_status = 'Returned';

SELECT
    product,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY product
HAVING total_profit > 100
ORDER BY total_profit DESC;




