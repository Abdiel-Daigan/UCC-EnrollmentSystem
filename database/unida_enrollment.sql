CREATE DATABASE IF NOT EXISTS unida_enrollment CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE unida_enrollment;
CREATE TABLE students(student_id INT AUTO_INCREMENT PRIMARY KEY,student_number VARCHAR(30) UNIQUE NOT NULL,first_name VARCHAR(100) NOT NULL,middle_name VARCHAR(100),last_name VARCHAR(100) NOT NULL,birth_date DATE NOT NULL,gender VARCHAR(30) NOT NULL,address VARCHAR(255),contact_number VARCHAR(30),email VARCHAR(150),course VARCHAR(150) NOT NULL,year_level VARCHAR(30) NOT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
CREATE TABLE subjects(subject_id INT AUTO_INCREMENT PRIMARY KEY,subject_code VARCHAR(30) UNIQUE NOT NULL,subject_name VARCHAR(150) NOT NULL,units DECIMAL(4,1) NOT NULL,course VARCHAR(150) NOT NULL,year_level VARCHAR(30) NOT NULL);
CREATE TABLE enrollments(enrollment_id INT AUTO_INCREMENT PRIMARY KEY,student_id INT NOT NULL,academic_year VARCHAR(20) NOT NULL,semester VARCHAR(30) NOT NULL,enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,status VARCHAR(30) NOT NULL DEFAULT 'Pending',FOREIGN KEY(student_id) REFERENCES students(student_id) ON DELETE CASCADE);
CREATE TABLE enrollment_subjects(id INT AUTO_INCREMENT PRIMARY KEY,enrollment_id INT NOT NULL,subject_id INT NOT NULL,FOREIGN KEY(enrollment_id) REFERENCES enrollments(enrollment_id) ON DELETE CASCADE,FOREIGN KEY(subject_id) REFERENCES subjects(subject_id) ON DELETE CASCADE,UNIQUE(enrollment_id,subject_id));
INSERT INTO subjects(subject_code,subject_name,units,course,year_level) VALUES
('CCS101','Introduction to Computing',3,'BSCS','1st Year'),
('CCS102','Computer Programming 1',3,'BSCS','1st Year'),
('CCS103','Web Development',3,'BSCS','2nd Year'),
('CCS104','Database Management Systems',3,'BSCS','2nd Year'),
('CCS105','Software Engineering',3,'BSCS','2nd Year');