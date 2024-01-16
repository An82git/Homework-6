-- Table: groups
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
    id CHAR(4) PRIMARY KEY,
    group_name VARCHAR(10)
);

-- Table: students
DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR(50),
    group_id CHAR(4),
    FOREIGN KEY (group_id) REFERENCES groups (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Table: teachers
DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher_name VARCHAR(50)
);

-- Table: subjects
DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject_name VARCHAR(50),
    teacher_id INTEGER,
    FOREIGN KEY (teacher_id) REFERENCES teachers (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Table: assessments
DROP TABLE IF EXISTS assessments;
CREATE TABLE assessments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_id INTEGER,
    subject_id INTEGER,
    assessment INTEGER,
    date_of_receipt DATE,
    FOREIGN KEY (student_id) REFERENCES students (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
    FOREIGN KEY (subject_id) REFERENCES subjects (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

