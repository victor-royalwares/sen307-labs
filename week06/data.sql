INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');
INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
'Relational database design, SQL queries, normalization, transactions and indexing using
MySQL.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
'Architectural styles, design patterns, microservices and how to structure large software
systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,'Processes, threads, CPU scheduling, memory management and file systems.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
(SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
'Intelligent agents, search algorithms, knowledge representation and reasoning.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
'Supervised and unsupervised learning, neural networks, deep learning and model
evaluation.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
(SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
'Exploratory data analysis, charts, dashboards and telling stories with data.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
'Distributed storage and processing of very large datasets with Hadoop and Spark.',
(SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
(SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));
SELECT d.dept_name, COUNT(c.course_id) AS courses
FROM Department d LEFT JOIN Course c ON d.dept_id = c.dept_id
GROUP BY d.dept_name;

SELECT dept_id, dept_name FROM Department;
SELECT course_id, course_code FROM Course;

INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng', 1),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng', 1),
('VUA/ST/103', 'Dr Uche victor', 'victor@vua.edu.ng', 2),
('VUA/ST/104', 'Dr Victor Jacob', 'jacobv@vua.edu.ng', 2),
('VUA/ST/105', 'Dr Kachi Victoria', 'Kachivick@vua.edu.ng', 3),
('VUA/ST/106', 'Dr Divine Uche', 'D.Uche@vua.edu.ng', 3),
('VUA/ST/107', 'Dr Kamsi Chukuma', 'mmakamsi@vua.edu.ng', 4),
('VUA/ST/108', 'Dr williams John', 'willij@vua.edu.ng', 4),
('VUA/ST/109', 'Dr Chidi Joseph', 'jochidi@vua.edu.ng', 5),
('VUA/ST/110', 'Dr MRS Amaka Lilian', 'lilian@vua.edu.ng', 5);

select * from Lecturer

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('20231234', 'Ada Obi', 'F', '2005-03-14', 1),
('20231235', 'John Musa', 'M', '2004-11-02', 2),
('202412673', 'Uche Victor', 'M', '2008-06-03', 3),
('202412674', 'Chiamaka Eze', 'F', '2003-08-19', 3),
('202412675', 'Ibrahim Abdullahi', 'M', '2002-12-07', 4),
('202412676', 'Precious Okafor', 'F', '2005-04-22', 5),
('202412677', 'Daniel Ojo', 'M', '2004-09-15', 1),
('202412678', 'Fatima Bello', 'F', '2003-02-11', 2),
('202412679', 'Samuel Adeyemi', 'M', '2001-07-28', 3),
('202412680', 'Ngozi Nwankwo', 'F', '2005-11-30', 4),
('202412681', 'Emmanuel Okoro', 'M', '2002-05-16', 5),
('202412682', 'Aisha Ibrahim', 'F', '2004-01-09', 1),
('202412683', 'Chukwudi Eze', 'M', '2003-06-25', 2),
('202412684', 'Zainab Sani', 'F', '2005-10-13', 3),
('202412685', 'Tunde Bakare', 'M', '2001-03-08', 4),
('202412686', 'Amarachi Umeh', 'F', '2004-12-21', 5),
('202412687', 'David Okon', 'M', '2002-08-04', 1),
('202412688', 'Maryam Yusuf', 'F', '2005-05-27', 2),
('202412689', 'Chinedu Nnamdi', 'M', '2003-09-12', 3),
('202412690', 'Esther Adebayo', 'F', '2004-04-17', 4);

SELECT * FROM Student;


SELECT student_id, matric_no, full_name FROM Student;

SELECT course_id, course_name FROM Course;

SELECT lecturer_id, full_name FROM Lecturer;

DESCRIBE Course;

SELECT * FROM Course;

SELECT student_id, matric_no, full_name FROM Student;
SELECT lecturer_id, full_name FROM Lecturer;
INSERT INTO Enrolment (student_id, course_id) VALUES
-- Course 1: 8 students
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),

(1, 2),
(3, 2),
(5, 2),
(9, 2),
(10, 2),


(2, 3),
(4, 3),
(6, 3),
(11, 3),
(12, 3),


(3, 4),
(7, 4),
(13, 4),
(14, 4),


(5, 5),
(8, 5),
(15, 5),
(16, 5),

(2, 6),
(9, 6),
(12, 6),
(17, 6),

(4, 7),
(10, 7),
(18, 7),

(6, 8),
(11, 8),
(13, 8),

(7, 9),
(14, 9),

(15, 10),
(16, 10);

INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
(1, 31),
(1, 32),
(2, 33),
(3, 34),
(4, 35),
(5, 36),
(6, 37),
(7, 38),
(8, 39),
(9, 40),
(10, 31);

SELECT COUNT(*) AS total_enrolments
FROM Enrolment;

SELECT s.student_id, s.full_name
FROM Student s
LEFT JOIN Enrolment e
ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

SELECT c.course_id, c.course_code,
       COUNT(e.student_id) AS total_students
FROM Course c
JOIN Enrolment e
ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_code
HAVING COUNT(e.student_id) > 5;

SELECT course_id,
       COUNT(lecturer_id) AS total_lecturers
FROM CourseAllocation
GROUP BY course_id
HAVING COUNT(lecturer_id) > 1;
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';
UPDATE Student SET dept_id = 2 WHERE matric_no = '20231234';
SELECT matric_no, full_name, dept_id FROM Student WHERE matric_no = '20231234';

INSERT INTO Department (dept_name) VALUES ('Library and Information Science');
INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('20239999', 'Transfer Student',
(SELECT dept_id FROM Department WHERE dept_name = 'Library and Information
Science'));

DELETE FROM Department WHERE dept_name = 'Library and Information Science';