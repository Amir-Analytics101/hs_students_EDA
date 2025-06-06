-- Distribution of Students by Grade, Gender, Race, and SchoolType
SELECT
Grade,
Gender,
Race,
SchoolType,
COUNT(*) as student_count
FROM hs_student
GROUP BY Grade, Gender, Race, SchoolType
ORDER BY Grade, SchoolType

--Count of Students by SES_Quartile
SELECT
SES_quartile,
COUNT(*) AS student_count
FROM hs_student
GROUP BY SES_Quartile
ORDER BY SES_Quartile

-- Percentage of Students with/without InternetAccess, PartTimeJob, Extracurricular
SELECT 'InternetAccess' AS Cateogry,
InternetAccess AS statuss,
COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS percentage
FROM hs_student
GROUP BY InternetAccess

UNION ALL

SELECT 
    'PartTimeJob' AS Category,
    PartTimeJob,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS percentage
FROM hs_student
GROUP BY PartTimeJob

UNION ALL

SELECT 
    'Extracurricular' AS Category,
    Extracurricular,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS percentage
FROM hs_student
GROUP BY Extracurricular


 --
