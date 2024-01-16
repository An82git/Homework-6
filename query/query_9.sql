-- Знайти список курсів, які відвідує студент.
SELECT sb.id as subject_id, sb.subject_name 
FROM subjects sb
JOIN assessments a ON a.subject_id = sb.id 
JOIN students s ON a.student_id = s.id 
WHERE s.student_name = 'student' OR s.id = 'student_id'
GROUP BY sb.id;