-- Знайти середній бал на потоці (по всій таблиці оцінок).
SELECT ROUND(AVG(a.assessment), 2) as average_score
FROM assessments a;