USE [SDMS]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 12/02/2020 08:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Birth] [date] NOT NULL,
	[Sex] [nchar](10) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [nchar](11) NOT NULL,
	[Management] [nvarchar](50) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repair]    Script Date: 12/02/2020 08:58:35 ******/
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
 CONSTRAINT [PK_Repair] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lease]    Script Date: 12/02/2020 08:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lease](
	[Id] [int] NULL,
	[DormNum] [nchar](10) NULL,
	[LeaseGood] [nvarchar](50) NULL,
	[LeaseDate] [date] NULL,
	[ReturnDate] [date] NULL,
	[LeaseMoney] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dorm]    Script Date: 12/02/2020 08:58:35 ******/
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
/****** Object:  Table [dbo].[Admin]    Script Date: 12/02/2020 08:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PassWord] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WaterAndElectricity]    Script Date: 12/02/2020 08:58:35 ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 12/02/2020 08:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Code] [nvarchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[Sex] [nchar](10) NOT NULL,
	[Phone] [nchar](11) NOT NULL,
	[DormNum] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Staff_Staff]    Script Date: 12/02/2020 08:58:35 ******/
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Staff] FOREIGN KEY([Code])
REFERENCES [dbo].[Staff] ([Code])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Staff]
GO
/****** Object:  ForeignKey [FK_Student_Dorm]    Script Date: 12/02/2020 08:58:35 ******/
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Dorm] FOREIGN KEY([DormNum])
REFERENCES [dbo].[Dorm] ([DormNum])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Dorm]
GO
