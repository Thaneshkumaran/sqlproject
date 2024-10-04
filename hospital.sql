CREATE DATABASE hospital;
USE hospital;
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    contact_number VARCHAR(15),
    address TEXT,
    medical_history TEXT,
    province_id INT,
    FOREIGN KEY (province_id) REFERENCES province(province_id)
);
