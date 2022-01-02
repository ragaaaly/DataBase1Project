drop database post;
insert into PostGradUser values ('admin@gmail.com','admin')
insert into Admin values (2)
go
CREATE Proc AdminViewOnGoingTheses
@thesesCount int output
As
Select @thesesCount=Count(*)
From Thesis
where endDate > Convert(Date,CURRENT_TIMESTAMP)

Declare @thesisCount int
EXEC AdminViewOnGoingTheses @thesisCount output
print @thesisCount

INSERT INTO Thesis (field, type, title, startDate, endDate, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Object Detection and Tracking using Stereo Cameras', '1/1/2019','1/1/2024', 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Camera-Lidar Fusion for Tracking and Classification','1/1/2019','1/1/2024', '12/12/2023', 99.00, 0 )

go
CREATE Proc AdminUpdateExtension
@ThesisSerialNo int,
@success bit output
As
if(exists(select * from Thesis where serialNumber=@ThesisSerialNo))
begin
set @success =1
declare @noOfExtensions int
select @noOfExtensions=noOfExtensions from Thesis where
serialNumber=@ThesisSerialNo
update Thesis
set noOfExtensions=@noOfExtensions+1
where serialNumber=@ThesisSerialNo
end
else
set @success=0

--
Declare @success bit
exec AdminUpdateExtension 8 ,@success output
print @success


--nada insertions
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
INSERT INTO Thesis (field, type, title, startDate, endDate, grade, noOfExtensions) 
VALUES ('Engineering', 'MS','Monocular Camera-Based Depth Estimation', '1/1/2019','1/1/2021', 99.0, 0 )

