-- Знайти оцінки студентів у окремій групі з певного предмета.
SELECT s.id as student_id, s.student_name, a.assessment
FROM students s
JOIN groups g ON s.group_id = g.id
JOIN assessments a ON a.student_id = s.id
JOIN subjects sb ON a.subject_id = sb.id
WHERE (g.group_name = 'group' OR g.id = 'group') 
    AND (sb.subject_name = 'subject' OR sb.id = 'subject_id')
GROUP BY s.id;