--15 Theses of both types
INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'M','Monocular Camera-Based Depth Estimation', '1/1/2019','1/1/2021', '12/12/2020', 99.00, 0 )

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Autonomous Driving Using Smart Roads', '1/1/2019','1/1/2021', '12/12/2020', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'M', 'Polite Autonomous Cars: Avoiding Congestion','1/1/2019','1/1/2022', '12/12/2020', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Engineering', 'Master', 'Retrospective Sensing - The Case of Smart Roads', '1/1/2019','1/1/2021', '12/12/2020', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Engineering', 'Master', 'Edge Computing for Autonomous Driving', '1/1/2019','1/1/2021', '12/12/2020', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noOfExtensions) 
VALUES ('Engineering', 'PhD', 'Object Detection and Tracking using Stereo Cameras', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Engineering', 'PhD', 'Camera-Lidar Fusion for Tracking and Classification','1/1/2019','1/1/2024', '12/12/2023', 99.00, 0 )

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Engineering', 'PhD', 'The Effects of Personality Traits on Rumors','1/1/2019','1/1/2024', '12/12/2023', 99.00, 0 )

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Engineering', 'PhD','Perception-Based Local Safety', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Engineering', 'PhD', 'Overtake Maneuver Detection', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Management', 'Master', 'Effect of values based leadership in Egypt','1/1/2019','1/1/2021', '12/12/2020', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Management', 'Master', 'HRM functions and abusive supervision', '1/1/2019','1/1/2021', '12/12/2020', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Management', 'PhD', 'The effect of leadership style on job satisfaction', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Management', 'PhD', 'Nepotism and Wasta in The Workplace', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

INSERT INTO Thesis (field, type, title, startDate, endDate, defenseDate, grade, noExtenstion) 
VALUES ('Management', 'PhD', 'Impact of technology on recruitment', '1/1/2019','1/1/2024', '12/12/2023', 99.00, 0)

--13 Users with the different types
--Students
GO
EXEC StudentRegister 'Mohamed','Kamal','TOS38UTD7TE','Engineering','1','mohamed.kamal@gmail.com','806-7950 Mauris Road'
GO
EXEC StudentRegister 'Ahmed','Hussein','REV58RRD2SO','Engineering','1','ahmed.hussein@gmail.com','751-3821 Gravida St.'
GO
EXEC StudentRegister 'Amgad','Tarek','VCM51FWL2TQ','Engineering','1','amgad.tarek@gmail.com','8042 Sem, Rd.'
GO
EXEC StudentRegister 'Mohab','Mohamed','QLI57RGH2WJ','Management','0','mohab.mohamed@gmail.com','Ap #488-9265 Consequat Street'
GO
EXEC StudentRegister 'Hana','Gamal','SRS05DIS4KH','Management','0','hana.gamal@gmail.com','P.O. Box 918, 2961 In Road'
GO
EXEC StudentRegister 'Passant','Mostafa","FEC04GFI0ZV','Management','1','passant.mostafa@gmail.com','880-961 Nullam Road'
--Supervisors 
GO
EXEC SupervisorRegister 'Abdelaziz','Mehaseb', 'AKF10BVN0OV','Engineering','abdelaziz.mehaseb@gmail.com'
GO
EXEC SupervisorRegister 'Mervat','Abuelkheir', 'PBB83BOU3OF','Engineering','mervat.abuelkheir@gmail.com'
GO
EXEC SupervisorRegister 'Ahmed','Amin', 'OGS84IPG4IH','Management','ahmed.amin@gmail.com'
GO
EXEC SupervisorRegister 'Amna','Youssef', 'WXW45IKY9OJ','Engineering','amna.youssef@gmail.com'
--Admins
Go
create procedure AdminRegister
@password varchar(20),
@email varchar(50)
AS
insert into PostGradUser(email,password) values(@email,@password)
insert into Admin(id)values(SCOPE_IDENTITY())
GO
EXEC AdminRegister 'YDF18IEC5BB', 'admin1@gmail.com'
GO
EXEC AdminRegister 'VPD80EEY0PD', 'admin2@gmail.com'
GO
EXEC AdminRegister 'BHU78BSO2XD', 'admin3@gmail.com'

--GUCianProgressReport (sid, no, date, eval, state, thesisSerialNumber, supid)
--NonGUCianProgressReport (sid, no, date, eval, state, thesisSerialNumber, supid)

--Progress reports filled and evaluated

----Add and fill my progress report(s).

--Name: AddProgressReport
--Input: thesisSerialNo int, progressReportDate date
--Output: nothing

--Name: FillProgressReport
--Input: thesisSerialNo int, progressReportNo int, state int, description varchar(500)

--Name: EvaluateProgressReport
--Input: supervisorID int, thesisSerialNo int, progressReportNo int, evaluation int
--Output: Nothing

--I think we should link the thesis to student first 
--GUCianStudentRegisterThesis (sid, supid, serial_no)
--NonGUCianStudentRegisterThesis (sid, supid, serial_no) 
GO
EXEC AddProgressReport '1','2/2/2019'
GO
EXEC FillProgressReport '1','1','1','This is a description'
GO
EXEC EvaluateProgressReport 
