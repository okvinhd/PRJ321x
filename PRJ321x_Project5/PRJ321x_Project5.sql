USE [master]
GO
CREATE DATABASE [Mailprj5]
GO
USE [Mailprj5]
GO
CREATE TABLE dbo.Account
(
	[id] int,
	username varchar(255),
	[password] varchar(255),
)
GO

INSERT INTO Account(id,username,[password])
VALUES ('1','vinhd1','vinhd1')