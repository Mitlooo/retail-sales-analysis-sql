# SQL Learning Notes

## SELECT

Use `SELECT` to choose columns.

```sql
SELECT product, sales
FROM sales_orders;
```

Meaning: show product and sales from the table.

## WHERE

Use `WHERE` to filter rows.

```sql
SELECT *
FROM sales_orders
WHERE delivery_status = 'Returned';
```

Meaning: show only returned orders.

## COUNT

Use `COUNT` to count rows.

```sql
SELECT COUNT(*) AS total_orders
FROM sales_orders;
```

Meaning: count all orders.

## SUM

Use `SUM` to add numeric values.

```sql
SELECT SUM(sales) AS total_sales
FROM sales_orders;
```

Meaning: add all sales values.

## GROUP BY

Use `GROUP BY` when you want totals for each group.

```sql
SELECT region, SUM(sales) AS total_sales
FROM sales_orders
GROUP BY region;
```

Meaning: calculate total sales for each region.

## ORDER BY

Use `ORDER BY` to sort results.

```sql
SELECT region, SUM(sales) AS total_sales
FROM sales_orders
GROUP BY region
ORDER BY total_sales DESC;
```

Meaning: show region sales from highest to lowest.

## HAVING

Use `HAVING` to filter grouped results.

```sql
SELECT product, SUM(profit) AS total_profit
FROM sales_orders
GROUP BY product
HAVING total_profit > 100;
```

Meaning: show products where total profit is above 100.
