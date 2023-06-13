select e.employee_id, count(o.order_id) as order_count
From employees e
Left join orders o on e.employee_id = o.employee_id
group by e.employee_id;