create database postgradeOffice
go
use postgradeOffice
create table User1(
id int primary key not null,
email varchar(50)  not null,
password varchar(20)  not null
)
create table Admin(
id int not null,
email varchar(50)  not null,
password varchar(20)  not null,
foreign key(id) references User1 on delete cascade on update cascade,
primary key(id)
)
create table Student(
id int not null,
firstName varchar(20) not null,
lastName varchar(20) not null,
email varchar(50) not null,
password varchar(20)  not null,
type varchar(20),
faculty varchar(20) not null,
address varchar(10),
Gpa decimal(3,2) not null,
primary key(id),
foreign key (id) references User1 on delete cascade on update cascade
)


create table GucianStudent(
id int  not null,
undergradeID varchar(10)  not null ,
firstName varchar(20 )  not null,
lastName varchar(20)  not null,
email varchar(50)  not null,
password  varchar(20)  not null,
type varchar(20),
faculty varchar(20),
address varchar(10),
Gpa decimal(3,2)  not null,
primary key(id),
foreign key (id) references User1 on delete cascade on update cascade
)
create table NonGucianStudent(
id int  not null,
firstName varchar(20) not null,
lastName varchar(20)  not null,
email varchar(50)  not null,
password  varchar(20)  not null,
type varchar(20),
faculty varchar(20),
address varchar(10),
Gpa decimal(3,2)  not null,
primary key(id),
foreign key (id) references User1 on delete cascade on update cascade
)
create table GUCStudentPhoneNumber(
id int  not null,
phone varchar(20)  not null,
primary key(id,phone),
foreign key(id) references GucianStudent on delete cascade on update cascade
)




create table NonGUCStudentPhoneNumber(
id int primary key not null,   --how to have a composite primary key?
phone varchar(20) primary key,
FOREIGN KEY(id) references NonGucianStudent)

create table Course(
id int primary key not null,
fees decimal(10,3),    --data type?
creditHours int,
code varchar(10))

create table Supervisor(
id int primary key not null,
supervisorName varchar(20),
email varchar(50),
supervisorPassword varchar(20),
faculty varchar(20)
)

create table Thesis(
serialNumber int primary key,
field varchar(20),
thesisType varchar(20),
title varchar(50),
startDate date,
endDate date,
defenseDate date,
years int,
grade decimal(3,2),   --data type??
FOREIGN KEY(payment_id) references Payment,noExtenstion int
)

create table Publication(
id int primary key,
title varchar(50),
publicationDate datetime,
place varchar(50),
accepted bit,        --data type??
host varchar(50)
)        


create table Payment(
id int primary key,
amount decimal(10,3),
no_installments int,
fundPercentage decimal(10,3)
) 


CREATE TABLE Examiner(
	id INT PRIMARY KEY IDENTITY,
	ename  VARCHAR(20), --name reserved
	epassword VARCHAR(20),--password reserved
	fieldOfWork VARCHAR(20) ,
	isNational bit
)

CREATE TABLE Defense(
		FOREIGN KEY (serialNumber) REFERENCES Thesis ON DELETE CASCADE ON UPDATE CASCADE,
		ddate datetime ,--date reserved
		dlocation VARCHAR(15),
		grade decimal(3,2),--GRADE DATA TYPE 
		PRIMARY KEY (serialNumber,ddate) 
)

CREATE TABLE GUCianProgressReport (
	FOREIGN KEY (sid) REFERENCES GucianStudent ON DELETE CASCADE ON UPDATE CASCADE, --sid reserved
	no INT ,--no reserved
	gdate DATETIME ,--date reserved
	eval int,
	state int,--STATE RESERVED
	FOREIGN KEY (thesisSerialNumber) REFERENCES Thesis ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (supid) REFERENCES Supervisor ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(sid,no)
)

CREATE TABLE NonGUCianProgressReport(
	FOREIGN KEY (sid) REFERENCES GucianStudent ON DELETE CASCADE ON UPDATE CASCADE, --sid reserved
	no INT ,--no reserved
	gdate DATETIME ,--date reserved
	eval int,
	state int,--STATE RESERVED
	FOREIGN KEY ( thesisSerialNumber) REFERENCES  Thesis ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (supid) REFERENCES Supervisor ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(sid,no)
)

CREATE TABLE Installment (
	date datetime,--datereserved
	FOREIGN KEY (paymentId) REFERENCES payment ON DELETE CASCADE ON UPDATE CASCADE,
	amount decimal(10,3) ,
	done bit,
	PRIMARY KEY(date ,paymentId)
)

CREATE TABLE NonGucianStudentPayForCourse(
	FOREIGN KEY (sid) REFERENCES NonGucianStudent ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (paymentNo) REFERENCES payment ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (cid) REFERENCES Course ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(sid,paymentNo,cid)
)

create table NonGucianStudentTakeCourse(
    sid int not null,
    cid int not null,
    grade decimal(3,2),
    foreign key(sid) references NonGucianStudent ,
    foreign key(cid) references Course
);

create table GUCianStudentRegisterThesis(
    sid int not null, 
    supid int not null, 
    serial_no int not null,
    foreign key(sid) references GucianStudent,
    foreign key(supid) references Supervisor, 
    foreign key(serialNo) references Thesis

);

create table NonGUCianStudentRegisterThesis (
    sid int not null,
    supid int not null, 
    serial_no int not null,
    foreign key(sid) references NonGucianStudent,
    foreign key(supid) references Supervisor,
    foreign key(serialNo) references Thesis
);

create table ExaminerEvaluateDefense(
    date datetime, --
    serialNo int not null, 
    examinerId int not null, 
    comment varchar(300) not null --number?,
    foreign key(date) references Defense, --
    foreign key(serialNo) references Defense, --
    foreign key(examinerId) references Examiner --
);

create table ThesisHasPublication(
    serialNo int not null,
    pubid int not null,
    foreign key(serialNo) references Thesis, --
    foreign key(pubid) references Publication --
);