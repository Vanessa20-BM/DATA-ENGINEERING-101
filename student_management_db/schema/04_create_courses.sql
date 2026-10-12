CREATE TABLE Courses (
  course_id SERIAL PRIMARY KEY,
  course_code varchar(20) UNIQUE NOT NULL,
  course_name varchar(50) NOT NULL,
  credits int check (credits>0 and credits <= 8),
  description text,
  department_id int REFERENCES Departments(department_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);