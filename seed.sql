USE  educsync;
INSERT INTO roles (label) VALUES ('Admin'), ('Professor'), ('Student');
INSERT INTO users (firstname, lasetname, email, password, role_id) VALUES 
('Ahmed', 'Zaki', 'ahmed.prof@elite.com', 'pass123', 2),
('Fatima', 'Naji', 'fatima.prof@elite.com', 'pass123', 2),
('Youssef', 'Bekkali', 'youssef.prof@elite.com', 'pass123', 2),
('Meriem', 'Tazi', 'meriem.prof@elite.com', 'pass123', 2),
('Omar', 'Sadiqi', 'omar.stud@gmail.com', 'stud123', 3),
('Sara', 'Lahlou', 'sara.stud@gmail.com', 'stud123', 3),
('Hamza', 'Elmaleh', 'hamza.stud@gmail.com', 'stud123', 3),
('Laila', 'Mansouri', 'laila.stud@gmail.com', 'stud123', 3),
('Anas', 'Bennani', 'anas.stud@gmail.com', 'stud123', 3),
('Zineb', 'Rami', 'zineb.stud@gmail.com', 'stud123', 3);
INSERT INTO classes (name, classeroom_numb) VALUES 
('JavaScript', 101), ('Python ', 102), ('php', 201), ('java', 202), ('c++', 301);
INSERT INTO students (datofbirth, student_numb, user_id, class_id) VALUES 
('2004-05-12', 2026001, 5, 1), ('2003-08-22', 2026002, 6, 1),
('2005-01-10', 2026003, 7, 2), ('2004-11-30', 2026004, 8, 3),
('2003-03-15', 2026005, 9, 4), ('2004-07-20', 2026006, 10, 5);
INSERT INTO courses (title, description, total_hours, professor_id) VALUES 
('React JS', 'Modern Frontend Development', 40, 1),
('Node.js Backend', 'Scalable server-side apps', 35, 1),
('Deep Learning', 'Neural networks and AI', 60, 2),
('Ethical Hacking', 'Securing networks', 50, 3),
('Figma Pro', 'Advanced prototyping', 20, 4),
('SQL Optimization', 'Advanced database management', 25, 2);
INSERT INTO enrollments (student_id, course_id, status) VALUES 
(1, 1, 'Active'), (4, 2, 'Active'), (3, 1, 'Completed'),
(6, 3, 'Active'), (5, 6, 'Active'), (1, 4, 'Dropped'),
(5, 5, 'Active'), (6, 1, 'Active'), (2, 6, 'Completed');

SELECT users.firstname, users.lasetname, roles.label AS role_name
FROM users 
JOIN roles  ON users.role_id = roles.id;
SELECT users.firstname, users.lasetname, classes.name AS class_name
FROM students 
JOIN users  ON students.user_id = users.id
JOIN classes  ON students.class_id = classes.id; 
SELECT courses.title AS course_title, users.firstname AS professor_name, users.lasetname AS professor_surname
FROM courses 
JOIN users  ON courses.professor_id = users.id;
SELECT users.firstname AS student, courses.title AS course, enrollments.status
FROM enrollments 
JOIN students  ON enrollments.student_id = students.id
JOIN users  ON students.user_id = users.id
JOIN courses  ON enrollments.course_id = courses.id;
SELECT courses.title AS course_title, users.firstname AS professor_name, users.lasetname AS professor_surname
FROM courses 
JOIN users  ON courses.professor_id = users.id;