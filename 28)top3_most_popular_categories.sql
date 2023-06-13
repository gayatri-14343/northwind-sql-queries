SELECT categories.category_id, categories.category_name, COUNT(*) AS OrderCount
FROM order_details
JOIN products ON order_details.product_id = products.product_id
JOIN categories  ON products.category_id = categories.category_id
GROUP BY categories.category_id, categories.category_name
ORDER BY OrderCount DESC
LIMIT 3;