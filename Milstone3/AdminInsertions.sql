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

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Object Detection and Tracking using Stereo Cameras', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Camera-Lidar Fusion for Tracking and Classification','1/1/2019','1/1/2024', '12/12/2023', 99.00, 0 )

go
CREATE Proc AdminUpdateExtension
@ThesisSerialNo int,
@success int output
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
exec AdminUpdateExtension 2 ,@success output
print @success

go
CREATE Proc AdminIssueThesisPayment
@ThesisSerialNo int,
@amount decimal,
@noOfInstallments int,
@fundPercentage decimal
As
if(exists(select * from Thesis where serialNumber=@ThesisSerialNo))
begin
insert into Payment(amount,noOfInstallments,fundPercentage)
values(@amount,@noOfInstallments,@fundPercentage)
declare @id int
SELECT @id=SCOPE_IDENTITY()
update Thesis
set payment_id=@id
where serialNumber=@ThesisSerialNo
end
else 