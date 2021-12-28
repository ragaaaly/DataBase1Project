create database postgradeOffice
go
use postgradeOffice

create table PostGradUser(
id int primary key identity ,
email varchar(50) not null ,
password varchar(20) not null
)

create table Admin(
id int,
foreign key(id) references PostGradUser on delete cascade on update cascade,
primary key(id)
)

create table GucianStudent(
id int,
undergradeID varchar(10),
firstName varchar(20 ) not null,
lastName varchar(20)not null ,
type varchar(10),
faculty varchar(20) not null,
address varchar(50) not null,
GPA decimal(3,2) ,
primary key(id) ,
foreign key (id) references PostGradUser on delete cascade on update cascade
)
drop table NonGucianStudent

create table NonGucianStudent(
id int ,
firstName varchar(20) not null,
lastName varchar(20)  not null,
type varchar(10),
faculty varchar(20) not null,
address varchar(50) not null,
GPA decimal(3,2) ,
primary key(id),
foreign key (id) references PostGradUser on delete cascade on update cascade
)

create table GUCStudentPhoneNumber(
id int  not null,
phone varchar(20)  not null,
primary key(id,phone),
foreign key(id) references GucianStudent on delete cascade on update cascade
)
create table NonGUCStudentPhoneNumber(
id int  not null,
phone varchar(20)  not null,
primary key(id,phone),
foreign key(id) references NonGucianStudent on delete cascade on update cascade
)
create table Course(
id int primary key not null,
fees decimal(10,3),    --data type?
creditHours int,
code varchar(10)
)


-- name of the supervisor / first name and last name
create table Supervisor(
id int not null,
name varchar(20),
faculty varchar(20)
primary key(id),
foreign key(id) references PostGradUser on delete cascade on update cascade
)

create table Thesis(
serialNumber int primary key,
payment_id int,
field varchar(20),
type varchar(20),
title varchar(50),
startDate date,
endDate date,
defenseDate date,
years as year(endDate)- year(startDate),
grade decimal(3,2),  --data type??
FOREIGN KEY (payment_id)  references Payment,
noExtenstion int
)

create table Publication(
id int primary key,
title varchar(50),
date datetime,
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
	id INT PRIMARY KEY,
	name  VARCHAR(20),
	fieldOfWork VARCHAR(20) ,
	isNational bit,
	foreign key(id) references PostGradUser on delete cascade on update cascade
)

CREATE TABLE Defense(
		serialNumber int,
		FOREIGN KEY (serialNumber) REFERENCES Thesis ON DELETE CASCADE ON UPDATE CASCADE,
		date datetime ,
		location VARCHAR(15),
		grade decimal(3,2),--GRADE DATA TYPE 
		PRIMARY KEY (serialNumber,date) 
)
-- may cause cycles or multiple cascade paths error ( el error dah by7sal lma b7ot el on delete cascade w el on update cascade 34an kda 3mltlo comment ta7t)
CREATE TABLE GUCianProgressReport (
	sid int,
	supid int,
    thesisSerialNumber int,
	FOREIGN KEY (sid) REFERENCES GucianStudent ON DELETE CASCADE ON UPDATE CASCADE,
	no INT ,
	date DATETIME ,
	eval int,
	state int,
	FOREIGN KEY (thesisSerialNumber) REFERENCES Thesis ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (supid) REFERENCES Supervisor ,--ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(sid,no)
)

-- may cause cycles or multiple cascade paths error ( el error dah by7sal lma b7ot el on delete cascade w el on update cascade 34an kda 3mltlo comment ta7t)
CREATE TABLE NonGUCianProgressReport(
	sid int,
	thesisSerialNumber int ,
	supid int,
	FOREIGN KEY (sid) REFERENCES GucianStudent ON DELETE CASCADE ON UPDATE CASCADE,
	no INT ,
	date DATETIME ,
	eval int,
	state int,
	FOREIGN KEY ( thesisSerialNumber) REFERENCES  Thesis ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (supid) REFERENCES Supervisor ,--ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(sid,no)
)

CREATE TABLE Installment (
	paymentId int,
	date datetime,
	FOREIGN KEY (paymentId) REFERENCES payment ON DELETE CASCADE ON UPDATE CASCADE,
	amount decimal(10,3) ,
	done bit,
	PRIMARY KEY(date ,paymentId)
)

CREATE TABLE NonGucianStudentPayForCourse(
	sid int,
	cid int,
	PaymentNo int,
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
    foreign key(serial_no) references Thesis
);

create table NonGUCianStudentRegisterThesis (
    sid int not null,
    supid int not null, 
    serial_no int not null,
    foreign key(sid) references NonGucianStudent,
    foreign key(supid) references Supervisor,
    foreign key(serial_no) references Thesis
);
-- may cause cycles or multiple cascade paths error ( el error dah by7sal lma b7ot el on delete cascade w el on update cascade 34an kda 3mltlo comment ta7t)
create table ExaminerEvaluateDefense(
    date datetime,
    serialNo int not null, 
    examinerId int not null, 
    comment varchar(300) not null,
    foreign key(serialNo,date) references Defense, 
    foreign key(examinerId) references Examiner
);

