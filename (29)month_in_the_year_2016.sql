SELECT MONTH(order_date) AS SalesMonth, SUM(freight) AS TotalSales
FROM orders 
JOIN order_details ON orders.order_id = order_details.order_id
WHERE YEAR(order_date) = 2016
GROUP BY MONTH(order_date)
ORDER BY TotalSales DESC
LIMIT 1;