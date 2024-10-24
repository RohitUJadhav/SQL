select distinct class from courses where class in 
(select class from courses group by class having count(student) > 4)