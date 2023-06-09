select e.first_name , e.last_name , count(o.order_id) as no_of_orders , 
case when  count(o.order_id) >100 then 'high performing'
	  when  count(o.order_id) >50 and count(o.order_id) <100 then 'medium performing'
      else 'lower performing '
      end as performance_category
from employees as e
left join orders as o
on e.employee_id = o.employee_id
group by e.employee_id ;