-- 4.1
SELECT c.course_id, c.course_name, AVG(StudentCount) AS AverageEnrollment
FROM Courses c
JOIN (
    SELECT e.course_id, COUNT(e.student_id) AS StudentCount
    FROM Enrollments e
    GROUP BY e.course_id
) AS EnrollmentCounts ON c.course_id = EnrollmentCounts.course_id
GROUP BY c.course_id;


-- 4.2
SELECT s.student_id, s.first_name, s.last_name, p.amount
FROM Students s
JOIN Payments p ON s.student_id = p.student_id
WHERE p.amount = (
    SELECT MAX(amount) FROM Payments
);

-- 4.3
SELECT c.course_id, c.course_name, EnrollmentCounts.StudentCount
FROM Courses c
JOIN (
    SELECT e.course_id, COUNT(e.student_id) AS StudentCount
    FROM Enrollments e
    GROUP BY e.course_id
) AS EnrollmentCounts ON c.course_id = EnrollmentCounts.course_id
WHERE EnrollmentCounts.StudentCount = (
    SELECT MAX(StudentCount) FROM (
        SELECT COUNT(e.student_id) AS StudentCount
        FROM Enrollments e
        GROUP BY e.course_id
    ) AS MaxEnrollments
);


-- 4.4
SELECT t.teacher_id, t.first_name, t.last_name, SUM(p.amount) AS TotalPayments
FROM Teacher t
JOIN Courses c ON t.teacher_id = c.teacher_id
JOIN Enrollments e ON c.course_id = e.course_id
JOIN Payments p ON e.student_id = p.student_id
GROUP BY t.teacher_id;


-- 4.5
SELECT s.student_id, s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id
HAVING COUNT(e.course_id) = (SELECT COUNT(*) FROM Courses);

-- 4.6
SELECT t.teacher_id, t.first_name, t.last_name
FROM Teacher t
WHERE NOT EXISTS (
    SELECT * FROM Courses c WHERE t.teacher_id = c.teacher_id
);

-- 4.7
SELECT AVG(AGE) AS AverageAge
FROM (
    SELECT (strftime('%Y', 'now') - strftime('%Y', date_of_birth)) - (strftime('%m-%d', 'now') < strftime('%m-%d', date_of_birth)) AS AGE
    FROM Students
) AS StudentAges;

-- 4.8
SELECT c.course_id, c.course_name
FROM Courses c
WHERE NOT EXISTS (
    SELECT * FROM Enrollments e WHERE c.course_id = e.course_id
);


-- 4.9
SELECT s.student_id, s.first_name, s.last_name, c.course_name, SUM(p.amount) AS TotalPayments
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Payments p ON s.student_id = p.student_id
GROUP BY s.student_id, c.course_id;

-- 4.10
SELECT s.student_id, s.first_name, s.last_name
FROM Students s
JOIN Payments p ON s.student_id = p.student_id
GROUP BY s.student_id
HAVING COUNT(p.payment_id) > 1;

-- 4.11
SELECT s.student_id, s.first_name, s.last_name, SUM(p.amount) AS TotalPayments
FROM Students s
JOIN Payments p ON s.student_id = p.student_id
GROUP BY s.student_id;


-- 4.12
SELECT c.course_name, COUNT(e.student_id) AS NumberOfStudents
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;


-- 4.13
SELECT AVG(p.amount) AS AveragePaymentAmount
FROM Payments p
JOIN Students s ON p.student_id = s.student_id;
