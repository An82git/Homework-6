-- Знайти список студентів у певній групі.
SELECT s.id as student_id, s.student_name
FROM students s 
JOIN groups g ON s.group_id = g.id 
WHERE g.group_name = 'group' OR g.id = 'group'
GROUP BY s.id;