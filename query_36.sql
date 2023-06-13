select c.customer_id, c.company_name , sum(((od.quantity * p.unit_price)*(1-od.discount))) as order_amount,
 CASE
           WHEN SUM(((od.quantity * p.unit_Price) * (1 - od.Discount))) > 5000 THEN 'High Value'
           WHEN SUM(((od.quantity * p.unit_Price) * (1 - od.Discount))) > 1000 AND SUM(((od.quantity * p.unit_Price) * (1 - od.Discount))) < 5000  THEN 'Medium Value'
           ELSE 'Low Value'
       END AS Classification
       
from customers as c 
join orders as o on c.customer_id = o.customer_id
join order_details as od on o.order_id = od.order_id
join products as p on od.product_id = p.product_id
group by c.customer_id