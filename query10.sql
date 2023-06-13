select o.order_id, o.order_date, c.customer_id, e.employee_id
from orders o
join customers c on o.customer_id = c.customer_id
join employees e on o.employee_id = e.employee_id;