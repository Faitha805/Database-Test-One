-- Creating table finance
CREATE TABLE tblFinance(
    StudentID INT(100),
    Tuition_Fee VARCHAR(100),
    Adminstration_Fee VARCHAR(100),
    Exams_Fee INT(100),
    Medical_Fee INT(100)
);

-- Extracting all students in Y1S1 with the tution fee paid
SELECT StudentID
FROM tblFinance
WHERE Year = 'Y1S1';

-- Students with tuition of greater or equal to 30,000
SELECT StudentName, StudentID, Year, Tuition_Fee
FROM tblFinance
WHERE Tuition_Fee >= 30,000 ;

-- Adding a new record
UPDATE tblstudent(StudentName, Birthdate, Year, MobileNo)
VALUES ('Dan', '20/4/2001', 'Y1S2', '0723456123');

-- Changing student name with given id
UPDATE tblstudent
StudentName = 'Nelson'
WHERE StudentID = 26;

-- Display highest and lowest tuition fee
SELECT Tuition_Fee 
FROM tblFinance
HAVING HIGHEST(Tuition_Fee)
AS 'Highest Amount'
AND LOWEST(Tuition_Fee)
AS 'Lowest Amount';
