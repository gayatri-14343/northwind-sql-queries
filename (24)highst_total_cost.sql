SELECT order_id,freight as total_cost
FROM Orders
WHERE 	freight = (
    SELECT MAX(	freight)
    FROM orders
);