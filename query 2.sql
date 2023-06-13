SELECT distinct suppliers.*
FROM suppliers
JOIN products ON suppliers.supplier_id = products.supplier_id
JOIN categories ON products.category_id = categories.category_id
WHERE categories.category_name = 'Seafood';