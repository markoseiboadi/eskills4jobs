CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR (50)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR (50),
    credit_hours INT,
    course_description VARCHAR (100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department (department_id)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    date_of_birth DATE,
    email VARCHAR (100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department (department_id)
);

CREATE TABLE exam_result (
    exam_result_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    score DECIMAL (5,2),
    exam_date DATE,
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (course_id) REFERENCES course (course_id)
);

CREATE TABLE user (
    user_id INT PRIMARY KEY,
    username VARCHAR (50),
    password VARCHAR (50),
    role VARCHAR (50),
    student_id INT,
    department_id INT,
    FOREIGN KEY (student_id) REFERENCES student (student_id),
    FOREIGN KEY (department_id) REFERENCES department (department_id)
);



INSERT INTO department (department_id, department_name)
VALUES 
(1, 'Computer Science'),
(2, 'Electrical Engineering'),
(3, 'Mechanical Engineering'),
(4, 'Civil Engineering'),
(5, 'Mathematics');

INSERT INTO course (course_id, course_name, credit_hours,course_description, department_id)
VALUES 
(1, 'Data structures', 3, 'The study of Data and Structures', 1),
(2, 'Circuit Analysis', 4, 'The study of Analytical Circuits', 2),
(3, 'Thermodynamics', 3, 'The study of Thermodynamic properties', 3),
(4, 'Structural Analysis', 4, 'The study of structures and Analysis', 4),
(5, 'Linear Algebra', 3, 'Linear algebra and their functions', 5);


INSERT INTO student (student_id, first_name, last_name, date_of_birth, email, department_id)
VALUES
(1,'John', 'Doe', '2000-03-6', 'johndoe@example.com',1),
(2,'Jane', 'Smith', '2001-04-7', 'janesmith@example.com', 2),
(3, 'Bob', 'Johnson', '2002-05-8', 'bobjohnson@example.com', 3),
(4,'Alice', 'Williams', '2003-06-9', 'alicewilliams@example.com', 4),
(5, 'Mike', 'David', '2004-05-22', 'mikedavid@example.com', 5);


INSERT INTO exam_result (exam_result_id, student_id, course_id, score, exam_date)
VALUES
(1,1,1,85, '2023-05-01'),
(2,2,2,90, '2023-05-02'),
(3,3,3,78, '2023-05-03'),
(4,4,4,92, '2023-05-04'),
(5,5,5,88, '2023-05-05');


INSERT INTO user (user_id, username,password, role, student_id, department_id)
VALUES
(1, 'johndoe', 'pass123', 'student', 1,1),
(2, 'janesmith', 'pass456', 'teacher', NULL, 2),
(3, 'bobjohnson', 'pass789', 'student', 3,3),
(4, 'alicewilliams', 'pass012', 'teacher', NULL, 4),
(5, 'admin', 'passadmin', 'admin', NULL, NULL);


SELECT * FROM department;

SELECT * FROM course;

SELECT * FROM student;

SELECT * FROM exam_result;

SELECT * FROM user;


Inner Join
Retrieve students with their department names;

SELECT student.student_id, student.first_name, student.last_name, department.department_name
FROM student
INNER JOIN department
ON student.department_id = department.department_id;