SELECT country, COUNT(*) AS Frequency
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY country
ORDER BY Frequency DESC
LIMIT 1;