-- CREATE TABLE --
CREATE DATABASE City_Hospital;
USE City_Hospital;
CREATE TABLE Patients(
PatientID INT,
Patient_Name VARCHAR (50),
Age INT,
Gender VARCHAR (20) CHECK (GENDER IN ('M','F')),
Admission_Date DATE );
SELECT * FROM Patients;

-- ADD COLUMN --
ALTER TABLE Patients
ADD Doctor_Assigned VARCHAR (50);

-- MODIFY COLUMN --
ALTER TABLE Patients
MODIFY Patient_Name VARCHAR (100);

-- RENAME TABLE --
ALTER TABLE Patients
RENAME Patient_Info;

-- TRUNCATE --
TRUNCATE TABLE Patient_Info;
SELECT * FROM Patient_Info;

-- DROP --
DROP TABLE Patient_Info;










