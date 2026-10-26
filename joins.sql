CREATE DATABASE company;
USE company;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    city VARCHAR(30),
    joining_date DATE
);  

INSERT INTO employee VALUES
(101, 'Amit', 'HR', 35000, 'Jaipur', '2023-01-15'),
(102, 'Rahul', 'IT', 55000, 'Delhi', '2022-05-20'),
(103, 'Priya', 'Finance', 45000, 'Jaipur', '2021-08-10'),
(104, 'Neha', 'IT', 65000, 'Mumbai', '2020-03-25'),
(105, 'Rohit', 'HR', 30000, 'Delhi', '2024-02-12'),
(106, 'Anjali', 'Sales', 40000, 'Jaipur', '2023-07-18'),
(107, 'Vikas', 'Finance', 70000, 'Mumbai', '2019-11-05'),
(108, 'Pooja', 'IT', 50000, 'Jaipur', '2022-09-14'),
(109, 'Karan', 'Sales', 32000, 'Delhi', '2024-06-01'),
(110, 'Sneha', 'HR', 42000, 'Mumbai', '2021-12-20');  

SELECT * FROM employee;

INSERT INTO employee VALUES
(111, 'Mohit', 'IT', 48000, 'Jaipur', '2023-04-10'),
(112, 'Simran', 'HR', 38000, 'Delhi', '2022-06-15'),
(113, 'Deepak', 'Finance', 62000, 'Mumbai', '2021-09-20'),
(114, 'Kavita', 'Sales', 35000, 'Jaipur', '2024-01-05'),
(115, 'Arjun', 'IT', 58000, 'Delhi', '2020-12-11');

SELECT * FROM employee; 

UPDATE employee SET salary = 50000
WHERE emp_id = 103;  

SELECT * FROM employee WHERE emp_id = 103; 

UPDATE employee SET city = 'Mumbai'
WHERE city = 'Delhi';   

SET SQL_SAFE_UPDATES = 0; 

SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 5; 

 
  -- joins    
  
  
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);  

INSERT INTO students (student_id, name, course_id)
VALUES
(1, 'Rahul', 101),
(2, 'Ajay', 102),
(3, 'Vijay', 103),
(4, 'Neha', NULL);  

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO course (course_id, course_name)
VALUES
(101, 'Java'),
(102, 'Python'),
(104, 'SQL');  

select * from students;  

select * from course; 

SELECT s.student_id, s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id
WHERE c.course_name = 'Java';  

SELECT s.student_id, s.name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id
WHERE c.course_name = 'Java';  

SELECT s.name, c.course_name
FROM students s
INNER JOIN course c
ON s.course_id = c.course_id
WHERE s.course_id = 102;   

-- left joins   

select s.student_id ,s.name,s.course_id,c.course_name from students s left join course c  on s.course_id = c.course_id;

SELECT *
FROM students s
LEFT JOIN course c
ON s.course_id = c.course_id; 

SELECT s.*
FROM students s
LEFT JOIN course c
ON s.course_id = c.course_id
WHERE c.course_name = 'Java'; 

SELECT COUNT(s.student_id) AS total_students
FROM students s
LEFT JOIN course c
ON s.course_id = c.course_id;

SELECT c.course_name, COUNT(s.student_id) AS number_of_students
FROM course c
LEFT JOIN students s
ON c.course_id = s.course_id
GROUP BY c.course_id, c.course_name;   

-- right joins 

SELECT c.course_name, COUNT(s.student_id) AS number_of_students
FROM course c
right JOIN students s
ON c.course_id = s.course_id
GROUP BY c.course_id, c.course_name;

-- self joins 


CREATE TABLE employeess (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(50),
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    manager_id INT
);

INSERT INTO employeess
(emp_id, emp_name, gender, age, department, designation,
 salary, city, joining_date, manager_id)
