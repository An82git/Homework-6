-- Знайти студента із найвищим середнім балом з певного предмета.
SELECT s.id as student_id, s.student_name, ROUND(AVG(a.assessment), 2) as average_grade
FROM students s
JOIN assessments a ON s.id = a.student_id
JOIN subjects sb ON a.subject_id = sb.id
WHERE sb.subject_name = 'subject' OR sb.id = 'subject_id'
GROUP BY s.id
ORDER BY AVG(a.assessment) DESC
LIMIT 1;