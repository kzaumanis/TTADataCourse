SELECT * FROM uni.student;
SELECT COUNT(*) From student;
Select SUM(FullTimeFee) From fees;
Select MIN(FullTimeFee) From fees;
Select MAX(FullTimeFee) From fees;
Select AVG(PartTimeFee) From fees;
Select FeeID, FullTimeFee - ScholarshipDiscount from fees;
SELECT * FROM uni.fees Where FullTimeFee = (Select MIN(FullTimeFee) From fees);
SELECT *, Max(FullTimeFee - ScholarshipDiscount) From fees;
SELECT COUNT(applicationID) from (SELECT * From application Where CourseAppliedFor = '11' and DateOfApplication between '2020-03-01' and '2020-08-30') as Count;