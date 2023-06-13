select c.customer_id, count(o.order_id) as order_count
from customers c
join orders o ON c.customer_id = o.customer_id
group by c.customer_id
Having count(o.order_id) > 10;