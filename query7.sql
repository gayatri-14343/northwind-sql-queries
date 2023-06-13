SELECT p.product_id, p.product_name, SUM(s.quantity_per_unit) AS total_sold
FROM products p
JOIN products s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC
LIMIT 5;