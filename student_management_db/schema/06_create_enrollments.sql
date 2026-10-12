CREATE TABLE Enrollments (
  enroll_id SERIAL PRIMARY KEY,
  student_id int REFERENCES Students(student_id),
  course_id int REFERENCES Courses(course_id) on delete cascade,
  enroll_date date NOT NULL DEFAULT CURRENT_DATE,
  level int,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_enrollment UNIQUE (student_id,course_id)
);