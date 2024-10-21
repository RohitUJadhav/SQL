select s.student_id, s.student_name, sb.subject_name ,count(e.student_id) attended_exams
from students s cross join subjects sb
left join examinations e
on s.student_id = e.student_id 
and sb.subject_name = e.subject_name
group by s.student_name , sb.subject_name,s.student_id
ORDER BY S.student_id, S.student_name, Sb.subject_name;