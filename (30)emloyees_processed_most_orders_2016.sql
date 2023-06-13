SELECT employees.employee_id, employees.last_name,employees.first_name, COUNT(*) AS OrderCount
FROM employees 
JOIN orders ON employees.employee_id = orders.employee_id
JOIN order_details ON orders.order_id = order_details.order_id
WHERE MONTH(orders.order_date) = 8 AND YEAR(orders.order_date) = 2016
GROUP BY employees.employee_id,employees.last_name,employees.first_name
ORDER BY OrderCount DESC
LIMIT 1;
