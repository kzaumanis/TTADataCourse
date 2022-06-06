SELECT COUNT(*) FROM student;
-- 204 Students

SELECT SUM(FullTimeFee) FROM fees;
--  101000

SELECT * FROM course 
LEFT JOIN fees ON course.CourseID = fees.CourseID ORDER BY fees.FullTimeFee DESC;
-- Most expensive is Economics 12000 and least expensive is Paricle Physics 4000

SELECT AVG(PartTimeFee) FROM fees;
-- 5950

SELECT *, FullTimeFee - ScholarshipDiscount AS DiscountedFee FROM fees;
-- Discounted fee added to the fee table (fulltime fee - scholarship dicount)

SELECT CourseID, FullTimeFee FROM fees
WHERE FullTimeFee IS NOT NULL
ORDER BY FullTimeFee ASC
LIMIT 1;
--  Cheapest Full time Course ID selected

SELECT *, MAX(fees.FullTimeFee - fees.ScholarshipDiscount) AS DicountedFee FROM course
LEFT JOIN fees ON course.CourseID = fees.CourseID 
WHERE fees.FullTimeFee IS NOT NULL
ORDER BY fees.FullTimeFee DESC;
-- Most expensive is Economics 10500 with scholarship discount

SELECT *, COUNT(application.applicationID)
FROM application
LEFT JOIN course ON application.CourseAppliedFor = course.courseID
WHERE application.applicationID IS NOT NULL
AND application.CourseAppliedFor = 11 AND application.DateOfApplication > 2020-08-30 ;
--  Number of applications for the History courses