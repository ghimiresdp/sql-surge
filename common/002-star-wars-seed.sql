BEGIN;
-- Padawans
INSERT INTO jedi_students (name, email, dob, gender)
VALUES (
        'Luke Skywalker',
        'luke@jedi.temple',
        '1977-05-25',
        'Male'
    ),
    (
        'Rey',
        'rey@jakku.outerrim',
        '1992-12-18',
        'Female'
    ),
    (
        'Grogu',
        'grogu@temple.baby',
        '2015-11-12',
        'Male'
    ),
    (
        'Anakin Skywalker',
        'anakin@jedi.temple',
        '1990-06-22',
        'Male'
    ),
    (
        'Qui-Gon Jinn',
        'qui-gon@jedi.temple',
        '1965-10-05',
        'Male'
    ),
    (
        'Mace Windu',
        'mace@jedi.temple',
        '1950-07-22',
        'Male'
    ),
    (
        'Luminara Unduli',
        'luminara@jedi.temple',
        '1960-12-01',
        'Female'
    ),
    (
        'Barriss Offee',
        'barriss@jedi.temple',
        '1990-03-10',
        'Female'
    );
-- Jedi Masters
INSERT INTO jedi_teachers (name, subject)
VALUES ('Obi-Wan Kenobi', 'Lightsaber Combat'),
    ('Yoda', 'Force Mastery'),
    ('Ahsoka Tano', 'Tactical Awareness'),
    ('Qui-Gon Jinn', 'Force Philosophy'),
    ('Mace Windu', 'Shii-Cho Lightsaber Combat'),
    ('Plo Koon', 'Jedi Flight Training'),
    ('Luminara Unduli', 'Advanced Meditation');
-- Jedi Courses
INSERT INTO jedi_courses (title, description)
VALUES (
        'Lightsaber Forms I–VII',
        'Training in classic Jedi lightsaber combat styles.'
    ),
    (
        'The Living Force',
        'Deep meditation and Force sensitivity development.'
    ),
    (
        'Galactic Strategy',
        'Tactical training for interstellar missions.'
    ),
    (
        'Shii-Cho Lightsaber Combat',
        'The first form of lightsaber combat, focusing on fundamentals.'
    ),
    (
        'Advanced Meditation Techniques',
        'Training in advanced meditation methods to strengthen the connection with the Force.'
    ),
    (
        'Jedi Starfighter Piloting',
        'Training in piloting Jedi starfighters for battle or reconnaissance.'
    );
-- Course Assignments
INSERT INTO jedi_course_assignments (teacher_id, course_id)
VALUES -- Obi-Wan teaches Lightsaber Forms
    (1, 1),
    -- Yoda teaches Force
    (2, 2),
    -- Ahsoka teaches Strategy
    (3, 3),
    -- Qui-Gon teaches Force Philosophy
    (4, 4),
    -- Mace Windu teaches Shii-Cho Combat
    (5, 1),
    -- Plo Koon teaches Jedi Flight
    (6, 2),
    -- Luminara teaches Advanced Meditation
    (7, 3);
-- Enrollments
INSERT INTO jedi_enrollments (student_id, course_id, enrolled_on)
VALUES -- Luke in Lightsaber Forms
    (1, 1, '2025-01-01'),
    -- Luke in Force
    (1, 2, '2025-01-02'),
    -- Rey in Force
    (2, 2, '2025-01-03'),
    -- Grogu in Force
    (3, 2, '2025-01-04'),
    -- Rey in Galactic Strategy
    (2, 3, '2025-01-05'),
    -- Anakin in Shii-Cho Combat
    (4, 4, '2025-02-01'),
    -- Mace Windu in Lightsaber Combat
    (3, 1, '2025-02-02'),
    -- Barriss in Lightsaber Forms
    (5, 1, '2025-02-03'),
    -- Luminara in Lightsaber Forms
    (6, 1, '2025-02-04'),
    -- Barriss in Shii-Cho Combat
    (7, 5, '2025-02-05');
-- Grades
INSERT INTO jedi_grades (enrollment_id, grade)
VALUES -- Luke Lightsaber
    (1, 'A+'),
    -- Luke Force
    (2, 'A'),
    -- Rey Force
    (3, 'A'),
    -- Grogu Force
    (4, 'A+'),
    -- Rey Strategy
    (5, 'B+'),
    -- Anakin Lightsaber
    (6, 'A+'),
    -- Mace Windu Lightsaber
    (7, 'A-'),
    -- Barriss Lightsaber
    (8, 'A'),
    -- Luminara Meditation
    (9, 'A-'),
    -- Barriss Shii-Cho
    (10, 'B+');
COMMIT;
