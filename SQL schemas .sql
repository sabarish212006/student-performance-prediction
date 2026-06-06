CREATE TABLE Admin (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    year INT
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    attendance_percentage DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Marks (
    marks_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    assignment_score DECIMAL(5,2),
    previous_marks DECIMAL(5,2),
    study_hours DECIMAL(5,2),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Performance (
    performance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    predicted_score DECIMAL(5,2),
    performance_status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
