USE [KayisiBank]
GO
/****** Object:  Table [dbo].[tbl_coins]    Script Date: 30.05.2021 21:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_coins](
	[kID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[kurekCoin] [float] NULL,
	[puanCoin] [float] NULL,
	[kayisiCoin] [float] NULL,
	[haciCoin] [float] NULL,
	[hayalCoin] [float] NULL,
 CONSTRAINT [PK_tbl_coins] PRIMARY KEY CLUSTERED 
(
	[kID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_islem]    Script Date: 30.05.2021 21:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_islem](
	[islemID] [int] NOT NULL,
	[islemTutar] [money] NOT NULL,
	[islemTarih] [datetime] NULL,
	[islemAciklama] [nvarchar](100) NULL,
	[username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_islem] PRIMARY KEY CLUSTERED 
(
	[islemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_login]    Script Date: 30.05.2021 21:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_login](
	[kID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[date] [datetime] NULL,
	[birthday] [datetime] NULL,
	[mail] [nvarchar](50) NULL,
	[phonenumber] [nchar](10) NULL,
	[ibankey] [nchar](10) NULL,
	[moneyy] [int] NULL,
	[krediSecenek] [int] NULL,
	[odenenBorc] [int] NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[kID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_odemeler]    Script Date: 30.05.2021 21:04:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_odemeler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kira] [int] NULL,
	[okulHarci] [int] NULL,
	[krediKartiBorcu] [int] NULL,
	[elektrik] [int] NULL,
	[su] [int] NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_odemeler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON 

INSERT [dbo].[tbl_login] ([kID], [username], [password], [date], [birthday], [mail], [phonenumber], [ibankey], [moneyy], [krediSecenek], [odenenBorc]) VALUES (29, N'kırmızı', N'827ccb0eea8a706c4c34a16891f84e7b', CAST(N'2021-05-30T00:00:00.000' AS DateTime), CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'kırmızı@gmail.com', N'5065465465', N'TR-3822   ', 1105, 1, 8895)
INSERT [dbo].[tbl_login] ([kID], [username], [password], [date], [birthday], [mail], [phonenumber], [ibankey], [moneyy], [krediSecenek], [odenenBorc]) VALUES (30, N'mavi', N'827ccb0eea8a706c4c34a16891f84e7b', CAST(N'2021-05-30T00:00:00.000' AS DateTime), CAST(N'2021-05-30T00:00:00.000' AS DateTime), N'.@gmail.com', N'1554654654', N'TR-4865   ', 0, 0, 0)
INSERT [dbo].[tbl_login] ([kID], [username], [password], [date], [birthday], [mail], [phonenumber], [ibankey], [moneyy], [krediSecenek], [odenenBorc]) VALUES (38, N'samet', N'827ccb0eea8a706c4c34a16891f84e7b', CAST(N'2021-05-30T00:00:00.000' AS DateTime), CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'samet@gmail.com', N'5465465465', N'TR-4017   ', 0, 0, 0)
INSERT [dbo].[tbl_login] ([kID], [username], [password], [date], [birthday], [mail], [phonenumber], [ibankey], [moneyy], [krediSecenek], [odenenBorc]) VALUES (39, N'samet123', N'827ccb0eea8a706c4c34a16891f84e7b', CAST(N'2021-05-30T00:00:00.000' AS DateTime), CAST(N'2021-05-10T00:00:00.000' AS DateTime), N'samet@gmail.com', N'5456654654', N'TR-8519   ', 5818, 0, 14232)
SET IDENTITY_INSERT [dbo].[tbl_login] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_odemeler] ON 

INSERT [dbo].[tbl_odemeler] ([ID], [kira], [okulHarci], [krediKartiBorcu], [elektrik], [su], [username]) VALUES (19, 1400, 830, 0, 105, 30, N'samet')
INSERT [dbo].[tbl_odemeler] ([ID], [kira], [okulHarci], [krediKartiBorcu], [elektrik], [su], [username]) VALUES (20, 1400, 830, 0, 105, 0, N'samet123')
SET IDENTITY_INSERT [dbo].[tbl_odemeler] OFF
GO
