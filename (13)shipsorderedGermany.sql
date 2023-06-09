select e.first_name || ' ' || e.last_name as full_name , 
sum( (od.quantity*(select unit_price from products)) - od.discount*(od.quantity*(select unit_price from products)) ) as total_revenue
from employees as e 
left join orders as o 
on e.employee_id = o.employee_id
inner join order_details as od 
on o.order_id = od.order_id
group by full_name; 