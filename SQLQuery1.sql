CREATE DATABASE TaskSQL_1

USE TaskSQL_1


CREATE TABLE Students
(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(25) NOT NULL,
	Surname NVARCHAR(25) DEFAULT 'XXX',
	Age TINYINT CHECK(Age>=18),
	AvgPoint FLOAT CHECK(AvgPoint>0)
)

INSERT INTO Students([Name],Surname,Age,AvgPoint)
VALUES(N'İbrahim',N'Xuşməndi',20,98.5),
(N'Qərib',N'Qəribzadə',19,45.5),
(N'Şahin',N'Əlizadə',21,85.3)


SELECT * FROM Students WHERE AvgPoint>51

SELECT * FROM Students WHERE AvgPoint BETWEEN 52 AND 89

SELECT * FROM Students WHERE [Name] LIKE 'i%' AND [NAME] LIKE '%m'