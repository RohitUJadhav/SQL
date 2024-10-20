select s.user_id,
ROUND(AVG(IF(c.action = 'confirmed' , 1, 0)), 2) as confirmation_rate
from signups s left join confirmations c
using(user_id)
group by s.user_id;