INSERT INTO Thesis (field, type, title, startDate, endDate, grade, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Autonomous Driving Using Smart Roads', '1/1/2019','1/1/2021', 99.0, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, grade, noOfExtensions) 
VALUES ('Management', 'MS', 'Autonomous Driving Using Smart Roads','1/1/2019','1/1/2021', 99.0, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, grade, noOfExtensions) 
VALUES ('Pharmacy', 'MS', 'HRM functions and abusive supervision', '1/1/2019','1/1/2021', 99.0, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, grade, noOfExtensions) 
VALUES ('Management', 'PhD', 'The effect of leadership style on job satisfaction', '1/1/2019','1/1/2024', 99.0, 0)

go
declare @id int
exec studentRegister 'Ahmed', 'Ali' ,'pass2', 'IET', 1, 'ahmed.ali@student.guc.eg','Nasr City', @id output
print @id
go
declare @id int
exec studentRegister 'Hala', 'Anas' ,'pass2', 'Engineering', 1, 'hala.anas@student.guc.eg','Nasr City', @id output
print @id
go
declare @id int
exec studentRegister 'Yousef', 'Rami' ,'pass2', 'EMS', 1, 'yousef.rami@student.guc.eg','Nasr City', @id output
print @id
go
declare @id int
exec studentRegister 'Amr', 'Yahya' ,'pass2', 'Managment', 0, 'amr.yahya@student.guc.eg','Nasr City', @id output
print @id
go
declare @id int
exec studentRegister 'Mohamed', 'Ramzy' ,'pass2', 'Engneering', 1, 'mohamed.ramzy@student.guc.eg','Nasr City', @id output
print @id

go
declare @id int
exec studentRegister 'Ali', 'Hassan' ,'pass2', 'Engneering', 1, 'ali.hassan@student.guc.eg','Nasr City', @id output
print @id

go
declare @id int
exec studentRegister 'Rana', 'Ahmed' ,'pass2', 'Engneering', 1, 'rana.ahmed@student.guc.eg','Nasr City', @id output
print @id

go
declare @id int
exec studentRegister 'Mariam', 'Ramzy' ,'pass2', 'Engneering', 0, 'mohamed.ramzy@student.guc.eg','Nasr City', @id output
print @id
go
declare @id int
exec studentRegister 'Gehad', 'Fathy' ,'pass2', 'Engneering', 0, 'mohamed.ramzy@student.guc.eg','Nasr City', @id output
print @id


insert into GUCianStudentRegisterThesis values(24,3,14)
insert into GUCianStudentRegisterThesis values(25,3,15)


insert into GUCianStudentRegisterThesis values(1,5,2)
insert into GUCianStudentRegisterThesis values(9,6,12)
insert into GUCianStudentRegisterThesis values(11,3,9)
insert into GUCianStudentRegisterThesis values(22,3,13)
insert into GUCianStudentRegisterThesis values(23,3,10)

insert into NonGUCianStudentRegisterThesis values(10,3,5)
insert into NonGUCianStudentRegisterThesis values(12,3,11)

insert into NonGUCianStudentRegisterThesis values(26,3,16)
insert into NonGUCianStudentRegisterThesis values(27,3,17)


insert into Publication (title, dateOfPublication, place, host ) values ('The effect of betengan on kosa', '5/5/2020', 'GUC', 'Yasser Hegazy')
insert into Publication (title, dateOfPublication, place, host ) values ('Evolution of avocado', '7/7/2020', 'BUE', 'Eman Azab')
insert into Publication (title, dateOfPublication, place, host ) values ('Is the human in fact an upgrade of monkey?', '10/8/2020', 'AUC', 'Khaled Mounir')

insert into ThesisHasPublication (serialNo, pubid) values (2,1)
insert into ThesisHasPublication (serialNo, pubid) values (2,2)
insert into ThesisHasPublication (serialNo, pubid) values (12,4)


insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (11,1, '1/1/2001', 2, 'Good',9)
insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (11,2, '11/11/2001', 2, 'Bad',9)

insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (1,1, '5/9/2009', 1, 'Shatraa',2)
insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (1,2, '5/10/2009', 2, 'Zay el Zeft',2)

insert into NonGUCianProgressReport  (sid, no, date, state, description, thesisSerialNumber) values (10,1, '4/2/2020', 1, 'Shatraa',5)
insert into NonGUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (10,2, '2/2/2020', 2, 'Zeft',5)

insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (22,1, '4/8/2020', 1, 'Zeft',13)
insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (22,2, '4/8/2020', 1, 'Zeft',13)

insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (23,1, '4/8/2020', 1, 'Zeft',10)
insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (23,2, '4/8/2020', 1, 'Zeft',10)

insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (24,1, '4/8/2020', 1, 'Zeft',14)
insert into GUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (24,2, '4/8/2020', 1, 'Zeft',14)

insert into NonGUCianProgressReport  (sid, no, date, state, description, thesisSerialNumber) values (26,1, '4/2/2020', 1, 'Shatraa',16)
insert into NonGUCianProgressReport (sid, no, date, state, description, thesisSerialNumber) values (26,2, '2/2/2020', 2, 'Zeft',16)


insert into Publication (title, dateOfPublication, place, host) values ('kda', '1/1/2020', 'Cairo', 'Salma')
insert into ThesisHasPublication(serialNo, pubid) values (15,1)

insert into Publication (title, dateOfPublication, place, host) values ('kda kda', '1/1/2020', 'Cairo', 'Helmy')
insert into ThesisHasPublication(serialNo, pubid) values (15,2)

insert into Publication (title, dateOfPublication, place, host) values ('hwa 3aml kda', '1/1/2020', 'Cairo', 'Kamal')
insert into ThesisHasPublication(serialNo, pubid) values (15,3)

insert into ThesisHasPublication(serialNo, pubid) values (17,5)
insert into ThesisHasPublication(serialNo, pubid) values (17,6)
insert into ThesisHasPublication(serialNo, pubid) values (17,7)

insert into Course (fees, creditHours, code) values (5000,5,'CSEN501')
insert into Course (fees, creditHours, code) values (6000,6,'DSD')
insert into Course (fees, creditHours, code) values (8000,8,'MATH')
insert into Course (fees, creditHours, code) values (4000,4,'PHYS')

insert into NonGucianStudentTakeCourse (sid, cid, grade) values (27, 1, 60.2)
insert into NonGucianStudentTakeCourse (sid, cid, grade) values (27, 2, 80)
insert into NonGucianStudentTakeCourse (sid, cid, grade) values (27, 3, 88)
insert into NonGucianStudentTakeCourse (sid, cid, grade) values (27, 4, 40)

-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
exec ViewSupStudentsYears 3

go
declare @id int
exec studentRegister 'Nada', 'Aiman' ,'pass2', 'MET', 1, 'nada.aiman@student.guc.eg','Fifth Settlement', @id output
print @id
go
exec studentRegister 'Hoda', 'Ahmed' ,'pass1', 'MET', 0, 'hoda.desouki@student.guc.eg','Sherouk City'
go

go
declare @success bit
declare @type int
exec userLogin 'hoda.desouki@student.guc.eg' ,'pass1' ,@success output ,@type output
print @success 
print @type
------go
------exec studentRegister 'Hoda', 'Ahmed' ,'pass1', 'MET', 1, 'hoda.desouki@student.guc.eg','Sherouk City'
------go
--select *
--from PostGradUser

--go
--declare @id int
--exec studentRegister 'Nada', 'Aiman' ,'pass2', 'MET', 1, 'nada.aiman@student.guc.eg','Fifth Settlement', @id output
--print @id
--go
--exec studentRegister 'Hoda', 'Ahmed' ,'pass1', 'MET', 0, 'hoda.desouki@student.guc.eg','Sherouk City'
--go


declare @success bit
declare @type int
exec userLogin 'hoda.desouki@student.guc.eg' ,'pass1' ,@success output ,@type output
print @success 
print @type
------go
------exec studentRegister 'Hoda', 'Ahmed' ,'pass1', 'MET', 1, 'hoda.desouki@student.guc.eg','Sherouk City'
------go
--select *
--from PostGradUser


--go
--insert into GUCStudentPhoneNumber values( 3,'01018928328')
--go
go
insert into GUCStudentPhoneNumber values( '01018928328',3)
go
exec addMobile 4,'0103133232'

declare @success bit
exec AddProgressReport 3,'1/1/2022', 3 ,12 , @success output
print @success
--go
--drop proc linkPubThesis
--@PubID int, @thesisSerialNo int
--as
--declare @thesisdate date
--if(exists(
--select *
--From thesis T
--where T.serialNumber=@thesisdate and T.endDate>CURRENT_TIMESTAMP
--))
--insert into ThesisHasPublication values(@thesisSerialNo,@PubID)
