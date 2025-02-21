USE [crudangular]
GO
/****** Object:  StoredProcedure [dbo].[search]    Script Date: 8/6/2018 4:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[search]
 @name varchar(200)
as
begin 
select firstname from employee where firstname like  '%'+@name+'%'
end
GO
/****** Object:  StoredProcedure [dbo].[usp_emp_get]    Script Date: 8/6/2018 4:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[usp_emp_get]
as
begin
select * from employee
end
GO
/****** Object:  Table [dbo].[employee]    Script Date: 8/6/2018 4:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[empid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](20) NULL,
	[lastname] [varchar](20) NULL,
	[designation] [varchar](10) NULL,
	[empcode] [int] NULL,
	[email] [varchar](30) NULL,
	[password] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[empid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/6/2018 4:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rolename] [varchar](30) NULL,
	[createdby] [varchar](30) NULL,
	[updatedby] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[student]    Script Date: 8/6/2018 4:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL,
	[dob] [datetime] NULL,
	[contact] [int] NULL,
	[photo] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/6/2018 4:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NULL,
	[email] [varchar](40) NULL,
	[password] [varchar](20) NULL,
	[roleid] [int] NULL,
	[createdby] [varchar](30) NULL,
	[updatedby] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (22, N'riyaa', N'sachan ', N'developer', 103, N'riya@yahoo.in', N'riya123')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (64, N'trisa', N'roy', N'accounts', 106, N'trisa@gamil.com', N'riya123')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (65, N'ankit', N'agnihotri', N'developerf', 107, N'ankit@gmail.com', N'riya123')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (115, N'a', N'a', NULL, NULL, N'm@gmail.com', N'123e')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (116, N'hh', N'ff', NULL, NULL, N'ff@yaoo', N'jk78')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (117, N'mehul', N'kumar', NULL, NULL, N'mehul@yahoo', N'1234')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (118, N'maya', N'maya', N'developer', 103, N'm@yahoo', N'1234')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (119, N'a', N'aa', NULL, NULL, N'ram@yahoo', N'rtfhrryf')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (120, N'a', N'agnihotri', NULL, 103, N'riya@yahoo.', N'uyt')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (121, N'aksha', N'agnihotri', NULL, NULL, N'w@gmail.', N'iiii')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (122, N'nbfgvh', N'jghj', NULL, NULL, N'jghfjh', N'jhgj')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (123, N'ankit', N'a', NULL, NULL, N'jh', N'fj')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (124, N'a', N'agnihotri', NULL, NULL, N'gfgf', N'xzxz')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (126, N'abhi', N'raj', NULL, NULL, N'a@gmail.com', N'123')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (127, N'a', N'aa', NULL, NULL, N'fff', N'f')
INSERT [dbo].[employee] ([empid], [firstname], [lastname], [designation], [empcode], [email], [password]) VALUES (128, N'a', N'agnihotri', NULL, NULL, N'aE@goole.in', N'd')
SET IDENTITY_INSERT [dbo].[employee] OFF
