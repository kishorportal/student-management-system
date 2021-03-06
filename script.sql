 
DROP DATABASE EmployeeDB
GO
CREATE DATABASE EmployeeDB
GO
USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/28/2019 9:21:51 PM ******/

GO
 GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/28/2019 9:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[EMPCode] [nvarchar](100) NULL,
	[Mobile] [nvarchar](100) NULL,
	[Position] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/28/2019 9:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [bigint] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Gender] [nvarchar](100) NULL,
	[Grade] [nvarchar](100) NULL,
	[SchoolCode] [nvarchar](100) NULL,
	[SchoolName] [nvarchar](100) NULL,
 CONSTRAINT [PRK] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [FullName], [EMPCode], [Mobile], [Position]) VALUES (1, N'Eshwar', N'103496', N'9989984775', N'PSE')
INSERT [dbo].[Employee] ([EmployeeID], [FullName], [EMPCode], [Mobile], [Position]) VALUES (2, N'Eshwar', N'103495', N'9989984775', N'SSE')
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentID], [FullName], [Gender], [Grade], [SchoolCode], [SchoolName]) VALUES (1, N'zxczxc', N'cv', N'dfgdf', N'sffdf', N'DEFAULT')
INSERT [dbo].[Student] ([StudentID], [FullName], [Gender], [Grade], [SchoolCode], [SchoolName]) VALUES (2, N'sdfsdf', N'sdfsfd', N'sdfsdf', N'dsfsfd', N'sdfsdf')
SET IDENTITY_INSERT [dbo].[Student] OFF
