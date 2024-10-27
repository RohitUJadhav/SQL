select p.product_name, sum(unit) as unit
from products p join orders o 
using(product_id)
where date_format(o.order_date,"%Y") = 2020
and date_format(o.order_date,"%m") = 02
group by o.product_id
having unit >= 100; 