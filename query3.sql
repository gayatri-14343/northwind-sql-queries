select product_id, product_name, sum(quantity_per_unit) as total_quantity
From products
group by product_id, product_name;