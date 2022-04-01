CREATE DATABASE web_student_tracker
GO

USE web_student_tracker
GO

CREATE TABLE [dbo].[student]
(
	id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	firstName nvarchar(50) NULL,
	lastName nvarchar(50) NULL,
	email nvarchar(100) NULL,
)
GO

INSERT INTO [dbo].[student] ([firstName], [lastName], [email]) 
VALUES 
(N'nguyen', N'van a', N'nguyenvana@code.com'),
(N'tran', N'thi b', N'tranthib@code.com'),
(N'vo', N'minh c', N'vominhc@code.com'),
(N'pham', N'thanh d', N'phamthanhd@code.com'),
(N'phan', N'to e', N'phantoe@code.com')
GO