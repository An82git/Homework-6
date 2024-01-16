-- Список курсів, які певному студенту читає певний викладач.
SELECT sb.id as subject_id, sb.subject_name 
FROM subjects sb
JOIN assessments a ON a.subject_id = sb.id 
JOIN students s ON a.student_id = s.id 
JOIN teachers t ON sb.teacher_id = t.id 
WHERE (s.student_name = 'student' OR s.id = 'student_id') 
    AND (t.teacher_name = 'teacher' OR t.id = 'teacher_id')
GROUP BY sb.id;