create table ThesisHasPublication(
    serialNo int not null,
    pubid int not null,
    foreign key(serialNo) references Thesis, 
    foreign key(pubid) references Publication, 
	primary key(serialNo,pubid)
);
DBCC CHECKIDENT ('[PostGradUser]', RESEED, 2);
--SET IDENTITY_INSERT PostGradUser off;
--------------------------------------------------------------------------------
--USER STORIES
--drop procedure SupervisorRegister
/*
select *
from PostGradUser

exec StudentRegister 'Hoda', 'Desouki', 'dnjwdw' , 'MET','0' , 'hoda2750@hotmail.com' , 'dnw' 
go
select *
from PostGradUser

Declare @success int 
Exec userLogin 1234 ,'ahmed', @success output
print @success

go
exec addMobile 6,'068349322'
exec StudentRegister 'Jana','Amr','fjer','Pharma',0,'jana.amr@hotmail.com','njefc'

GO 
exec SupervisorRegister 'Haythem' ,'Ismael', 'bjsdcd' ,'MET' ,'haythem.ismael@student.guc.edu.eg'

select *
From GucianStudent
insert into GucianStudent(id,firstName,lastName,faculty,address) values(1,'Hoda','Ahmed','bhdcds','dnjdf')
*/


Go
create function getID(@email varchar(50),@password varchar(20))
returns int
Begin
Declare @id int
select @id=U.id
from PostGradUser U
where U.email=@email and U.password=@password
return @id
End

GO
create function searchID(@id int )
returns bit
Begin 
Declare @exists bit
select @exists= count(G.id)
From GucianStudent G
where  Exists ( select G.id from GucianStudent where G.id=@id)
return @exists
end

Go
create procedure StudentRegister 
@first_name varchar(20),
@last_name varchar(20), 
@password varchar(20), 
@faculty varchar(20),
@Gucian bit, 
@email varchar(50),
@address varchar(50)  
AS
insert into PostGradUser(email,password) values(@email,@password)
IF @Gucian =1
insert into GucianStudent(id,firstName, lastName,faculty, address) values (dbo.getID(@email,@password),@first_name, @last_name, @faculty, @address)
Else
insert into NonGucianStudent(id,firstName, lastName,faculty, address) values (dbo.getID(@email,@password),@first_name, @last_name, @faculty, @address)

Go
create procedure SupervisorRegister 
@first_name varchar(20),
@last_name varchar(20), 
@password varchar(20), 
@faculty varchar(20),
@email varchar(50)
AS
insert into PostGradUser(email,password) values(@email,@password)
insert into Supervisor(id,name,faculty)values(dbo.getID(@email,@password), @first_name +' ' +@last_name,@faculty)

GO
create procedure userLogin
@id int,
@password varchar(20),
@Success bit output
As
select @Success=count(P.id)
from PostGradUser P
where exists(select *
			  from PostGradUser
			  where P.id=@id and P.password=@password)

Go
create procedure addMobile
@Id int ,
@mobile_number varchar(20)
AS
if(dbo.searchID(@id)='1')
insert into GUCStudentPhoneNumber(id,phone) values(@id,@mobile_number)
else 
insert into NonGUCStudentPhoneNumber(id,phone) values(@id,@mobile_number)

Go
create procedure AdminListSup
AS
select S.id, S.name
From Supervisor S

Go
create procedure AdminViewSupervisorProfile
@supid int 
As
select S.id, S.name, S.faculty, 
GR.sid as 'Gucian ID' ,GR.thesisSerialNumber 'Gucian Thesis',
NGR.sid as 'NON Gucian ID',NGR.thesisSerialNumber 'NON Gucian Thesis' 
From supervisor S
inner join GUCianProgressReport GR on S.id=GR.supid --redundant 
inner join NonGUCianProgressReport NGR on S.id=NGR.supid
inner join GUCianStudentRegisterThesis GT on S.id = GT.supid
inner join NonGUCianStudentRegisterThesis NGT on S.id =NGT.supid
where S.id=@supid

GO
create procedure AdminViewAllTheses
AS 
Select *
From Thesis T

GO
create procedure AdminViewOnGoingTheses
@thesesCount int output
AS
select @thesesCount =count(T.serialNumber)
From Thesis T
where CURRENT_TIMESTAMP<>T.endDate

GO
create procedure AdminViewStudentThesisBySupervisor 
As
select S.name,T.title, G.firstName 'Gucian First Name' , G.lastName 'Gucian Last Name'
From GucianStudent G inner join GUCianStudentRegisterThesis GRT on G.id=GRT.sid
inner join Supervisor S on S.id =GRT.supid
inner join Thesis T on T.serialNumber =GRT.serial_no
Union 
select S.name,T.title, NG.firstName 'Non Gucian First Name' , NG.lastName 'Non Gucian Last Name'
From NonGucianStudent NG inner join NonGUCianStudentRegisterThesis GRT on G.id=GRT.sid
inner join Supervisor S on S.id =GRT.supid
inner join Thesis T on T.serialNumber =GRT.serial_no

Go 
create procedure AdminListNonGucianCourse
@courseID int
As
select NG.firstName , NG.lastName, C.code, T.grade
From NonGucianStudent NG
inner join NonGucianStudentTakeCourse T on NG.id = T.sid
inner join course C on C.id = T.cid
where C.id=@courseID 

Go
create procedure AdminUpdateExtension
@ThesisSerialNo int
AS
update Thesis 
Set noExtenstion = noExtenstion+1
where serialNumber = @ThesisSerialNo