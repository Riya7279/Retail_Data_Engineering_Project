USE retail_etl;

#Total sales
SELECT SUM(total_price) AS Total_sales
FROM orders;

#Top 5 customers by spending
SELECT c.customer_name,SUM(o.total_price) AS total_sales
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales
LIMIT 5;

#Top selling products
SELECT p.product_name ,SUM(o.quantity) AS total_qty
FROM orders o
JOIN products p ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_qty;

#Sales by Category
SELECT
    p.category,
    SUM(o.total_price) AS total_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category; 

#Average Order Value
SELECT AVG(total_price) AS avg_order_value
FROM orders;
