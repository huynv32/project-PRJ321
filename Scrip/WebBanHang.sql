USE [master]
GO
/****** Object:  Database [WebBanhang]    Script Date: 3/11/2021 4:55:44 PM ******/
CREATE DATABASE [WebBanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebBanhang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebBanhang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebBanhang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebBanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebBanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebBanhang] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanhang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanhang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebBanhang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebBanhang] SET QUERY_STORE = OFF
GO
USE [WebBanhang]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AoDong]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AoDong](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aoHe]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aoHe](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[fullname] [nvarchar](255) NULL,
	[username] [nvarchar](255) NOT NULL,
	[email] [varchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[repassword] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dongHo]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dongHo](
	[id] [nvarchar](6) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nchar](10) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
 CONSTRAINT [PK_dongHo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] NOT NULL,
	[pid] [nvarchar](6) NULL,
	[size] [nvarchar](5) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[numberPhone] [int] NULL,
	[address] [nvarchar](250) NULL,
	[username] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quanAu]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanAu](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quanBo]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanBo](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[image] [nvarchar](30) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nvarchar](5) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[soMi]    Script Date: 3/11/2021 4:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soMi](
	[id] [varchar](6) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[price] [float] NULL,
	[color] [nvarchar](30) NULL,
	[size] [nchar](10) NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nchar](40) NULL,
 CONSTRAINT [PK_soMi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'anh', N'123')
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'huy', N'123')
GO
INSERT [dbo].[Admin] ([username], [password]) VALUES (N'van', N'123')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h10', N'??o Ph??ng', N'img/ao/h10.jpg', 300000, N'tr???ng,v??ng xanh', N'?????', N'ch???t ?????p', N'c??n h??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h11', N'Ph??ng c?? c??? ', N'img/ao/h11.jpg', 300002, N'h???ng', N'?????', N'ch???t ok', N'c??n h??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h12', N'ao ph????ng ??????????p', N'img/ao/h12.jpg', 1400000, N'xanh ??????????', N'??????????', N'h????ng ??????????p', N'C????n H????ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h2', N'??o Ph??ng', N'img/ao/h2.jpg', 230000, N'tr???ng', N'?????', N'r???t ?????p', N'C??n H??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h3', N'??o Ph??ng', N'img/ao/h3.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', N'C??n H??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h4', N'??o Ph??ng', N'img/ao/h4.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', N'C??n H??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h5', N'??o Ph??ng', N'img/ao/h5.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', N'H?t H??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h6', N'??o Ph??ng', N'img/ao/h6.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', N'H?t H??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h7', N'??o Ph??ng', N'img/ao/h7.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', N'h?t h??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h8', N'??o Ph??ng', N'img/ao/h8.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', N'c??n h??ng')
GO
INSERT [dbo].[aoHe] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'h9', N'??o Ph??ng', N'img/ao/h9.jpg', 230000, N'tr???ng', N'????? ', N'r???t ?????p', NULL)
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguy????
n v????n huy', N'123', N'huynvhe141080@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguy???n th??? ng???c ??nh', N'anh', N'anhntn', N'16082000', N'16082000')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguy???n van huy', N'huynv', N'huy465773@gmail.com', N'03022000', N'03022000')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguy????
n v????n huy', N'huynvhe', N'huynvhe141080@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'quang', N'quang123', N'quangdn@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[Customer] ([fullname], [username], [email], [password], [repassword]) VALUES (N'nguy????
n v????n huy', N'sa', N'huynvhe141080@fpt.edu.vn', N'123', N'123')
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh1', N'?????ng H??? Hublot', N'/img/Phukien/dh1.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh2', N'?????ng H??? Hublot', N'/img/Phukien/dh2.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh3', N'?????ng H??? Hublot', N'/img/Phukien/dh3.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh4', N'?????ng H??? Hublot', N'/img/Phukien/dh4.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh5', N'?????ng H??? Hublot', N'/img/Phukien/dh5.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh6', N'?????ng H??? Hublot', N'/img/Phukien/dh6.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh7', N'?????ng H??? Hublot', N'/img/Phukien/dh7.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[dongHo] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'dh8', N'?????ng H??? Hublot', N'/img/Phukien/dh8.jpg', 1200000, N'V??ng Tr???ng', NULL, N'H??ng Vi???t Nam Ch???t L?????ng Cao', NULL)
GO
INSERT [dbo].[Order] ([id], [pid], [size], [price], [quantity], [numberPhone], [address], [username]) VALUES (1, N'sm1', N'xl', 200000, 1, 943189438, N'h??? m??? - h?? n???i', N'huy')
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa1', N'Qu???n ??u Nam', N'img/quan/qa1.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa2', N'Qu???n ??u Nam', N'img/quan/qa2.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa3', N'Qu???n ??u Nam', N'img/quan/qa3.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa4', N'Qu???n ??u Nam', N'img/quan/qa4.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa5', N'Qu???n ??u Nam', N'img/quan/qa5.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa6', N'Qu???n ??u Nam', N'img/quan/qa6.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa7', N'Qu???n ??u Nam', N'img/quan/qa7.jpg', 400000, N'Xanh ??en ', N'27-35', N'Qu???n ??u d??ng ?????p', NULL)
GO
INSERT [dbo].[quanAu] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qa8', N'Qu???n ??u Nam', N'img/quan/qa8.jpg', 400000, N'Xanh ??en ', N'27-35', NULL, NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb1', N'Qu???n B?? Nam ', N'img/quan/qb1.jpg', 300000, N'Xanh ??en ', N'?????', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb10', N'Qu??????n B???? ??????????p', N'qb9.jpg', 920000, N'xanh ????o', N'??????????', N'??????????p', N'c????n h????ng')
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb2', N'Qu???n B?? Nam ', N'img/quan/qb2.jpg', 300000, N'Xanh ??en ', N'28-34', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb3', N'Qu???n B?? Nam ', N'img/quan/qb3.jpg', 300000, N'Xanh ??en ', N'28-34', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb4', N'Qu???n B?? Nam ', N'img/quan/qb4.jpg', 300000, N'Xanh ??en ', N'28-34', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb5', N'Qu???n B?? Nam ', N'img/quan/qb5.jpg', 300000, N'Xanh ??en ', N'28-34', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb6', N'Qu???n B?? Nam ', N'img/quan/qb6.jpg', 300000, N'Xanh ??en ', N'28-34', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb7', N'Qu???n B?? Nam ', N'img/quan/qb7.jpg', 300000, N'Xanh ??en ', N'28-34', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[quanBo] ([ID], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'qb8', N'Qu???n B?? Nam ', N'img/quan/qb8.jpg', 300000, N'Tr???ng', N'28-30', N'Qu???n B?? r??ch g???i phong c??ch ', NULL)
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm1', N'S?? mi burberry', N'img/ao/sm1.jpg', 320000, N'?????', N'xl        ', N'm???c tho???i m??i', N'c??n h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm11', N'so mi', N'img/ao/sm11.jpg', 14000000, N'xanh ????o', N'xl        ', N'good', N's                                       ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm15', N's?? mi ?????p ', N'img/ao/sm15.jpg', 14000000, N'?????', N'xanh ?????   ', N'?????p vl', N'C??n H??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm2', N'S?? mi burberry', N'img/ao/sm2.jpg', 320000, N'tr???ng', N's         ', N'm???c tho???i m??i', N'c??n h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm3', N'S?? mi burberry', N'img/ao/sm3.jpg', 320000, N'?????', N'm         ', N'm???c tho???i m??i', N'c??n h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm4', N'S?? mi burberry', N'img/ao/sm4.jpg', 320000, N'tr???ng', N'?????        ', N'm???c tho???i m??i', N'h???t h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm5', N'S?? mi burberry', N'img/ao/sm5.jpg', 320000, N'?????', N'?????        ', N'm???c tho???i m??i', N'h???t h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm6', N'S?? mi burberry', N'img/ao/sm6.jpg', 320000, N'tr???ng', N'xl        ', N'm???c tho???i m??i', N'c??n h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm7', N'S?? mi burberry', N'img/ao/sm7.jpg', 320000, N'tr???ng', N'l         ', N'm???c tho???i m??i', N'h???t h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm8', N's?? mi ', N'img/ao/sm8.jpg', 200000, N'xanh', N'??         ', N'm???c tho???i m??i', N'c??n h??ng                                ')
GO
INSERT [dbo].[soMi] ([id], [name], [image], [price], [color], [size], [describe], [status]) VALUES (N'sm9', N's???? mi ??????????p ', N'img/ao/sm9.jpg', 140000, N'xanh ??????????', N'??????????     ', N'??????????p', N'c????n h????ng                              ')
GO
USE [master]
GO
ALTER DATABASE [WebBanhang] SET  READ_WRITE 
GO
