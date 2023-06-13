SELECT 
    categories.category_id,
    categories.category_name,
    AVG(products.unit_price) AS AveragePrice
FROM 
    categories 
    JOIN products ON categories.category_id = products.category_id
GROUP BY 
    categories.category_id,
    categories.category_name;
