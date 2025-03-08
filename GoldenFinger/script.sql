USE [master]
GO
/****** Object:  Database [GoldenFinger]    Script Date: 25/03/08 10:01:33 PM ******/
CREATE DATABASE [GoldenFinger]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoldenFinger', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GoldenFinger.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GoldenFinger_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GoldenFinger_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GoldenFinger] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoldenFinger].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoldenFinger] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoldenFinger] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoldenFinger] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoldenFinger] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoldenFinger] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoldenFinger] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GoldenFinger] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoldenFinger] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoldenFinger] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoldenFinger] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoldenFinger] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoldenFinger] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoldenFinger] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoldenFinger] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoldenFinger] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GoldenFinger] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoldenFinger] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoldenFinger] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoldenFinger] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoldenFinger] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoldenFinger] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GoldenFinger] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoldenFinger] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GoldenFinger] SET  MULTI_USER 
GO
ALTER DATABASE [GoldenFinger] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoldenFinger] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoldenFinger] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoldenFinger] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GoldenFinger] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GoldenFinger] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GoldenFinger] SET QUERY_STORE = ON
GO
ALTER DATABASE [GoldenFinger] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GoldenFinger]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](20) NOT NULL,
	[Description] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[Discount] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[UserID] [int] NULL,
	[StatusID] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NULL,
	[Address] [nvarchar](500) NULL,
	[Comment] [nvarchar](1000) NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [int] NULL,
	[Discontinued] [bit] NULL,
	[Image] [nvarchar](max) NULL,
	[Include] [nvarchar](max) NULL,
	[Warranty] [nvarchar](50) NULL,
	[Dimensions] [nvarchar](50) NULL,
	[SpeakerPower] [nvarchar](50) NULL,
	[StarRating] [float] NULL,
	[Weight] [nvarchar](20) NULL,
	[Describe] [ntext] NULL,
	[ReleaseDate] [date] NULL,
	[Discount] [float] NULL,
	[Status] [bit] NULL,
	[CategoryID] [int] NULL,
	[SupplierID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[HomePage] [ntext] NULL,
	[Image] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/03/08 10:01:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[BirthDay] [date] NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Grand Piano', N'Grand Piano is a premium horizontal piano known for its rich, powerful sound and responsive touch. With a large soundboard and long strings, it delivers superior tonal depth, making it ideal for concerts and professional performances. Its elegant design also adds a touch of sophistication to any space.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Upright Piano', N'Upright Piano is a vertical piano designed for compact spaces while maintaining rich sound quality. Its upright frame and shorter strings make it ideal for homes, studios, and practice rooms. With a responsive touch and elegant design, it offers a perfect balance between size and performance.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Digital Piano', N'Digital Piano is an electronic keyboard designed to replicate the sound and feel of an acoustic piano. It offers various features like weighted keys, multiple instrument sounds, and headphone support, making it ideal for practice, performance, and recording. Compact and low-maintenance, it’s a versatile choice for musicians of all levels.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Stage Piano', N'Stage Piano is a digital piano designed for live performances, offering high-quality piano sounds, robust build, and advanced connectivity options. It typically features weighted keys, customizable effects, and portability, making it ideal for professional musicians on stage and in studio settings.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Hybrid Piano', N'Hybrid Piano combines the traditional acoustic piano feel with digital technology. It features an acoustic piano body with digital sound and advanced features like silent practice mode, recording capabilities, and varied voices, offering the best of both worlds for versatile use in different settings.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Player Piano', N'Player Piano is an automatic piano that plays music by itself using pre-programmed rolls or digital files. It can reproduce performances with great accuracy, making it a unique option for enjoying piano music without a live performer. Modern player pianos often include advanced features like remote control and digital sound options.')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (13, 1, 1, CAST(7000.00 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (13, 2, 1, CAST(8000.00 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (13, 3, 2, CAST(15000.00 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (13, 4, 1, CAST(8000.00 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (14, 2, 1, CAST(8000.00 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (14, 3, 1, CAST(15000.00 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (15, 2, 1, CAST(8000.00 AS Decimal(10, 2)), CAST(0.20 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (15, 3, 2, CAST(15000.00 AS Decimal(10, 2)), CAST(0.40 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (15, 9, 1, CAST(4000.00 AS Decimal(10, 2)), CAST(0.15 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (16, 8, 1, CAST(4000.00 AS Decimal(10, 2)), CAST(0.15 AS Decimal(10, 2)))
INSERT [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES (16, 9, 1, CAST(4000.00 AS Decimal(10, 2)), CAST(0.15 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [Date], [UserID], [StatusID], [FullName], [Phone], [Address], [Comment], [TotalAmount]) VALUES (13, CAST(N'2025-03-06' AS Date), 1, 0, N'Nhữ Đình Nhật', N'0982226376', N'Hai Duong, Viet Nam', N'', CAST(33400.00 AS Decimal(10, 2)))
INSERT [dbo].[Orders] ([OrderID], [Date], [UserID], [StatusID], [FullName], [Phone], [Address], [Comment], [TotalAmount]) VALUES (14, CAST(N'2025-03-07' AS Date), 1, 0, N'nhat', N'0982226376', N'ha noi', N'hello', CAST(15400.00 AS Decimal(10, 2)))
INSERT [dbo].[Orders] ([OrderID], [Date], [UserID], [StatusID], [FullName], [Phone], [Address], [Comment], [TotalAmount]) VALUES (15, CAST(N'2025-03-07' AS Date), 1, 1, N'Nhữ Đình Nhật', N'0982226376', N'Hai Duong, Viet Nam', N'htht', CAST(27800.00 AS Decimal(10, 2)))
INSERT [dbo].[Orders] ([OrderID], [Date], [UserID], [StatusID], [FullName], [Phone], [Address], [Comment], [TotalAmount]) VALUES (16, CAST(N'2025-03-08' AS Date), 1, 1, N'Nhữ Đình Nhật', N'0982226376', N'Hai Duong, Viet Nam', N'346', CAST(6800.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (0, N'Canceled')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (1, N'Pending Confirmation')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (2, N'Confirmed')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (3, N'Shipping')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (4, N'Delivered')
INSERT [dbo].[OrderStatus] ([StatusID], [StatusName]) VALUES (5, N'Delivery Failed')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (1, N'YAMAHA G1', 7000.0000, 10, 0, N'assets/img/product-images/1_1.jpg, assets/img/product-images/1_2.jpg, assets/img/product-images/1_3.jpg', N'Chair - Piano Cover - Heater - 2 Tunings - Local Delivery.', N'5 Year', N'160 x 46 x 152', NULL, 5, N'181.4kg', N'The Yamaha G1 Grand Piano is a renowned brand from Japan, known for its exceptional craftsmanship and sound quality. This piano is favored by many international artists due to its handcrafted construction using the finest materials and continuous improvements made by masters in the grand piano industry. Yamaha has solidified its reputation by constantly enhancing its products. The Yamaha G1 is a highly popular choice, achieving high stability and quality, making it perfect for music competitions, events of all sizes, and your home.', CAST(N'2009-01-01' AS Date), 0.4, 1, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (2, N'YAMAHA C1', 8000.0000, 6, 0, N'assets/img/product-images/2_1.jpg, assets/img/product-images/2_2.jpg, assets/img/product-images/2_3.jpg', N'Chair - Piano Cover - Heater - 2 Tunings - Local Delivery.', N'5 Year', N'161 x 101 x 149', NULL, 5, N'290kg', N'The Yamaha C1 Piano is a part of the C series, a product line where Yamaha focuses on every detail. The wooden and ivorite® keys offer a natural touch sensation. Its compact size makes it ideal for smaller rooms. The combination of the lavish color of the frame and the soundboard enhances the piano of luxurious appearance. The Grand Piano C1 is highly favored not only in Vietnam but also globally, thanks to its consistent improvement in sound quality and craftsmanship. It is a top choice for those who love acoustic pianos.', CAST(N'2008-01-01' AS Date), 0.2, 1, 1, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (3, N'STEINWAY & SONS S-155', 15000.0000, 12, 0, N'assets/img/product-images/3_1.jpg, assets/img/product-images/3_2.jpg, assets/img/product-images/3_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - 2 Tunings - Local Delivery.', N'5 Year', N'147 x 252 x 155', NULL, 5, N'252kg', N'The Steinway & Sons C-227 Grand Piano is a magnificent instrument favored by many of the world''s greatest artists. It offers a warm yet powerful sound, with an overwhelming presence, and a luxurious, sophisticated design, featuring meticulously crafted details. The soundboard is crafted in a similar way to a violin, providing free feedback across the entire range, with a thickness of 8mm in the center, gradually tapering to 5mm, mimicking the construction of the rim and outer parts. The frame is made from solid spruce, providing excellent support for the soundboard. The body of the piano is made from premium woods like birch, mahogany, or walnut, which ensures optimal sound quality. The hammers are covered with high-quality felt to prevent moisture and insects. This piano is ideal for events, performances of all sizes, and especially enhances the elegance of any home.', CAST(N'2000-01-01' AS Date), 0.4, 1, 1, 5)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (4, N'KAWAI KU-1D', 8000.0000, 5, 0, N'assets/img/product-images/4_1.jpg, assets/img/product-images/4_2.jpg, assets/img/product-images/4_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - 2 Tunings - Local Delivery.', N'5 Year', N'128 x 153 x 63', NULL, 4, N'245kg', N'The Kawai KU-1D piano is a professional model produced and assembled in Japan, with a soundboard that stands out as a key feature when talking about Kawai KU-1D. Upright pianos like the KU-1D series offer a top-notch sound experience, making them perfect for cafes, schools, and small performances.', CAST(N'2003-01-01' AS Date), 0.4, 1, 2, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (5, N'Kawai ND21', 10000.0000, 4, 0, N'assets/img/product-images/5_1.jpg, assets/img/product-images/5_2.jpg, assets/img/product-images/5_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - 2 Tunings - Local Delivery.', N'5 Year', N'150 x 58 x 121', NULL, 4, N'215kg', N'The Kawai ND-21 piano is designed with an ultra-responsive action mechanism, a proprietary technology of Kawai. A major breakthrough from Kawai in minimizing the impact of weather conditions on the quality of the action is the replacement of traditional wood with the superior material ABS-Styran in some of the power transmission components of the action.', CAST(N'2006-01-01' AS Date), 0.23, 1, 2, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (6, N'Casio PX-S7000', 5000.0000, 220, 0, N'assets/img/product-images/6_1.jpg, assets/img/product-images/6_2.jpg, assets/img/product-images/6_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - Local Delivery.', N'5 Year', N'150 x 58 x 121', N'8W x 2', 5, N'14,8kg', N'The Casio PX-S7000 digital piano is the latest model, launched in November 2022. It belongs to the popular Privia series in Vietnam. The piano features a compact and attractive design, making it easy to move anywhere. It delivers unique sound, realistic feel, and is equipped with Casio''s cutting-edge technology. The Casio PX-S7000 is available in three colors and comes with an integrated stand and pedal, enhancing the traditional aesthetic of the piano. It is suitable for a wide range of users, from beginners to semi-professionals and professionals.', CAST(N'2023-01-01' AS Date), 0.15, 1, 3, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (7, N'Roland RP-30', 1500.0000, 220, 0, N'assets/img/product-images/7_1.jpg, assets/img/product-images/7_2.jpg, assets/img/product-images/7_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - Local Delivery.', N'5 Year', N'150 x 58 x 121', N'20W x 2', 5, N'14,8kg', N'The Roland RP-30 digital piano is the ideal instrument to address your concerns. With a full 88-key keyboard for finger exercises, 15 built-in tones to enhance the experience, basic functions that support practice, and a stylish exterior design, it adds aesthetic value to your home. The Roland RP-30 is designed for children who are just starting to learn, with an attractive and compact design, making it perfect for apartments, small homes, living rooms, or bedrooms.', CAST(N'2009-01-01' AS Date), 0.15, 1, 3, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (8, N'ROLAND FANTOM 7', 4000.0000, 20, 0, N'assets/img/product-images/8_1.jpg, assets/img/product-images/8_2.jpg, assets/img/product-images/8_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - Local Delivery.', N'5 Year', N'150 x 58 x 121', NULL, 5, N'17.7 kg', N'The Roland Fantom 7 keyboard features a simple interface design, allowing for quick operation without wasting much time. Along with its top-tier sound quality, it enables artists to create unexpected innovations, delivering impressive performances without worrying about technical or sound issues. Specifically, it is equipped with advanced sound tools. The Roland Fantom 7 is powered by a new, powerful audio processor, providing deep and highly flexible sound output.', CAST(N'2015-01-01' AS Date), 0.15, 1, 4, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (9, N'KORG GRANDSTAGE', 4000.0000, 20, 0, N'assets/img/product-images/9_1.jpg, assets/img/product-images/9_2.jpg, assets/img/product-images/9_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - Local Delivery.', N'5 Year', N'150 x 58 x 121', NULL, 5, N'20,0 kg', N'The KORG GRANDSTAGE is a high-quality stage piano designed for professionals. It features a responsive, weighted keybed and a wide range of premium sounds, including grand pianos, electric pianos, and organs. Its sleek, durable design makes it perfect for both studio and live performances, offering musicians versatility and reliability.', CAST(N'2018-01-01' AS Date), 0.15, 1, 4, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (10, N'Kawai Novus NV5S', 6000.0000, 7, 0, N'assets/img/product-images/10_1.jpg, assets/img/product-images/10_2.jpg, assets/img/product-images/10_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - Local Delivery.', N'5 Year', N'150 x 58 x 121', N'20w x 2', 5, N'113.0 kg', N'Kawai understands that the key to an authentic piano experience is the action. This is why the Millennium III hybrid action serves as the centrepiece of the Novus NV5S. Renowned for the revolutionary use of extended spruce key sticks and individually weighted ABS-Carbon components, the keys are made stronger, lighter, and inevitably more stable than conventional wooden parts seen in acoustic pianos. Since the Novus NV5S is a hybrid piano, there are no strings for these ABS hammers to strike. Instead, the precise movements of the hammers are captured using high-resolution optical sensors mounted over the action. With the touch and feel of an acoustic piano, the NV5S really is indistinguishable from a grand piano.', CAST(N'2013-01-01' AS Date), 0.15, 1, 5, 6)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [Discontinued], [Image], [Include], [Warranty], [Dimensions], [SpeakerPower], [StarRating], [Weight], [Describe], [ReleaseDate], [Discount], [Status], [CategoryID], [SupplierID]) VALUES (11, N'Steinway Model B 7', 50000.0000, 2, 0, N'assets/img/product-images/11_1.jpg, assets/img/product-images/11_2.jpg, assets/img/product-images/11_3.jpg', N'Chair - Piano Cover - Key Cover - Heater - Local Delivery.', N'5 Year', N'150 x 58 x 121', N'40w x 2', 5, N'113.0 kg', N'As one would expect of a Steinway of such recent vintage, this is a magnificent piece that will be a welcome addition to any setting, equally suitable for public performance or private enjoyment.  Its tone is rich, broad, and nuanced, and it has a lovely, responsive action.  It will easily provide decades of musical enjoyment to its next owner.  All original Steinway parts are intact and in excellent working order.', CAST(N'2005-01-01' AS Date), 0.3, 1, 6, 5)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [Country], [Phone], [HomePage], [Image]) VALUES (1, N'Yamaha', N'Supplier Contact Yamaha', N'Japan', N'+39 02 1234 5678', N'https://www.yamaha.com', N'assets/img/vendor/vendor-1.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [Country], [Phone], [HomePage], [Image]) VALUES (2, N'Roland', N'Supplier Contact Roland', N'Japan', N'+39 02 3456 7890', N'https://www.roland.com', N'assets/img/vendor/vendor-2.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [Country], [Phone], [HomePage], [Image]) VALUES (3, N'Casio', N'Supplier Contact Casio', N'Japan', N'+39 02 9343 2343', N'https://www.casio.com', N'assets/img/vendor/vendor-3.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [Country], [Phone], [HomePage], [Image]) VALUES (4, N'Korg', N'Supplier Contact Korg', N'Japan', N'+39 02 5932 1293', N'https://www.korg.com', N'assets/img/vendor/vendor-4.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [Country], [Phone], [HomePage], [Image]) VALUES (5, N'Steinway & Son', N'Supplier Contact Steinway & Son', N'USA & Germany', N'+48 23 9324 5743', N'https://www.steinway.com', N'assets/img/vendor/vendor-5.jpg')
INSERT [dbo].[Suppliers] ([SupplierID], [CompanyName], [ContactName], [Country], [Phone], [HomePage], [Image]) VALUES (6, N'Kawai', N'Supplier Contact Kawai', N'Japan', N'+39 02 3423 3334', N'https://www.kawai-global.com', N'assets/img/vendor/vendor-6.jpg')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Password], [RoleID], [Image], [Email], [BirthDay], [Address], [Phone], [status]) VALUES (1, N'nhatnhu', N'Nhữ Đình Nhật', N'nhatnhu123', 1, NULL, N'nhudinhnhat2004@gmail.com', CAST(N'2004-04-03' AS Date), N'Hai Duong, Viet Nam', N'0982226376', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Password], [RoleID], [Image], [Email], [BirthDay], [Address], [Phone], [status]) VALUES (2, N'admin', N'ADMIN', N'admin123', 2, NULL, N'nhatndhe182328@fpt.edu.vn', CAST(N'2000-01-01' AS Date), N'Ha Noi, Viet Name', N'0914306496', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Password], [RoleID], [Image], [Email], [BirthDay], [Address], [Phone], [status]) VALUES (3, N'truongtm09', N'Trường đẹp zai', N'truong123', 1, NULL, N'truong123@gmail.com', CAST(N'1990-02-01' AS Date), N'Ha Noi, Viet Nam', N'0971099820', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Password], [RoleID], [Image], [Email], [BirthDay], [Address], [Phone], [status]) VALUES (4, N'hainam', N'Hai Nam', N'hainam123', 1, NULL, N'hainam99@gmail.com', CAST(N'2025-02-13' AS Date), N'Hai Phong, Viet Nam', N'0968971913', 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Password], [RoleID], [Image], [Email], [BirthDay], [Address], [Phone], [status]) VALUES (5, N'nhatnhu1111', N'Adam', N'nhatnhu123', 1, NULL, N'nhat1234@gmail.com', CAST(N'2025-03-20' AS Date), N'Viet Nam', N'0123456789', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Date]  DEFAULT (CONVERT([date],getdate())) FOR [Date]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0.00)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStatus]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
USE [master]
GO
ALTER DATABASE [GoldenFinger] SET  READ_WRITE 
GO
