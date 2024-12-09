USE computer_Science;

CREATE TABlE employee(
empl_ID int(9) primary key ,
Name varchar(25) not null,
SSN int(9) not null,
Phone int(10),
Address varchar(25),
Salary int(20),
Office_location varchar(20),
Date_of_hire DATE,
Title varchar(10),
Role varchar(10),
employee_rank varchar(10)
);

ALTER TABLE employee
MODIFY Phone INT(15);

INSERT INTO employee (empl_ID, Name, SSN, Phone, Address, Salary, Office_location, Date_of_hire, Title, Role, employee_rank)
VALUES
(10000001, 'Alice Maverick', 123456789, 114565742, 'Bronx, NY', 62000, 'Building A', '2021-10-30', 'Professor', 'Faculty', 'Junior'),
(10000002, 'Malice Cusack', 123456788, 214565742, 'Queens, NY', 82000, 'Building B', '2021-10-23', 'Professor', 'Staff', 'Senior'),
(10000003, 'Carolina Rice', 123456787, 314565742, 'Bronx, NY', 70000, 'Building A', '2021-08-30', 'Professor', 'Faculty', 'Junior'),
(10000004, 'Eric Nam', 123456786, 414565742, 'Queensbridge, NY', 75000, 'Building C', '2019-08-15', 'Technician', 'Staff', 'Senior'),
(10000005, 'Namjoon Kim', 123456685, 514565756, 'Smallville, NY', 90000, 'Building B', '2010-07-12', 'Professor', 'Faculty', 'Senior'),
(10000006, 'Taehuang Kim', 123452748, 614565123, 'New York, NY', 50000, 'Building D', '2012-06-01', 'Professor', 'Faculty', 'Senior'),
(10000007, 'Jung Kook', 123456723, 414565742, 'New Rochelle, NY', 100000, 'Building A', '2024-08-30', 'Professor', 'Faculty', 'Senior'),
(10000008, 'Evelyn Maier', 94093828, 214565754, 'Long Island, NY', 95000, 'Building C', '2022-05-25', 'Assistant', 'Staff', 'Junior'),
(10000009, 'Bart Simpson', 123456567, 314565742, 'Tribeca, NY', 40000, 'Building A', '2015-02-28', 'Technician', 'Staff', 'Senior'),
(10000010, 'Jasmin Electra', 123674587, 614565742, 'New Rochelle, NY', 42000, 'Building B', '2018-08-13', 'Lecturer', 'Faculty', 'Junior'),
(10000011, 'John Wick', 123450294, 114565742, 'Green, NY', 92000, 'Building C', '2022-03-02', 'Security', 'Staff', 'Senior'),
(10000012, 'Chaewon Kim', 123256787, 214565742, 'Seoul, NY', 90000, 'Building D', '2022-09-25', 'Lecturer', 'Faculty', 'Junior'),
(10000013, 'Sakura Miyawaki', 123446787, 614565742, 'Tokyo, NY', 45000, 'Building D', '2023-05-16', 'Professor', 'Faculty', 'Senior'),
(10000014, 'Itadori Yuji', 125756787, 714565742, 'Jeju, NY', 70000, 'Building B', '2021-04-10', 'Technician', 'Staff', 'Senior'),
(10000015, 'Gojo Satoro', 123456735, 914565744, 'Osaka, NY', 97000, 'Building D', '2022-06-20', 'Professor', 'Faculty', 'Senior');


CREATE TABLE Course(
CourseID varchar(7) primary key,
course_name varchar(20),
Description varchar (20),
course_prereqs varchar(20),
Course_credits int (1)
);

