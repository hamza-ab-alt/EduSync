USE  educsync;
INSERT INTO roles (label) VALUES ('Admin'), ('Professor'), ('Student');
INSERT INTO users (firstname, lastename, email, password, role_id) VALUES 
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