INSERT INTO groups(id, group_name) VALUES (?, ?);
INSERT INTO students(student_name, group_id) VALUES (?, ?);
INSERT INTO teachers(teacher_name) VALUES (?);
INSERT INTO subjects(subject_name, teacher_id) VALUES (?, ?);
INSERT INTO assessments(student_id, subject_id, assessment, date_of_receipt) VALUES (?, ?, ?, ?);