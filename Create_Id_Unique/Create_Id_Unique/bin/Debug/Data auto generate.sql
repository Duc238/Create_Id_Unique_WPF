USE [master]
GO
/****** Object:  Database [CreateIdUnique]    Script Date: 10/15/2024 10:31:14 AM ******/
CREATE DATABASE [CreateIdUnique]
GO
USE [CreateIdUnique]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/15/2024 10:31:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [nvarchar](20) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'1', N'TINH CHẤT ĐẬM ĐẶC O’ YOUNG HSCM', CAST(150000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'2', N'Kem dưỡng chống lão hóa DERMEDEN (Night Protocole Intense Night Cream)', CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'3', N'tinh chất tế bào gốc Oyoung Ampoule', CAST(50000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'4', N'serum dưỡng mặt ban đêm Living Nature Advanced Renewal Night', CAST(110000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'PRD26098BBCDA854419', N'Bì cuốn chay', CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'PRD5060A73E128142A6', N'Chả giò chay', CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [ProductName], [Price]) VALUES (N'PRDF4EA3D41A9C94751', N'Chả chay', CAST(10000.00 AS Decimal(18, 2)))
GO
USE [master]
GO
ALTER DATABASE [CreateIdUnique] SET  READ_WRITE 
GO
