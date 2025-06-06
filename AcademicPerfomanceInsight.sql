SELECT 
	SchoolType,
	AVG(GPA) AS avg_gpa,
	STDEV(GPA) AS std_gpa,
	AVG(TestScore_Math) AS avg_math,
	STDEV(TestScore_Math) AS std_math,
	AVG(TestScore_Reading) AS avg_reading,
	STDEV(TestScore_Reading) AS std_reading,
	AVG(TestScore_Science) AS avg_science,
	STDEV(TestScore_Science) AS std_science
FROM hs_student
GROUP BY SchoolType) t

SELECT 
    ParentalEducation,
    AVG(GPA) AS avg_gpa,
    STDEV(GPA) AS std_gpa,
    AVG(TestScore_Math) AS avg_math,
    STDEV(TestScore_Math) AS std_math,
    AVG(TestScore_Reading) AS avg_reading,
    STDEV(TestScore_Reading) AS std_reading,
    AVG(TestScore_Science) AS avg_science,
    STDEV(TestScore_Science) AS std_science
FROM hs_student
GROUP BY ParentalEducation


SELECT 
    SES_Quartile,
    AVG(GPA) AS avg_gpa,
    STDEV(GPA) AS std_gpa,
    AVG(TestScore_Math) AS avg_math,
    STDEV(TestScore_Math) AS std_math,
    AVG(TestScore_Reading) AS avg_reading,
    STDEV(TestScore_Reading) AS std_reading,
    AVG(TestScore_Science) AS avg_science,
    STDEV(TestScore_Science) AS std_science
FROM hs_student
GROUP BY SES_Quartile
ORDER BY SES_Quartile

SELECT 
    ParentSupport,
    COUNT(*) AS student_count,
    AVG(GPA) AS avg_gpa,
    STDEV(GPA) AS std_gpa,
    AVG(TestScore_Math) AS avg_math,
    AVG(TestScore_Reading) AS avg_reading,
    AVG(TestScore_Science) AS avg_science
FROM hs_student
GROUP BY ParentSupport