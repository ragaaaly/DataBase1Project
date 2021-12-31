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