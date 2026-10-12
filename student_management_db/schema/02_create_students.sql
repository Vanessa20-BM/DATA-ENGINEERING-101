CREATE TABLE Students (
  student_id SERIAL PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(50) UNIQUE NOT NULL,
  date_of_birth date,
  phone_num varchar(20),
  enrolment_date date DEFAULT CURRENT_DATE,
  department_id int REFERENCES Departments(department_id),
  is_active boolean DEFAULT true,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
