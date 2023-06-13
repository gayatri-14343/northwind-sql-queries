SELECT customers.customer_id,customers.contact_name AS CUSTOMER_NAME
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
JOIN order_details ON Orders.order_id = order_details.order_id
JOIN Products ON order_details.product_id = products.product_id
WHERE Products.product_name = 'Chai';