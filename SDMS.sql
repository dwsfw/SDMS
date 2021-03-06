USE [SDMS]
GO
/****** Object:  Table [dbo].[Dorm]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dorm](
	[LouNum] [nvarchar](50) NOT NULL,
	[DormNum] [nchar](10) NOT NULL,
	[AllowNum] [int] NOT NULL,
	[UsedNum] [int] NOT NULL,
 CONSTRAINT [PK_Dorm] PRIMARY KEY CLUSTERED 
(
	[DormNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staff](
	[Code] [varchar](50) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Birth] [date] NOT NULL,
	[Sex] [nchar](10) NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [nchar](10) NULL,
	[Managenment] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Repair]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repair](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DormNum] [nchar](10) NOT NULL,
	[Goods] [nvarchar](50) NOT NULL,
	[Why] [nvarchar](50) NULL,
	[CommitDate] [date] NOT NULL,
	[ResolutionDate] [date] NULL,
	[Money] [decimal](18, 2) NULL,
	[ReasonsForUncompletion] [nvarchar](500) NULL,
 CONSTRAINT [PK_Repair] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Admin] ON
INSERT [dbo].[Admin] ([Id], [Name], [PassWord]) VALUES (1, N'admin', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
/****** Object:  Table [dbo].[WaterAndElectricity]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WaterAndElectricity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DormNum] [nchar](10) NOT NULL,
	[Mouth] [varchar](50) NOT NULL,
	[UseElectricity] [decimal](5, 2) NULL,
	[EMoney] [decimal](5, 2) NULL,
	[UseWater] [decimal](5, 2) NULL,
	[WMoney] [decimal](5, 2) NULL,
 CONSTRAINT [PK_WaterAndElectricity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Code] [varchar](50) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[Sex] [nchar](10) NULL,
	[Phone] [nchar](11) NULL,
	[DormNum] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lease]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lease](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DormNum] [nchar](10) NOT NULL,
	[LeaseGood] [nvarchar](50) NOT NULL,
	[LeaseDate] [date] NOT NULL,
	[ReturnDate] [date] NULL,
	[LeaseMoney] [decimal](5, 2) NULL,
 CONSTRAINT [PK_Lease] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DormHygiene]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DormHygiene](
	[Id] [int] NOT NULL,
	[DormNum] [nchar](10) NULL,
	[InspectionTime] [date] NULL,
	[Situation] [nchar](10) NULL,
 CONSTRAINT [PK_DormHygiene] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangeDorm]    Script Date: 12/10/2020 11:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChangeDorm](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [varchar](50) NOT NULL,
	[OldDormNum] [nchar](10) NOT NULL,
	[NewDormNum] [nchar](10) NOT NULL,
	[Why] [nvarchar](2000) NULL,
	[Begindate] [date] NOT NULL,
	[FinishDate] [date] NULL,
	[AgreeDate] [date] NULL,
	[StaffOpinion] [bit] NULL,
	[AdminOpinion] [bit] NULL,
 CONSTRAINT [PK_ChangeDorm] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_WaterAndElectricity_Dorm]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[WaterAndElectricity]  WITH CHECK ADD  CONSTRAINT [FK_WaterAndElectricity_Dorm] FOREIGN KEY([DormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[WaterAndElectricity] CHECK CONSTRAINT [FK_WaterAndElectricity_Dorm]
GO
/****** Object:  ForeignKey [FK_Student_Dorm]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Dorm] FOREIGN KEY([DormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Dorm]
GO
/****** Object:  ForeignKey [FK_Lease_Dorm]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[Lease]  WITH CHECK ADD  CONSTRAINT [FK_Lease_Dorm] FOREIGN KEY([DormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[Lease] CHECK CONSTRAINT [FK_Lease_Dorm]
GO
/****** Object:  ForeignKey [FK_DormHygiene_Dorm]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[DormHygiene]  WITH CHECK ADD  CONSTRAINT [FK_DormHygiene_Dorm] FOREIGN KEY([DormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[DormHygiene] CHECK CONSTRAINT [FK_DormHygiene_Dorm]
GO
/****** Object:  ForeignKey [FK_ChangeDorm_Dorm]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[ChangeDorm]  WITH CHECK ADD  CONSTRAINT [FK_ChangeDorm_Dorm] FOREIGN KEY([OldDormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[ChangeDorm] CHECK CONSTRAINT [FK_ChangeDorm_Dorm]
GO
/****** Object:  ForeignKey [FK_ChangeDorm_Dorm1]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[ChangeDorm]  WITH CHECK ADD  CONSTRAINT [FK_ChangeDorm_Dorm1] FOREIGN KEY([NewDormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[ChangeDorm] CHECK CONSTRAINT [FK_ChangeDorm_Dorm1]
GO
/****** Object:  ForeignKey [FK_ChangeDorm_Student]    Script Date: 12/10/2020 11:42:45 ******/
ALTER TABLE [dbo].[ChangeDorm]  WITH CHECK ADD  CONSTRAINT [FK_ChangeDorm_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Code])
GO
ALTER TABLE [dbo].[ChangeDorm] CHECK CONSTRAINT [FK_ChangeDorm_Student]
GO
