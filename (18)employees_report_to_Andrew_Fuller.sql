select employee_id , first_name || ' ' || last_name  
from employees 
where reports_to = ‘Andrew Fuller’;