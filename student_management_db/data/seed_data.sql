INSERT INTO Departments (name, building)
VALUES
('Computer Engineering', 'Engineering Block A'),
('Electrical Engineering', 'Engineering Block B'),
('Mechanical Engineering', 'Engineering Block C'),
('Computer Science', 'ICT Building'),
('Business Administration', 'Business School');

INSERT INTO Students(first_name, last_name, email, date_of_birth,phone_num, enrolment_date, department_id, is_active)VALUES
('Ama', 'Mensah', 'ama.mensah@example.com', '2004-03-15','0241234567', '2023-09-01', 1,TRUE),
('Kofi', 'Asare', 'kofi.asare@example.com', '2003-07-22','0202345678', '2022-09-01', 2, FALSE),
('Akosua', 'Owusu', 'akosua.owusu@example.com', '2004-11-10','0553456789', '2023-09-01', 3,TRUE),
('Yaw', 'Boateng', 'yaw.boateng@example.com', '2002-05-18','0274567890', '2021-09-01', 4,TRUE),
('Abena', 'Darko', 'abena.darko@example.com', '2003-12-02','0265678901', '2022-09-01', 1,TRUE),
('Kwame', 'Appiah', 'kwame.appiah@example.com', '2004-01-25','0546789012', '2023-09-01', 4,TRUE),
('Efua', 'Arthur', 'efua.arthur@example.com', '2003-08-14','0597890123', '2022-09-01', 5,TRUE),
('Kojo', 'Frimpong', 'kojo.frimpong@example.com', '2002-06-30','0248901234', '2021-09-01', 2, FALSE),
('Adwoa', 'Osei', 'adwoa.osei@example.com', '2004-04-12','0209012345', '2023-09-01', 3,TRUE),
('Nana', 'Bediako', 'nana.bediako@example.com', '2003-09-05','0550123456', '2022-09-01', 1,TRUE);


INSERT INTO Instructors(first_name, last_name, email, date_of_birth,phone_num, hire_date, department_id, salary)VALUES
('Kwesi', 'Addo', 'kwesi.addo@example.com', '1980-04-10','0241112233', '2015-08-01', 1, 8500.00),
('Esi', 'Agyeman', 'esi.agyeman@example.com', '1985-09-21','0202223344', '2018-01-15', 2, 7800.00),
('Kwaku', 'Ofori', 'kwaku.ofori@example.com', '1978-02-14', '0553334455', '2012-09-01', 3, 9200.00),
('Akua', 'Sarpong', 'akua.sarpong@example.com', '1982-12-05','0274445566', '2016-05-10', 4, 8800.00),
('Yaw', 'Tetteh', 'yaw.tetteh@example.com', '1987-06-18','0265556677', '2020-02-01', 5, 7200.00);



INSERT INTO Courses(course_code, course_name, credits, description, department_id)VALUES
('COE301', 'Computer Architecture', 3,'Study of computer hardware and processor design', 1),
('COE302', 'Embedded Systems', 3,'Introduction to embedded hardware and software', 1),
('EE301', 'Circuit Analysis', 4,'Analysis of electrical circuits and components', 2),
('ME301', 'Thermodynamics', 3, 'Study of heat, energy and thermodynamic systems', 3),
('CS301', 'Database Systems', 3,'Database design, SQL and data management', 4),
('CS302', 'Python Programming', 3, 'Programming fundamentals and practical Python development', 4),
('BA301', 'Principles of Management', 2, 'Introduction to management and organizational practices', 5),
('COE401', 'Computer Networks', 3,'Networking protocols and computer communication', 1);


INSERT INTO Classes(course_id, instructor_id, start_time, end_time,semester, year, total_students)VALUES
(1, 1, '08:00', '10:00', 'First', 2026, 45),
(2, 1, '10:00', '12:00', 'First', 2026, 38),
(3, 2, '08:00', '10:00', 'First', 2026, 50),
(4, 3, '13:00', '15:00', 'First', 2026, 42),
(5, 4, '10:00', '12:00', 'First', 2026, 60),
(6, 4, '14:00', '16:00', 'First', 2026, 55),
(7, 5, '08:00', '10:00', 'First', 2026, 48),
(8, 1, '15:00', '17:00', 'First', 2026, 35);


INSERT INTO Enrollments(student_id, course_id, enroll_date, level)VALUES
(1, 1, '2026-01-10', 300),
(1, 2, '2026-01-10', 300),
(1, 8, '2026-01-11', 300),
(2, 3, '2026-01-10', 300),
(2, 1, '2026-01-12', 300),
(3, 4, '2026-01-10', 300),
(3, 2, '2026-01-13', 300),
(4, 5, '2026-01-10', 300),
(4, 6, '2026-01-11', 300),
(5, 1, '2026-01-10', 300),
(5, 8, '2026-01-12', 300),
(6, 5, '2026-01-10', 300),
(6, 6, '2026-01-13', 300),
(7, 7, '2026-01-10', 300),
(8, 3, '2026-01-10', 300),
(9, 4, '2026-01-11', 300),
(10, 1, '2026-01-10', 300),
(10, 2, '2026-01-12', 300);


ALTER TABLE Enrollments ADD COLUMN class_id INT REFERENCES Classes(class_id);

UPDATE Enrollments
SET class_id = CASE enroll_id
    WHEN 1 THEN 1
    WHEN 2 THEN 2
    WHEN 3 THEN 8
    WHEN 4 THEN 3
    WHEN 5 THEN 1
    WHEN 6 THEN 4
    WHEN 7 THEN 2
    WHEN 8 THEN 5
    WHEN 9 THEN 6
    WHEN 10 THEN 1
    WHEN 11 THEN 8
    WHEN 12 THEN 5
    WHEN 13 THEN 6
    WHEN 14 THEN 7
    WHEN 15 THEN 3
    WHEN 16 THEN 4
    WHEN 17 THEN 1
    WHEN 18 THEN 2
END
WHERE enroll_id BETWEEN 1 AND 18;


select s.first_name, s.last_name, c.course_name as course
from Students s
join Enrollments e on s.student_id = e.student_id
join Courses c on e.course_id = c.course_id
