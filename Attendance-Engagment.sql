SELECT * FROM hs_student

-- Attendance By Locale
SELECT
Locale,
COUNT(*) as student_count,
AVG(AttendanceRate) as avg_attendance
FROM hs_student
GROUP BY Locale
ORDER BY avg_attendance

--Extracurricular/partTime Job vs Attendance Rate

SELECT
Extracurricular,
PartTimeJob,
AVG(AttendanceRate) as avg_attendance
FROM hs_student
GROUP BY Extracurricular, PartTimeJob