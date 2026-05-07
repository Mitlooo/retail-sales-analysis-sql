-- Retail SQL Analysis Project
-- Run this file first in MySQL Workbench.

DROP DATABASE IF EXISTS retail_analysis;
CREATE DATABASE retail_analysis;
USE retail_analysis;

CREATE TABLE sales_orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    region VARCHAR(30) NOT NULL,
    city VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    discount DECIMAL(5,2) NOT NULL,
    sales DECIMAL(10,2) NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    profit DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(30) NOT NULL,
    delivery_status VARCHAR(30) NOT NULL
);

INSERT INTO sales_orders (
    order_id, order_date, customer_name, region, city, category, product,
    quantity, unit_price, discount, sales, cost, profit, payment_method, delivery_status
) VALUES
('ORD-1001', '2026-01-04', 'Aarav Shah', 'West', 'Galway', 'Electronics', 'Wireless Mouse', 3, 18, 0, 54, 30, 24, 'Card', 'Delivered'),
('ORD-1002', '2026-01-05', 'Niamh Byrne', 'East', 'Dublin', 'Office Supplies', 'Notebook Pack', 5, 6, 0.05, 28.5, 15, 13.5, 'Cash', 'Delivered'),
('ORD-1003', '2026-01-07', 'Luca Rossi', 'South', 'Cork', 'Furniture', 'Office Chair', 1, 120, 0.1, 108, 78, 30, 'Card', 'Delivered'),
('ORD-1004', '2026-01-10', 'Priya Patel', 'North', 'Sligo', 'Electronics', 'USB-C Hub', 2, 32, 0, 64, 42, 22, 'Online', 'Delivered'),
('ORD-1005', '2026-01-12', 'Sean Murphy', 'East', 'Dublin', 'Office Supplies', 'Printer Paper', 8, 5, 0, 40, 24, 16, 'Card', 'Delivered'),
('ORD-1006', '2026-01-15', 'Emma Walsh', 'West', 'Limerick', 'Furniture', 'Desk Lamp', 2, 28, 0.05, 53.2, 34, 19.2, 'Online', 'Returned'),
('ORD-1007', '2026-01-18', 'Rohan Mehta', 'South', 'Waterford', 'Electronics', 'Bluetooth Speaker', 1, 75, 0.15, 63.75, 46, 17.75, 'Card', 'Delivered'),
('ORD-1008', '2026-01-21', 'Aoife Kelly', 'East', 'Dublin', 'Office Supplies', 'Pen Set', 10, 3, 0, 30, 12, 18, 'Cash', 'Delivered'),
('ORD-1009', '2026-01-24', 'Maya Singh', 'North', 'Donegal', 'Furniture', 'Bookshelf', 1, 95, 0.1, 85.5, 60, 25.5, 'Online', 'Delivered'),
('ORD-1010', '2026-01-28', 'Daniel O''Brien', 'West', 'Galway', 'Electronics', 'Keyboard', 2, 25, 0, 50, 30, 20, 'Card', 'Pending'),
('ORD-1011', '2026-02-02', 'Fatima Khan', 'East', 'Dublin', 'Electronics', 'Webcam', 1, 55, 0.05, 52.25, 35, 17.25, 'Online', 'Delivered'),
('ORD-1012', '2026-02-04', 'Conor Ryan', 'South', 'Cork', 'Office Supplies', 'Notebook Pack', 7, 6, 0, 42, 21, 21, 'Card', 'Delivered'),
('ORD-1013', '2026-02-07', 'Meera Joshi', 'West', 'Limerick', 'Furniture', 'Office Chair', 2, 120, 0.15, 204, 156, 48, 'Card', 'Delivered'),
('ORD-1014', '2026-02-09', 'Grace Nolan', 'North', 'Sligo', 'Office Supplies', 'Printer Paper', 6, 5, 0.05, 28.5, 18, 10.5, 'Cash', 'Delivered'),
('ORD-1015', '2026-02-12', 'Yusuf Ali', 'East', 'Dublin', 'Electronics', 'Wireless Mouse', 4, 18, 0, 72, 40, 32, 'Online', 'Delivered'),
('ORD-1016', '2026-02-15', 'Sofia Garcia', 'South', 'Waterford', 'Furniture', 'Desk Lamp', 3, 28, 0.1, 75.6, 51, 24.6, 'Card', 'Returned'),
('ORD-1017', '2026-02-18', 'Jack Doyle', 'West', 'Galway', 'Electronics', 'USB-C Hub', 1, 32, 0, 32, 21, 11, 'Card', 'Delivered'),
('ORD-1018', '2026-02-20', 'Ananya Rao', 'East', 'Dublin', 'Office Supplies', 'Pen Set', 12, 3, 0, 36, 14.4, 21.6, 'Cash', 'Delivered'),
('ORD-1019', '2026-02-24', 'Omar Hassan', 'North', 'Donegal', 'Furniture', 'Bookshelf', 2, 95, 0.05, 180.5, 120, 60.5, 'Online', 'Delivered'),
('ORD-1020', '2026-02-27', 'Ciara Smith', 'South', 'Cork', 'Electronics', 'Bluetooth Speaker', 2, 75, 0.1, 135, 92, 43, 'Card', 'Delivered'),
('ORD-1021', '2026-03-02', 'Aarav Shah', 'East', 'Dublin', 'Office Supplies', 'Notebook Pack', 4, 6, 0, 24, 12, 12, 'Card', 'Delivered'),
('ORD-1022', '2026-03-04', 'Niamh Byrne', 'West', 'Limerick', 'Electronics', 'Keyboard', 1, 25, 0, 25, 15, 10, 'Online', 'Pending'),
('ORD-1023', '2026-03-07', 'Luca Rossi', 'South', 'Cork', 'Furniture', 'Office Chair', 1, 120, 0.05, 114, 78, 36, 'Card', 'Delivered'),
('ORD-1024', '2026-03-10', 'Priya Patel', 'North', 'Sligo', 'Electronics', 'Webcam', 2, 55, 0.1, 99, 70, 29, 'Online', 'Delivered'),
('ORD-1025', '2026-03-12', 'Sean Murphy', 'East', 'Dublin', 'Office Supplies', 'Printer Paper', 10, 5, 0, 50, 30, 20, 'Cash', 'Delivered'),
('ORD-1026', '2026-03-15', 'Emma Walsh', 'West', 'Galway', 'Furniture', 'Desk Lamp', 4, 28, 0.05, 106.4, 68, 38.4, 'Card', 'Delivered'),
('ORD-1027', '2026-03-17', 'Rohan Mehta', 'South', 'Waterford', 'Electronics', 'Wireless Mouse', 5, 18, 0, 90, 50, 40, 'Online', 'Delivered'),
('ORD-1028', '2026-03-19', 'Aoife Kelly', 'East', 'Dublin', 'Office Supplies', 'Pen Set', 15, 3, 0, 45, 18, 27, 'Cash', 'Delivered'),
('ORD-1029', '2026-03-23', 'Maya Singh', 'North', 'Donegal', 'Furniture', 'Bookshelf', 1, 95, 0.15, 80.75, 60, 20.75, 'Online', 'Returned'),
('ORD-1030', '2026-03-27', 'Daniel O''Brien', 'West', 'Limerick', 'Electronics', 'USB-C Hub', 3, 32, 0, 96, 63, 33, 'Card', 'Delivered'),
('ORD-1031', '2026-04-02', 'Fatima Khan', 'East', 'Dublin', 'Electronics', 'Bluetooth Speaker', 1, 75, 0.05, 71.25, 46, 25.25, 'Online', 'Delivered'),
('ORD-1032', '2026-04-05', 'Conor Ryan', 'South', 'Cork', 'Office Supplies', 'Notebook Pack', 9, 6, 0, 54, 27, 27, 'Card', 'Delivered'),
('ORD-1033', '2026-04-08', 'Meera Joshi', 'West', 'Galway', 'Furniture', 'Office Chair', 1, 120, 0.1, 108, 78, 30, 'Card', 'Delivered'),
('ORD-1034', '2026-04-11', 'Grace Nolan', 'North', 'Sligo', 'Office Supplies', 'Printer Paper', 5, 5, 0, 25, 15, 10, 'Cash', 'Delivered'),
('ORD-1035', '2026-04-14', 'Yusuf Ali', 'East', 'Dublin', 'Electronics', 'Wireless Mouse', 2, 18, 0, 36, 20, 16, 'Online', 'Delivered'),
('ORD-1036', '2026-04-17', 'Sofia Garcia', 'South', 'Waterford', 'Furniture', 'Desk Lamp', 2, 28, 0, 56, 34, 22, 'Card', 'Delivered'),
('ORD-1037', '2026-04-20', 'Jack Doyle', 'West', 'Limerick', 'Electronics', 'Webcam', 1, 55, 0, 55, 35, 20, 'Card', 'Pending'),
('ORD-1038', '2026-04-22', 'Ananya Rao', 'East', 'Dublin', 'Office Supplies', 'Pen Set', 20, 3, 0.05, 57, 24, 33, 'Cash', 'Delivered'),
('ORD-1039', '2026-04-25', 'Omar Hassan', 'North', 'Donegal', 'Furniture', 'Bookshelf', 2, 95, 0.1, 171, 120, 51, 'Online', 'Delivered'),
('ORD-1040', '2026-04-29', 'Ciara Smith', 'South', 'Cork', 'Electronics', 'Keyboard', 3, 25, 0, 75, 45, 30, 'Card', 'Delivered');

SELECT * FROM sales_orders;
