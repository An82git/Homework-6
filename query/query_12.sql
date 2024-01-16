-- Оцінки студентів у певній групі з певного предмета на останньому занятті.
SELECT s.id as student_id, s.student_name, a.assessment, a.date_of_receipt 
FROM assessments a 
JOIN students s ON a.student_id = s.id 
JOIN groups g ON s.group_id = g.id 
JOIN subjects sb ON a.subject_id = sb.id 
WHERE (g.group_name = 'group' OR g.id = 'group') 
    AND (sb.subject_name = 'subject'  OR sb.id = 'subject_id') 
    AND a.date_of_receipt IN (
                            SELECT MAX(a.date_of_receipt) 
                            FROM assessments a 
                            JOIN subjects sb ON a.subject_id = sb.id
                            JOIN students s ON a.student_id = s.id 
                            JOIN groups g ON s.group_id = g.id 
                            WHERE (sb.subject_name = 'subject' OR sb.id = 'subject_id') 
                                AND (g.group_name = 'group' OR g.id = 'group')
                            )
GROUP BY a.id;