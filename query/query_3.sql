-- Знайти середній бал у групах з певного предмета.
SELECT g.id as group_id, g.group_name, ROUND(AVG(a.assessment), 2) as average_grade
FROM groups g 
JOIN students s ON s.group_id = g.id 
JOIN assessments a ON a.student_id = s.id
JOIN subjects sb ON a.subject_id = sb.id
WHERE sb.subject_name = 'subject' OR sb.id = 'subject_id'
GROUP BY g.id;