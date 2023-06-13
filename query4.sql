select c.category_name, sum(od.quantity*od.unit_price)
from products as p, order_details as od, categories as c
where od.product_id = p.product_id
and p.category_id = c.category_id
group by category_name;