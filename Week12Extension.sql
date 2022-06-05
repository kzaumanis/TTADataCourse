drop database uni;
create database uni;
use uni;
CREATE TABLE `lecturer` (
  `LecturerID` int NOT NULL AUTO_INCREMENT,
  `LecturerName` varchar(45) DEFAULT NULL,
  `LecturerEmail` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`LecturerID`)
); 
CREATE TABLE `fees` (
  `FeeID` int NOT NULL AUTO_INCREMENT,
  `CourseID` int DEFAULT NULL,
  `FullTimeFee` int DEFAULT NULL,
  `PartTimeFee` int DEFAULT NULL,
  `ScholarshipDiscount` int DEFAULT NULL,
  `FeeYear` year DEFAULT NULL,
  PRIMARY KEY (`FeeID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`)
) ;
select courseid from uni.fees where fulltimefee = (select min(fulltimefee) from uni.fees)
;
select courseid, fulltimefee-scholarshipdiscount
from uni.fees
order by 2 desc
;