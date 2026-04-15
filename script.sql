CREATE DATABASE educsync;
CREATE TABLE  roles(
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR (255)
);
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT ,
    firstname VARCHAR(255) NOT NULL,
    lastename VARCHAR (255) NOT NULL,
    email VARCHAR (255) UNIQUE ,
    password VARCHAR(255) NOT NULL,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES roles(id)
);
