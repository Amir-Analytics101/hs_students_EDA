-- STUDY HOURS VS GPA AND MATH SCORE
SELECT 
ROUND(StudyHours, 0) as study_hour_group,
COUNT(*) as student_count,
AVG(GPA) as avg_gpa,
AVG(TestScore_Math) as avg_math_score
FROM hs_student
GROUP BY ROUND(StudyHours, 0)
ORDER BY study_hour_group

-- FREE TIME VS GPA
SELECT
FreeTime,
COUNT(*) as student_count,
AVG(GPA) as avg_gpa
FROM hs_student
GROUP BY FreeTime
ORDER BY FreeTime

-- GoOut vs GPA
SELECT
GoOut,
COUNT(*) as student_count,
AVG(GPA) as avg_gpa
FROM hs_student
GROUP BY GoOut
ORDER BY GoOut