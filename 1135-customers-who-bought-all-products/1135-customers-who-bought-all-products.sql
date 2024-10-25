select customer_id  from 
(select customer_id,  count(distinct product_key) as cnt from customer  group by customer_id ) as a
where a.cnt  = (select count(product_key) from product);
