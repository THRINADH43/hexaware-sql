-- 2.1
INSERT INTO Students (first_name, last_name, date_of_birth, email, phone_number)
VALUES ('John', 'Doe', '1995-08-15', 'john.doe@example.com', '1234567890');

-- 2.2
INSERT INTO Enrollments (student_id, course_id, enrollment_date)
VALUES ((SELECT student_id FROM Students WHERE first_name = 'John' AND last_name = 'Doe'),
        (SELECT course_id FROM Courses WHERE course_name = 'Sample Course'),
        '2024-04-15');


-- 2.3
UPDATE Teacher
SET email = 'new.email@example.com'
WHERE first_name = 'SampleFirstName' AND last_name = 'SampleLastName';

-- 2.4
DELETE FROM Enrollments
WHERE enrollment_id = (SELECT enrollment_id
                       FROM Enrollments
                       JOIN Students ON Enrollments.student_id = Students.student_id
                       JOIN Courses ON Enrollments.course_id = Courses.course_id
                       WHERE Students.first_name = 'John'
                       AND Courses.course_name = 'Sample Course');


-- 2.5
UPDATE Courses
SET teacher_id = (SELECT teacher_id FROM Teacher WHERE first_name = 'SampleTeacherFirstName' AND last_name = 'SampleTeacherLastName')
WHERE course_name = 'Sample Course';


-- 2.6
DELETE FROM Enrollments
WHERE student_id = (SELECT student_id FROM Students WHERE first_name = 'John' AND last_name = 'Doe');

DELETE FROM Students
WHERE first_name = 'John' AND last_name = 'Doe';


-- 2.7
UPDATE Payments
SET amount = 200.00
WHERE payment_id = (SELECT payment_id
                    FROM Payments
                    JOIN Students ON Payments.student_id = Students.student_id
                    WHERE Students.first_name = 'John');

