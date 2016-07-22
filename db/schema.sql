DROP TABLE IF EXISTS instructors;
DROP TABLE IF EXISTS students;

CREATE TABLE instructors (
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INT NOT NULL
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INT NOT NULL,
  job TEXT,
  instructor_id INT
);
