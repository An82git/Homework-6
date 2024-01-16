-- Знайти які курси читає певний викладач.
SELECT sb.subject_name
FROM subjects sb
JOIN teachers t ON sb.teacher_id = t.id
WHERE t.teacher_name = 'teacher' OR t.id = 'teacher_id'
GROUP BY sb.id
ORDER BY sb.id;