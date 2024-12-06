USE computer_Science;

CREATE TABlE employee(
empl_ID int(9) primary key,
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



CREATE TABLE Course(
CourseID varchar(7) primary key,
course_name varchar(20),
Description varchar (20),
course_prereqs varchar(20),
Course_credits int (1),
emplID int(9),
foreign key (emplID) references employee(empl_ID)
);


CREATE TABLE Course_Section(
sectionID int(5) primary key,
room_number int(3),
schedule varchar(10),
courseID varchar(7),
foreign key (courseID) references Course(courseID)
);

CREATE TABLE Student(
Student_emplID int(9) primary key,
fname varchar(20),
minit varchar(20),
lanem varchar(20),
Date_of_Birth DATE,
email varchar(25),
phone int(10),
address  varchar(25),
Major_Minor varchar(20)
);

CREATE TABLE Enrollment(
STATUS varchar(8),
Cheating_incidents varchar(30),
Cheating_incidents_status varchar(10),
Grade int(3),
Student_emplID int(9),
course_ID varchar(7),
foreign key (Student_emplID) references Student(Student_emplID),
foreign key (course_ID) references Course(CourseID)
);

CREATE TABLE Department(
departmentID
);



