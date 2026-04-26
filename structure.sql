CREATE DATABASE educsync;
USE educsync;
CREATE TABLE  roles(
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR (255)
);
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT ,
    firstname VARCHAR(255) NOT NULL,
    lasetname VARCHAR (255) NOT NULL,
    email VARCHAR (255) UNIQUE ,
    password VARCHAR(255) NOT NULL,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES roles(id)
);
CREATE TABLE classes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    classeroom_numb INT
);
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    datofbirth DATE,
    student_numb INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    class_id INT ,
    FOREIGN KEY (class_id) REFERENCES classes(id)
);
CREATE TABLE courses(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description VARCHAR (255) NOT NULL,
    total_hours INT,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES users(id)
);
CREATE TABLE enrollments (
    id INT  PRIMARY KEY AUTO_INCREMENT,
    enrolled_at DATE,
    status VARCHAR (255),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    course_id INT,
    FOREIGN KEY(course_id) REFERENCES courses(id)
);
ALTER TABLE students CHANGE darofbirth dateofbirth DATE;
ALTER TABLE students ADD CONSTRAINT unique_student_user UNIQUE (user_id);
ALTER TABLE enrollments ADD CONSTRAINT unique_registration UNIQUE (student_id, course_id);

