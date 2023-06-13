SELECT customers.customer_id, customers.contact_name,
COUNT(orders.order_id) AS Totalorders
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUp BY customers.customer_id, customers.contact_name
ORDER BY Totalorders DESC;
