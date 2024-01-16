-- Знайти 5 студентів із найбільшим середнім балом з усіх предметів.
SELECT s.id as student_id, s.student_name, ROUND(AVG(a.assessment), 2) as average_score
FROM assessments a 
JOIN students s ON a.student_id = s.id
GROUP BY s.id
ORDER BY AVG(a.assessment) DESC
LIMIT 5;