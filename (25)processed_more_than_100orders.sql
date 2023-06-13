SELECT employees.employee_id, last_name,first_name,COUNT(orders.order_id) as NO_OF_ORDERS
FROM employees
JOIN orders  ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
HAVING COUNT(orders.order_id) > 100;
