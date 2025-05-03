-- begin transaction
BEGIN;

INSERT INTO
    jedi_students (name, email, dob, gender)
VALUES
    ('Luke Skywalker', 'luke@jedi.temple', '1977-05-25', 'Male'),
    ('Rey', 'rey@jakku.outerrim', '1992-12-18', 'Female'),
    ('Grogu', 'grogu@temple.baby', '2015-11-12', 'Male'),
    ('Anakin Skywalker', 'anakin@jedi.temple', '1990-06-22', 'Male'),
    ('Qui-Gon Jinn', 'qui-gon@jedi.temple', '1965-10-05', 'Male'),
    ('Mace Windu', 'mace@jedi.temple', '1950-07-22', 'Male'),
    ('Luminara Unduli', 'luminara@jedi.temple', '1960-12-01', 'Female'),
    ('Barriss Offee', 'barriss@jedi.temple', '1990-03-10', 'Female');

-- Jedi Masters
INSERT INTO
    jedi_masters (name, subject)
VALUES
    ('Obi-Wan Kenobi', 'Lightsaber Combat'),
    ('Yoda', 'Force Mastery'),
    ('Ahsoka Tano', 'Tactical Awareness'),
    ('Qui-Gon Jinn', 'Force Philosophy'),
    ('Mace Windu', 'Shii-Cho Lightsaber Combat'),
    ('Plo Koon', 'Jedi Flight Training'),
    ('Luminara Unduli', 'Advanced Meditation');

-- Jedi Courses
INSERT INTO
    jedi_courses (title, description)
VALUES
    ('Lightsaber Forms I–VII', 'Training in classic Jedi lightsaber combat styles.'),
    ('The Living Force', 'Deep meditation and Force sensitivity development.'),
    ('Galactic Strategy', 'Tactical training for interstellar missions.'),
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
INSERT INTO
    jedi_course_assignments (master_id, course_id)
VALUES
    (1, 1), -- Obi-Wan teaches Lightsaber Forms
    (2, 2), -- Yoda teaches Force
    (3, 3), -- Ahsoka teaches Strategy
    (4, 4), -- Qui-Gon teaches Force Philosophy
    (5, 1), -- Mace Windu teaches Shii-Cho Combat
    (6, 2), -- Plo Koon teaches Jedi Flight
    (7, 3) -- Luminara teaches Advanced Meditation
;

-- Enrollments
INSERT INTO
    jedi_enrollments (student_id, course_id, enrolled_on)
VALUES
    (1, 1, '2025-01-01'), -- Luke in Lightsaber Forms
    (1, 2, '2025-01-02'), -- Luke in Force
    -- Rey in Force
    (2, 2, '2025-01-03'),
    (3, 2, '2025-01-04'), -- Grogu in Force
    (2, 3, '2025-01-05'), -- Rey in Galactic Strategy
    (4, 4, '2025-02-01'), -- Anakin in Shii-Cho Combat
    (3, 1, '2025-02-02'), -- Mace Windu in Lightsaber Combat
    (5, 1, '2025-02-03'), -- Barriss in Lightsaber Forms
    (6, 1, '2025-02-04'), -- Luminara in Lightsaber Forms
    (7, 5, '2025-02-05') -- Barriss in Shii-Cho Combat
;

-- Grades
INSERT INTO
    jedi_grades (enrollment_id, grade)
VALUES
    (1, 'A+'), -- Luke Lightsaber
    (2, 'A'), -- Luke Force
    (3, 'A'), -- Rey Force
    (4, 'A+'), -- Grogu Force
    (5, 'B+'), -- Rey Strategy
    (6, 'A+'), -- Anakin Lightsaber
    (7, 'A-'), -- Mace Windu Lightsaber
    (8, 'A'), -- Barriss Lightsaber
    (9, 'A-'), -- Luminara Meditation
    (10, 'B+') -- Barriss Shii-Cho
;

COMMIT;