INSERT INTO Course (CourseID, course_name, Description, course_prereqs, Course_credits) VALUES
('CMP101', 'Intro to CS', 'Introduction to Computer Science', '', 3),
('CMP102', 'Data Structures', 'Study of data structures', 'CMP101', 5),
('CMP103', 'Algorithms', 'Study of algorithms', 'CMP102', 2),
('CMP104', 'Operating Systems', 'Introduction to operating systems', 'CMP103', 4),
('CMP105', 'Databases', 'Introduction to databases', 'CMP103', 3),
('CMP106', 'Computer Networks', 'Introduction to computer networks', 'CMP104', 4),
('CMP107', 'Software Engineering', 'Introduction to software engineering', 'CMP105', 2),
('CMP108', 'Artificial Intelligence', 'Introduction to AI', 'CMP106', 4),
('CMP109', 'Machine Learning', 'Introduction to machine learning', 'CMP108', 3),
('CMP110', 'Cybersecurity', 'Introduction to cybersecurity', 'CMP107', 3),
('CMP111', 'Web Development', 'Introduction to web development', 'CMP105', 3),
('CMP112', 'Mobile App Development', 'Introduction to mobile app development', 'CMP111', 3),
('CMP113', 'Cloud Computing', 'Introduction to cloud computing', 'CMP106', 4),
('CMP114', 'Data Science', 'Introduction to data science', 'CMP109', 3),
('CMP115', 'Human-Computer Interaction', 'Introduction to HCI', 'CMP107', 4);
Select*FROM Course;

CREATE TABLE Course_Section(
sectionID int(5) primary key,
room_number int(3),
schedule varchar(10),
courseID varchar(7),
foreign key (courseID) references Course(courseID)
);



INSERT INTO Course_Section (sectionID, room_number, schedule, courseID) VALUES
(10001, 101, 'Mon 10-12', 'CMP101'),
(10002, 102, 'Tue 10-12', 'CMP102'),
(10003, 103, 'Wed 10-12', 'CMP103'),
(10004, 104, 'Thu 10-12', 'CMP104'),
(10005, 105, 'Fri 10-12', 'CMP105'),
(10006, 106, 'Mon 2-4', 'CMP106'),
(10007, 107, 'Tue 2-4', 'CMP107'),
(10008, 108, 'Wed 2-4', 'CMP108'),
(10009, 109, 'Thu 2-4', 'CMP109'),
(10010, 110, 'Fri 2-4', 'CMP110'),
(10011, 111, 'Mon 4-6', 'CMP111'),
(10012, 112, 'Tue 4-6', 'CMP112'),
(10013, 113, 'Wed 4-6', 'CMP113'),
(10014, 114, 'Thu 4-6', 'CMP114'),
(10015, 115, 'Fri 4-6', 'CMP115');


CREATE TABLE Student(
Student_emplID int(9) primary key,
fname varchar(20),
minit varchar(20),
lname varchar(20),
Date_of_Birth DATE,
email varchar(50),
phone int(10),
address  varchar(25),
Major_Minor varchar(50)
);



INSERT INTO Student (Student_emplID, fname, minit, lname, Date_of_Birth, email, phone, address, Major_Minor) VALUES
(20000001, 'Naruto', 'U', 'Uzumaki', '2000-01-01', 'naruto.uzumaki@example.com', 1234567890, 'Konoha', 'Computer Science'),
(20000002, 'Sasuke', 'U', 'Uchiha', '2012-02-01', 'sasuke.uchiha@example.com', 1234567891, 'Konoha', 'Cybersecurity'),
(20000003, 'Sakura', 'H', 'Haruno', '2003-03-01', 'sakura.haruno@example.com', 1234567892, 'Konoha', 'Data Science'),
(20000004, 'Hinata', 'H', 'Hyuga', '2005-04-01', 'hinata.hyuga@example.com', 1234567893, 'Konoha', 'Artificial Intelligence'),
(20000005, 'Kakashi', 'H', 'Hatake', '2000-05-01', 'kakashi.hatake@example.com', 1234567894, 'Konoha', 'Software Engineering'),
(20000006, 'Itachi', 'U', 'Uchiha', '2002-06-01', 'itachi.uchiha@example.com', 1234567895, 'Konoha', 'Computer Networks'),
(20000007, 'Shikamaru', 'N', 'Nara', '2007-07-01', 'shikamaru.nara@example.com', 1234567896, 'Konoha', 'Web Development'),
(20000008, 'Ino', 'Y', 'Yamanaka', '2006-08-01', 'ino.yamanaka@example.com', 1234567897, 'Konoha', 'Mobile App Development'),
(20000009, 'Choji', 'A', 'Akimichi', '2000-09-01', 'choji.akimichi@example.com', 1234567898, 'Konoha', 'Cloud Computing'),
(20000010, 'Neji', 'H', 'Hyuga', '2000-10-01', 'neji.hyuga@example.com', 1234567899, 'Konoha', 'Human-Computer Interaction'),
(20000011, 'Rock', 'L', 'Lee', '2000-11-01', 'rock.lee@example.com', 1234567800, 'Konoha', 'Data Science'),
(20000012, 'Gaara', 'S', 'Sabaku', '2002-12-01', 'gaara.sabaku@example.com', 1234567801, 'Sunagakure', 'Cybersecurity'),
(20000013, 'Temari', 'S', 'Sabaku', '2001-01-01', 'temari.sabaku@example.com', 1234567802, 'Sunagakure', 'Artificial Intelligence'),
(20000014, 'Kankuro', 'S', 'Sabaku', '2001-02-01', 'kankuro.sabaku@example.com', 1234567803, 'Sunagakure', 'Software Engineering'),
(20000015, 'Tenten', 'M', 'Mitsashi', '2001-03-01', 'tenten.mitsashi@example.com', 1234567804, 'Konoha', 'Computer Science');


