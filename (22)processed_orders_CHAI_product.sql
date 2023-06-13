SELECT 	employees.employee_id,last_name,first_name
FROM 	employees
JOIN orders ON 	employees.	employee_id = orders.employee_id
JOIN order_details ON Orders.order_id = order_details.order_id
JOIN Products ON order_details.product_id = products.product_id
WHERE Products.product_name = 'Chai';