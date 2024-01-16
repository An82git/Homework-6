-- Знайти середній бал, який ставить певний викладач зі своїх предметів.
SELECT sb.subject_name, ROUND(AVG(a.assessment), 2) as average_grade
FROM teachers t
JOIN subjects sb ON sb.teacher_id = t.id
JOIN assessments a ON a.subject_id = sb.id
WHERE t.teacher_name = 'teacher' OR t.id = 'teacher_id'
GROUP BY sb.id;