CREATE TABLE Enrollment(
STATUS varchar(15),
Cheating_incidents varchar(30),
Cheating_incidents_status varchar(30),
Grade int(3),
Student_emplID int(9),
course_ID varchar(7),
foreign key (Student_emplID) references Student(Student_emplID),
foreign key (course_ID) references Course(CourseID)
);

INSERT INTO Enrollment (STATUS, Cheating_incidents, Cheating_incidents_status, Grade, Student_emplID, course_ID) VALUES
('active', 'None', 'N/A', 85, 20000001, 'CMP101'),
('completed', 'Cheated', 'Handled', 75, 20000002, 'CMP102'),
('active', 'None', 'N/A', 88, 20000003, 'CMP103'),
('dropped', 'Cheated', 'Unresolved', 0, 20000004, 'CMP104'),
('completed', 'None', 'N/A', 92, 20000005, 'CMP105'),
('active', 'Cheated', 'Under Investigation', 65, 20000006, 'CMP106'),
('completed', 'None', 'N/A', 95, 20000007, 'CMP107'),
('active', 'None', 'N/A', 89, 20000008, 'CMP108'),
('completed', 'None', 'N/A', 93, 20000009, 'CMP109'),
('dropped', 'None', 'N/A', 0, 20000010, 'CMP110'),
('active', 'None', 'N/A', 86, 20000011, 'CMP111'),
('completed', 'Cheated', 'Handled', 70, 20000012, 'CMP112'),
('active', 'None', 'N/A', 91, 20000013, 'CMP113'),
('completed', 'None', 'N/A', 96, 20000014, 'CMP114'),
('active', 'None', 'N/A', 89, 20000015, 'CMP115');



CREATE TABLE Department(
departmentID int(10) primary key,
department_name varchar(40),
Phone int(10),
Office_Location varchar(20),
chairperson_emplID int(9),
chairperson_start_date DATE,
secretary_emplID int (9),
foreign key (chairperson_emplID) references employee(empl_ID),
foreign key (secretary_emplID) references employee(empl_ID)
);


INSERT INTO Department (departmentID, department_name, Phone, Office_Location, chairperson_emplID, chairperson_start_date, secretary_emplID) VALUES
(1, 'Computer Science', 1234567890, 'Building A', 10000001, '2020-01-15', 10000002),
(2, 'Cybersecurity', 1234567891, 'Building B', 10000002, '2019-02-20', 10000003),
(3, 'Data Science', 1234567892, 'Building C', 10000003, '2018-03-25', 10000004),
(4, 'Artificial Intelligence', 1234567893, 'Building D', 10000004, '2021-04-30', 10000005),
(5, 'Software Engineering', 1234567894, 'Building E', 10000005, '2017-05-05', 10000006),
(6, 'Computer Networks', 1234567895, 'Building F', 10000006, '2022-06-10', 10000007),
(7, 'Web Development', 1234567896, 'Building G', 10000007, '2016-07-15', 10000008),
(8, 'Mobile App Development', 1234567897, 'Building H', 10000008, '2020-08-20', 10000009),
(9, 'Cloud Computing', 1234567898, 'Building I', 10000009, '2019-09-25', 10000010),
(10, 'Human-Computer Interaction', 1234567899, 'Building J', 10000010, '2018-10-30', 10000011),
(11, 'Cybersecurity', 1234567800, 'Building K', 10000011, '2021-11-05', 10000012),
(12, 'Artificial Intelligence', 1234567801, 'Building L', 10000012, '2017-12-10', 10000013),
(13, 'Software Engineering', 1234567802, 'Building M', 10000013, '2022-01-15', 10000014),
(14, 'Computer Networks', 1234567803, 'Building N', 10000014, '2016-02-20', 10000015),
(15, 'Web Development', 1234567804, 'Building O', 10000015, '2015-03-25', 10000001);



