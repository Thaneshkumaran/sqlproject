create database hospitals;
USE hospitals;
CREATE TABLE patients (
    patient_id INT,             
    first_name TEXT,             
    last_name TEXT,              
    gender CHAR(1),              
    birth_date DATE,             
    city TEXT,                   
    province_id CHAR(2),          
    height INT,                   
    weight INT,                   
    PRIMARY KEY (patient_id, province_id),  -- Composite primary key: patient_id + province_id
    FOREIGN KEY (province_id) REFERENCES province(province_id)  -- Foreign key linking to province table
);

CREATE TABLE admissions (
    admission_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    reason_for_admission TEXT,
    doctor_id INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(100),
    contact_number VARCHAR(15),
    province_id INT,
    FOREIGN KEY (province_id) REFERENCES province(province_id)
);
CREATE TABLE province (
    province_id INT AUTO_INCREMENT PRIMARY KEY,
    province_name VARCHAR(100)
);
INSERT INTO province (province_id, province_name) VALUES
('01', 'Province A'),
('02', 'Province B'),
('03', 'Province C'),
('04', 'Province D'),
('05', 'Province E'),
('06', 'Province F'),
('07', 'Province G'),
('08', 'Province H'),
('09', 'Province I'),
('10', 'Province J'),
('11', 'Province K'),
('12', 'Province L'),
('13', 'Province M'),
('14', 'Province N'),
('15', 'Province O'),
('16', 'Province P'),
('17', 'Province Q'),
('18', 'Province R'),
('19', 'Province S'),
('20', 'Province T');
INSERT INTO doctors (doctor_id, first_name, last_name, specialization, contact_number, province_id) VALUES
(1, 'John', 'Smith', 'Cardiology', '1234567890', '01'),
(2, 'Jane', 'Doe', 'Neurology', '1234567891', '02'),
(3, 'Emily', 'Jones', 'Pediatrics', '1234567892', '03'),
(4, 'Michael', 'Brown', 'Oncology', '1234567893', '04'),
(5, 'Sarah', 'Johnson', 'Dermatology', '1234567894', '05'),
(6, 'David', 'Wilson', 'Surgery', '1234567895', '06'),
(7, 'Anna', 'Taylor', 'Psychiatry', '1234567896', '07'),
(8, 'Mark', 'Lee', 'Orthopedics', '1234567897', '08'),
(9, 'Laura', 'Harris', 'Gynecology', '1234567898', '09'),
(10, 'Chris', 'Clark', 'Urology', '1234567899', '10'),
(11, 'Emma', 'Lewis', 'Endocrinology', '1234567800', '11'),
(12, 'Ethan', 'Walker', 'Ophthalmology', '1234567801', '12'),
(13, 'Sophia', 'Hall', 'Anesthesiology', '1234567802', '13'),
(14, 'Jacob', 'Allen', 'Radiology', '1234567803', '14');
INSERT INTO patients (patient_id, first_name, last_name, gender, birth_date, city, province_id, allergies, height, weight) VALUES
(1, 'Alice', 'Wright', 'F', '1990-04-12', 'City A', '01', 'Peanuts', 165, 60),
(2, 'Bob', 'Adams', 'M', '1988-03-22', 'City B', '02', 'None', 180, 80),
(3, 'Charlie', 'Brown', 'M', '1995-07-11', 'City C', '03', 'Latex', 170, 75),
(4, 'Diana', 'Evans', 'F', '1992-12-30', 'City D', '04', 'Penicillin', 160, 55),
(5, 'Eve', 'Johnson', 'F', '1991-11-22', 'City E', '05', 'None', 168, 62),
(6, 'Frank', 'Martin', 'M', '1985-05-15', 'City F', '06', 'Pollen', 175, 85),
(7, 'Grace', 'Lee', 'F', '1993-08-01', 'City G', '07', 'Gluten', 162, 58),
(8, 'Henry', 'Kim', 'M', '1990-01-18', 'City H', '08', 'None', 177, 78),
(9, 'Ivy', 'Parker', 'F', '1989-06-25', 'City I', '09', 'Nuts', 158, 52),
(10, 'Jack', 'Taylor', 'M', '1994-09-05', 'City J', '10', 'None', 182, 83);
INSERT INTO admissions (admission_id, patient_id, admission_date, discharge_date, reason_for_admission, doctor_id) VALUES
(1, 1, '2023-01-10', '2023-01-15', 'Flu', 1),
(2, 2, '2023-02-05', '2023-02-12', 'Fracture', 2),
(3, 3, '2023-03-22', '2023-03-30', 'Appendicitis', 3),
(4, 4, '2023-04-15', '2023-04-20', 'Migraine', 4),
(5, 5, '2023-05-01', '2023-05-08', 'Asthma', 5),
(6, 6, '2023-06-10', '2023-06-15', 'Allergic Reaction', 6),
(7, 7, '2023-07-02', '2023-07-09', 'Broken Arm', 7),
(8, 8, '2023-08-18', '2023-08-25', 'Infection', 8),
(9, 9, '2023-09-01', '2023-09-07', 'Diabetes Complications', 9),
(10, 10, '2023-10-12', '2023-10-19', 'Surgery', 10);
