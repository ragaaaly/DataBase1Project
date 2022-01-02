use post;
--student register
--supervisor register

INSERT INTO Thesis (field, type, title, startDate, endDate, noOfExtensions) 
VALUES ('MET', 'PhD', 'Object Detection and Tracking using Stereo Cameras', '1/1/2019','1/1/2024', 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, noOfExtensions) 
VALUES ('IET', 'M', 'Camera-Lidar Fusion for Tracking and Classification','1/1/2019','1/1/2024', 0 )

insert into GUCianStudentRegisterThesis values(1,3,1)
insert into NonGUCianStudentRegisterThesis values(2,3,3)


insert into Course (fees, creditHours, code) values (5000,5,'CSEN501')
insert into Course (fees, creditHours, code) values (6000,6,'DSD')
insert into Course (fees, creditHours, code) values (8000,8,'MATH')
insert into Course (fees, creditHours, code) values (4000,4,'PHYS')

insert into NonGucianStudentTakeCourse (sid, cid, grade) values (2, 1, 60.2)
insert into NonGucianStudentTakeCourse (sid, cid, grade) values (2, 2, 80)
insert into NonGucianStudentTakeCourse (sid, cid, grade) values (2, 3, 88)
insert into NonGucianStudentTakeCourse (sid, cid, grade) values (2, 4, 40)

insert into PostGradUser values ('admin@gmail.com','admin')
insert into Admin values (7)