/* 3 */
SELECT*FROM employee;
SELECT*FROM Course;
SELECT*FROM Student;
SELECT*FROM Enrollment;
SELECT*FROM Course_section;
SELECT*FROM Department;
/* 4 */
Select Name
From Employee
WHERE Salary > 40000;

Select fname
From Student
WHERE Major_Minor = 'Computer Science';


Select course_name
From Course
Where Course_credits >2;

Select room_number
From Course_section
WHERE room_number > 105;

SELECT Office_location
From Department
WHERE department_name = 'Computer Science';

Select Student_emplID
From Enrollment
WHERE Cheating_incidents = 'Cheated';

/* 5 */
SELECT e.Name, e.Role, d.department_name
FROM employee e
JOIN Department d ON e.empl_ID = d.chairperson_emplID OR e.empl_ID = d.secretary_emplID;

SELECT s.fname, s.lanem
FROM Student s
WHERE EXISTS (
    SELECT 1
    FROM Enrollment e
    JOIN Course c ON e.course_ID = c.CourseID
    WHERE e.Student_emplID = s.Student_emplID AND c.course_name LIKE '%Artificial Intelligence%'
);

SELECT e.Name, cs.schedule, c.course_name, d.department_name
FROM employee e
JOIN Department d ON e.empl_ID = d.chairperson_emplID
JOIN Course_Section cs ON cs.courseID IN (SELECT CourseID FROM Course)
JOIN Course c ON cs.courseID = c.CourseID
WHERE d.department_name = 'Cybersecurity';

/* 6 */
SELECT s.fname, s.lname, s.email
FROM Student s
JOIN Enrollment e ON s.Student_emplID = e.Student_emplID
WHERE e.Grade > 90;

/* 7 */
SELECT s.fname, s.lname, s.email
FROM Student s
JOIN Enrollment e ON s.Student_emplID = e.Student_emplID
GROUP BY s.Student_emplID, s.fname, s.lname, s.email
HAVING COUNT(e.course_ID) <= 5;

/* 8 */
UPDATE Employee
SET  Salary = Salary *1.25;

UPDATE Department
SET  department_name = 'Computer Information Systems'
WHERE departmentID = 1;

UPDATE Course_Section
SET schedule = 'MON 10/30'
WHERE CourseID = 'CMP 108'; 

UPDATE employee
SET Phone = 9375838102
WHERE name = 'Chaewon Kim';

Update Course 
SET course_name = 'Remedial Class'
WHERE CourseID IN (
Select Course_ID
FROM Course c
JOIN Enrollment e ON c.CourseID = e.CourseID
WHERE Grade <= 75);

UPDATE employee
SET Office_location = 'Building X'
WHERE empl_ID IN (
    SELECT chairperson_emplID
    FROM Department
    WHERE department_name = 'Computer Science'
);

/* 9 */

DELETE FROM Student
WHERE Student_emplID IN (
    SELECT Student_emplID
    FROM Enrollment
    WHERE Grade < 50
);

DELETE FROM Course
WHERE CourseID NOT IN (
    SELECT DISTINCT course_ID
    FROM Enrollment
);


DELETE FROM Department
WHERE department_name = 'Remedial Classes';


/* 10 */

SELECT  s.fname, s.lname, s.email
FROM Student s
JOIN Enrollment e ON s.Student_emplID = e.Student_emplID
WHERE e.Cheating_incidents IS NOT NULL AND e.Cheating_incidents <> 'None';


/* 14 */
SELECT Name, Salary
FROM employee
WHERE Salary = (
    SELECT MAX(Salary)
    FROM employee
);

/* 15 */
SELECT Name, Salary
FROM employee
WHERE Salary = (
    SELECT MIN(Salary)
    FROM employee
);

/* 16 */

SELECT Name, Salary
FROM employee
WHERE Salary <= (
    SELECT AVG(Salary) + 5000
    FROM employee
);


