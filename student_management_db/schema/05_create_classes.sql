CREATE TABLE Classes (
  class_id SERIAL PRIMARY KEY,
  course_id int REFERENCES Courses(course_id),
  instructor_id int REFERENCES Instructors(instructor_id),
  start_time time NOT NULL,
  end_time time NOT NULL,
  semester varchar(20),
  year int NOT NULL,
  total_students int NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);