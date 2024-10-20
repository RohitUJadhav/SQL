select e.name, e1.unique_id
from Employees e left join EmployeeUNI e1
on e.id = e1.id;