VALUES
(101, 'Amit Sharma', 'Male', 25, 'IT', 'Software Engineer', 45000.00, 'Jaipur', '2023-01-15', 109),
(102, 'Priya Verma', 'Female', 28, 'HR', 'HR Executive', 38000.00, 'Delhi', '2022-05-10', NULL),
(103, 'Rahul Singh', 'Male', 30, 'Finance', 'Accountant', 52000.00, 'Mumbai', '2021-08-20', 119),
(104, 'Sneha Gupta', 'Female', 26, 'IT', 'Frontend Developer', 48000.00, 'Pune', '2023-03-12', 109),
(105, 'Vikas Yadav', 'Male', 35, 'Sales', 'Sales Manager', 65000.00, 'Jaipur', '2019-06-18', NULL),
(106, 'Neha Sharma', 'Female', 29, 'Marketing', 'Marketing Executive', 42000.00, 'Delhi', '2022-09-25', 112),
(107, 'Rohit Kumar', 'Male', 32, 'IT', 'Backend Developer', 60000.00, 'Noida', '2020-04-08', NULL),
(108, 'Anjali Mehta', 'Female', 27, 'Finance', 'Financial Analyst', 55000.00, 'Ahmedabad', '2021-07-11', NULL),
(109, 'Mohit Jain', 'Male', 31, 'IT', 'Database Administrator', 70000.00, 'Indore', '2018-11-30', NULL),
(110, 'Kiran Patel', 'Female', 24, 'HR', 'Recruiter', 36000.00, 'Surat', '2023-05-01', 102),
(111, 'Deepak Saini', 'Male', 29, 'Sales', 'Sales Executive', 40000.00, 'Jaipur', '2022-01-19', 129),
(112, 'Pooja Mishra', 'Female', 33, 'Marketing', 'Marketing Manager', 68000.00, 'Lucknow', '2019-09-14', NULL),
(113, 'Arjun Rana', 'Male', 27, 'IT', 'Java Developer', 53000.00, 'Chandigarh', '2021-12-22', 109),
(114, 'Ritika Kapoor', 'Female', 26, 'Finance', 'Accountant', 47000.00, 'Delhi', '2023-02-05', 119),
(115, 'Manish Gupta', 'Male', 36, 'Admin', 'Admin Manager', 62000.00, 'Jaipur', '2018-07-16', 123),
(116, 'Simran Kaur', 'Female', 30, 'IT', 'QA Engineer', 50000.00, 'Amritsar', '2020-10-10', 109),
(117, 'Sandeep Yadav', 'Male', 28, 'Sales', 'Sales Executive', 43000.00, 'Jaipur', '2022-08-08', 129),
(118, 'Nidhi Arora', 'Female', 25, 'HR', 'HR Executive', 39000.00, 'Delhi', '2023-04-14', 102),
(119, 'Abhishek Tiwari', 'Male', 34, 'Finance', 'Finance Manager', 75000.00, 'Kanpur', '2017-03-09', NULL),
(120, 'Kajal Singh', 'Female', 29, 'Marketing', 'SEO Specialist', 46000.00, 'Noida', '2021-06-30', 112),
(121, 'Harsh Vardhan', 'Male', 27, 'IT', 'Python Developer', 58000.00, 'Jaipur', '2022-12-12', 109),
(122, 'Isha Malhotra', 'Female', 31, 'IT', 'UI/UX Designer', 54000.00, 'Delhi', '2020-05-17', NULL),
(123, 'Nitin Joshi', 'Male', 38, 'Admin', 'Office Manager', 67000.00, 'Udaipur', '2016-02-20', NULL),
(124, 'Riya Saxena', 'Female', 24, 'Sales', 'Sales Executive', 37000.00, 'Bhopal', '2023-06-11', 129),
(125, 'Yash Agarwal', 'Male', 29, 'IT', 'Data Analyst', 56000.00, 'Jaipur', '2021-11-25', 109),
(126, 'Meena Sharma', 'Female', 32, 'Finance', 'Senior Accountant', 64000.00, 'Delhi', '2019-08-19', NULL),
(127, 'Tarun Chauhan', 'Male', 26, 'Marketing', 'Content Writer', 41000.00, 'Gurgaon', '2022-07-27', 112),
(128, 'Shreya Das', 'Female', 28, 'IT', 'DevOps Engineer', 69000.00, 'Kolkata', '2020-09-15', 109),
(129, 'Lokesh Meena', 'Male', 33, 'Sales', 'Regional Manager', 80000.00, 'Jaipur', '2018-01-10', NULL),
(130, 'Aarti Jain', 'Female', 27, 'HR', 'Talent Acquisition', 44000.00, 'Indore', '2023-01-08', 102),
(131, 'Ajay Sharma', 'Male', 24, 'IT', 'Frontend Developer', 50000.00, 'Jaipur', '2023-01-15', 103);

select * from employeess;

SELECT e.emp_name AS Employee_Name, e.salary AS Employee_Salary,m.emp_name AS Manager_Name,m.salary AS Manager_Salary
FROM employeess e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;





 

