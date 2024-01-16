-- Середній бал, який певний викладач ставить певному студентові.
SELECT sb.subject_name, ROUND(AVG(a.assessment), 2) as average_grade
FROM teachers t
JOIN subjects sb ON sb.teacher_id = t.id
JOIN assessments a ON a.subject_id = sb.id
JOIN students s ON a.student_id = s.id 
WHERE (t.teacher_name = 'teacher' OR t.id = 'teacher_id') 
    AND (s.student_name = 'student' OR s.id = 'student_id')
GROUP BY sb.id;