-- begin transaction
BEGIN;

-- Jedi Students (Padawans)
CREATE TABLE IF NOT EXISTS jedi_students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE,
    gender VARCHAR(10)
);

-- Jedi Masters (Teachers)
CREATE TABLE IF NOT EXISTS jedi_masters (id SERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL, subject VARCHAR(100));

-- Jedi Courses
CREATE TABLE IF NOT EXISTS jedi_courses (id SERIAL PRIMARY KEY, title VARCHAR(100) NOT NULL, description TEXT);

-- Assignments (which Master teaches which Course)
CREATE TABLE IF NOT EXISTS jedi_course_assignments (
    id SERIAL PRIMARY KEY,
    master_id INTEGER REFERENCES jedi_masters (id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES jedi_courses (id) ON DELETE CASCADE
);

-- Enrollments (Padawans enrolled in Jedi Training)
CREATE TABLE IF NOT EXISTS jedi_enrollments (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES jedi_students (id) ON DELETE CASCADE,
    course_id INTEGER REFERENCES jedi_courses (id) ON DELETE CASCADE,
    enrolled_on DATE DEFAULT CURRENT_DATE,
    UNIQUE (student_id, course_id)
);

-- Force Aptitude Grades
CREATE TABLE IF NOT EXISTS jedi_grades (
    id SERIAL PRIMARY KEY,
    enrollment_id INTEGER REFERENCES jedi_enrollments (id) ON DELETE CASCADE,
    grade VARCHAR(2)
);

COMMIT;
