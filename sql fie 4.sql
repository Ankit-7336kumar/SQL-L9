
-- 1. CREATE DATABASE
CREATE DATABASE ddl_practice;
USE ddl_practice;

-- 2. CREATE TABLE
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);

-- 3. INSERT DATA
INSERT INTO students VALUES
(1, 'Amit', 22, 'Jaipur', 85),
(2, 'Rahul', 23, 'Delhi', 75),
(3, 'Priya', 21, 'Kota', 90),
(4, 'Neha', 24, 'Jaipur', 65),
(5, 'Vikas', 22, 'Ajmer', 80);

-- 4. VIEW TABLE
SELECT * FROM students;

-- 5. ALTER: ADD COLUMN
ALTER TABLE students
ADD email VARCHAR(100);

-- 6. ALTER: MODIFY COLUMN
ALTER TABLE students
MODIFY COLUMN name VARCHAR(100);

-- 7. ALTER: RENAME COLUMN
ALTER TABLE students
RENAME COLUMN city TO student_city;


SELECT * FROM students;

-- 8. ALTER: DROP COLUMN
ALTER TABLE students
DROP COLUMN email;

-- 9. RENAME TABLE
RENAME TABLE students TO college_students;

SELECT * FROM college_students;

-- 10. RENAME TABLE BACK
RENAME TABLE college_students TO students;

-- 11. TRUNCATE TABLE
TRUNCATE TABLE students;

SELECT * FROM students;

-- 12. DROP TABLE
DROP TABLE students;

-- 13. CHECK TABLES
SHOW TABLES;
