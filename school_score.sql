WITH scores_school AS(
SELECT
SchoolType,
TestScore_Math,
TestScore_Reading,
TestScore_Science
FROM 
hs_student
)
SELECT SchoolType,
AVG(TestScore_Math) AS avg_math_score,
AVG(TestScore_Reading) AS avg_reading_score,
AVG(TestScore_Science) AS avg_reading_score
FROM scores_school
GROUP BY SchoolType
