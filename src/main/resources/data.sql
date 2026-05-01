INSERT INTO courses (id, code, title) VALUES (1, 'CSE101', 'Programming Fundamentals');
INSERT INTO courses (id, code, title) VALUES (2, 'CSE201', 'Data Structures');
INSERT INTO courses (id, code, title) VALUES (3, 'CSE301', 'Database Systems');
INSERT INTO courses (id, code, title) VALUES (4, 'ECE110', 'Digital Logic');
INSERT INTO courses (id, code, title) VALUES (5, 'ECE210', 'Signals and Systems');
INSERT INTO courses (id, code, title) VALUES (6, 'MTH101', 'Calculus I');
INSERT INTO courses (id, code, title) VALUES (7, 'MTH205', 'Probability and Statistics');
INSERT INTO courses (id, code, title) VALUES (8, 'PHY115', 'Applied Physics');
INSERT INTO courses (id, code, title) VALUES (9, 'HSS120', 'Technical Communication');
INSERT INTO courses (id, code, title) VALUES (10, 'MGT200', 'Project Management');

INSERT INTO students (id, name, email, year_level, course_id) VALUES (1, 'Aarav Sharma', 'aarav.sharma@bits.edu', 1, 1);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (2, 'Diya Kapoor', 'diya.kapoor@bits.edu', 2, 2);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (3, 'Rohan Iyer', 'rohan.iyer@bits.edu', 3, 3);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (4, 'Mira Nair', 'mira.nair@bits.edu', 1, 4);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (5, 'Vivaan Gupta', 'vivaan.gupta@bits.edu', 2, 5);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (6, 'Anaya Menon', 'anaya.menon@bits.edu', 1, 6);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (7, 'Kabir Patel', 'kabir.patel@bits.edu', 3, 7);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (8, 'Ira Joshi', 'ira.joshi@bits.edu', 2, 8);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (9, 'Arjun Mehta', 'arjun.mehta@bits.edu', 4, 9);
INSERT INTO students (id, name, email, year_level, course_id) VALUES (10, 'Sara Das', 'sara.das@bits.edu', 4, 10);

ALTER TABLE courses ALTER COLUMN id RESTART WITH 11;
ALTER TABLE students ALTER COLUMN id RESTART WITH 11;
