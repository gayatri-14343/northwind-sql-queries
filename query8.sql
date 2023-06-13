select p.product_id, p.product_name
from products p
left join orders o on p.product_id
where o.order_id is null;