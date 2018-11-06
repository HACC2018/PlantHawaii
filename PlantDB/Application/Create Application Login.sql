--Use master database
USE MASTER;
CREATE LOGIN Application WITH PASSWORD = 'P@s$w0rD1!';

CREATE USER application FOR LOGIN Application;
GO

--Use PlantHawaii database;
CREATE USER application FOR LOGIN Application;
CREATE ROLE application_users;
ALTER ROLE application_users ADD MEMBER application;

