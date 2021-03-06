USE [20190305022]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5.05.2022 12:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 5.05.2022 12:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 5.05.2022 12:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Start] [varchar](50) NOT NULL,
	[Destination] [varchar](50) NOT NULL,
	[gender] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passangers]    Script Date: 5.05.2022 12:18:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passangers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [varchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Password]) VALUES (N'barbaros', N'1234')
INSERT [dbo].[Admin] ([Username], [Password]) VALUES (N'ali', N'1234')
GO
INSERT [dbo].[Gender] ([Gender]) VALUES (N'Male')
INSERT [dbo].[Gender] ([Gender]) VALUES (N'Female')
GO
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Istanbul', N'Istanbul', N'Female')
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Ankara', N'Ankara', N'Male')
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Izmir', N'Izmir', NULL)
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Hatay', N'Hatay', NULL)
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Balıkesir', N'Balıkesir', NULL)
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Bursa', N'Bursa', NULL)
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Adana', N'Adana', NULL)
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Urfa', N'Urfa', NULL)
INSERT [dbo].[Locations] ([Start], [Destination], [gender]) VALUES (N'Kayseri', N'Kayseri', NULL)
GO
SET IDENTITY_INSERT [dbo].[Passangers] ON 

INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (1, N'saddsadsa', 1234, CAST(N'2001-02-23' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (2, N'saddsadsa', 1234, CAST(N'2010-01-01' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (3, N'asdsaddsa', 1234123, CAST(N'2001-02-23' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (4, N'barbaros', 123213, CAST(N'2022-05-03' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (5, N'44', 4, CAST(N'2010-02-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (6, N'barbaros', 4444, CAST(N'2022-05-02' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (7, N'muharrem ince', 66600, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (16, N'sontest', 7777, CAST(N'2022-05-28' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (19, N'barbaros', 66666, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (12, N'aaaqqqbar', 123213, CAST(N'2022-05-12' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (22, N'barbaros', 213123, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (23, N'barbaros', 213123, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (24, N'barbaros', 213123, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (29, N'barbaros', 1234, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (30, N'barbaros', 2134, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (31, N'barbaros', 132123, CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (32, N'', 0, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (33, N'barbaros', 213, CAST(N'2022-05-19' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (34, N'lasttry', 544, CAST(N'2022-05-02' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (35, N'barbars', 33, CAST(N'2022-05-12' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (9, N'barbaros baran', 120, CAST(N'2022-05-03' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (11, N'barbaros baran', 222, CAST(N'2022-05-18' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (13, N'barbaros', 1234, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (15, N'barbaros baran', 1234, CAST(N'2022-05-11' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (17, N'denemeson', 99, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (18, N'barbaros', 1234, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (20, N'barbaros ', 111, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (21, N'barbaros', 1234, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (25, N'barbars', 213123, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (26, N'barbars', 213123, CAST(N'2022-05-04' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (27, N'harvester of sorrow', 27500, CAST(N'2022-09-14' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (28, N'harvester of sorrow', 27500, CAST(N'2022-09-14' AS Date))
INSERT [dbo].[Passangers] ([id], [Fullname], [Price], [Date]) VALUES (14, N'asaddsa', 1233, CAST(N'2022-05-04' AS Date))
SET IDENTITY_INSERT [dbo].[Passangers] OFF
GO
