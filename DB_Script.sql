USE [master]
GO
/****** Object:  Database [Nevara]    Script Date: 8/8/2018 12:06:08 PM ******/
CREATE DATABASE [Nevara]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Nevara', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Nevara.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Nevara_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Nevara_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Nevara] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Nevara].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Nevara] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Nevara] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Nevara] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Nevara] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Nevara] SET ARITHABORT OFF 
GO
ALTER DATABASE [Nevara] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Nevara] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Nevara] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Nevara] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Nevara] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Nevara] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Nevara] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Nevara] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Nevara] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Nevara] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Nevara] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Nevara] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Nevara] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Nevara] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Nevara] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Nevara] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Nevara] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Nevara] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Nevara] SET  MULTI_USER 
GO
ALTER DATABASE [Nevara] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Nevara] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Nevara] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Nevara] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Nevara] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Nevara] SET QUERY_STORE = OFF
GO
USE [Nevara]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Nevara]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/8/2018 12:06:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRole]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRole](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[BirthDate] [datetime2](7) NULL,
	[Avatar] [nvarchar](max) NULL,
	[Address] [nvarchar](255) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsDeleted] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CollectionName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Collections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
	[Code] [varchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [varchar](255) NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturers]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Manufacturers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](255) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](255) NOT NULL,
	[CustomerMobile] [nvarchar](20) NOT NULL,
	[CustomerAddress] [nvarchar](255) NOT NULL,
	[CustomerMessage] [nvarchar](max) NULL,
	[PaymentMethod] [int] NOT NULL,
	[BillStatus] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CustomerEmail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 8/8/2018 12:06:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Length] [float] NULL,
	[Depth] [float] NULL,
	[Height] [float] NULL,
	[Thumbnail] [varchar](255) NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NULL,
	[CategoryId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[CollectionId] [int] NOT NULL,
	[ManufacturerId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[HomeFlag] [bit] NULL,
	[NewFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180703112340_New', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180716161358_update', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180716183112_update2', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180716191500_update3', N'2.1.1-rtm-30846')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180716201033_update4', N'2.1.1-rtm-30846')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted]) VALUES (N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d', N'Customer', N'CUSTOMER', N'6be7c8f3-ccff-4184-889b-86b01e7b7b25', 0)
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [IsDeleted]) VALUES (N'dc0b23f6-9c54-4ada-2a7b-08d5eb58885d', N'Admin', N'ADMIN', N'cdf8064b-599b-4089-9a92-fac9a4a48712', 0)
INSERT [dbo].[AppUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'259151638192642', N'Facebook', N'9258eac4-a267-4c6b-c269-08d5f06675ab')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'c363ce58-f201-4290-3965-08d5eb58889b', N'dc0b23f6-9c54-4ada-2a7b-08d5eb58885d')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'48a667d3-32b3-410e-3966-08d5eb58889b', N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'c1c5281a-c90f-4f79-a215-08d5eb595eaf', N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'bcc39400-be78-46b0-d20d-08d5ece633cb', N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'74ce7120-34ac-4027-ef33-08d5eff8963d', N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'97226255-33fa-4b2b-a410-08d5f047c1b8', N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d')
INSERT [dbo].[AppUserRole] ([UserId], [RoleId]) VALUES (N'751e43ce-2719-47e5-c26a-08d5f06675ab', N'6cd2265b-b185-4aa6-2a7a-08d5eb58885d')
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'c363ce58-f201-4290-3965-08d5eb58889b', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPPbDvoIaq6j4gioCfQvUF4Bd7ufiKLpdT/EvZ8nkAFgaBt/t90vlUIVPj2ElDWOJA==', N'ZVFYKDTAFY52KV7FJ4MYNEKQPKVZQ72M', N'ab1a261d-87d2-4c32-baa1-b0978942c91f', N'12345', 0, 0, NULL, 1, 0, N'ha tin', NULL, N'/admin-client/assets/images/users/1.jpg', N'', 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'48a667d3-32b3-410e-3966-08d5eb58889b', N'blue.imc@facebook.com', N'BLUE.IMC@FACEBOOK.COM', N'blue.imc@facebook.com', N'BLUE.IMC@FACEBOOK.COM', 0, N'AQAAAAEAACcQAAAAEOI63jHbUxQ05kR/KmuDqF6sMQ64hjtVZhGV7bZ8+PnmaeMr4mc4NclSQgzKGsYLig==', N'PFEPGPEHIN4DBYBFGVG66Y7RRDPJMB2E', N'5cf4911e-bbe9-438a-a8a2-3baaa6affb8b', N'12458876', 0, 0, NULL, 1, 0, N'Tin Ha', NULL, N'', N'', 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'c1c5281a-c90f-4f79-a215-08d5eb595eaf', N'blue.imc2@facebook.com', N'BLUE.IMC2@FACEBOOK.COM', N'blue.imc2@facebook.com', N'BLUE.IMC2@FACEBOOK.COM', 0, N'AQAAAAEAACcQAAAAEDiq+aBfJuB8M95py+G+q97OsIFoW+BMhXzHOY5Nk+I/M9fmJN7dl2mngEE2ZHsvrg==', N'MKKA2INYNACK2AW7HRDLOCGBTOZSATHG', N'4fc8733d-2d0f-40fe-a55d-6e528488db21', N'12458876', 0, 0, NULL, 1, 0, N'Tin Ha', NULL, N'', N'33 Phan Huy Ích Phường 15 Quận Tân Bình', 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'bcc39400-be78-46b0-d20d-08d5ece633cb', N'minhthy@gmail.com', N'MINHTHY@GMAIL.COM', N'blue.imc3@facebook.com', N'BLUE.IMC3@FACEBOOK.COM', 0, N'AQAAAAEAACcQAAAAEP9qkyFwQsXFCB3I0Qz8z7CRrIIiDpxlu+3zy4t8d9kcvHTqQfAcHVC141Q0dgLzfw==', N'GZ47SH23GDVIAMP6P3PA3ESLAGD4FCCV', N'1d7d1ec8-318f-4535-b550-50e36f18b3e1', N'123456788', 0, 0, NULL, 1, 0, N'snow wolf', NULL, N'', N'33 nguyen hue', 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'74ce7120-34ac-4027-ef33-08d5eff8963d', N'vuprobs@gmail.com', N'VUPROBS@GMAIL.COM', N'vuprobs@gmail.com', N'VUPROBS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM1G9qfsrNtgCMuBayBtcUnE2saHIp62Pt77CXVZCrbK8GQgash5rKXZkzYO/UBYjQ==', N'OJZK6Z2Q2KECUMBHWZ4UUK236BGXPWGT', N'fa3af130-47a9-4b55-af4a-d4b48abba80f', N'01675086313', 0, 0, NULL, 1, 0, N'vuprob', NULL, N'', NULL, 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'97226255-33fa-4b2b-a410-08d5f047c1b8', N'vuhuynh1@gmail.com', N'VUHUYNH1@GMAIL.COM', N'vuhuynh1@gmail.com', N'VUHUYNH1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELXPtGp6MfOp1qIx+IOAO+x6du6rPpE/Y5kmyk9trxGoTAiATqvvEbCJVpi5dG2vkg==', N'Y7NH6JTWB6KL6HIEBW3XF2BHAJZNHUPE', N'6071676d-5f36-473f-a073-6e41e15e1976', N'01675086313', 0, 0, NULL, 1, 0, N'vu huynh', NULL, N'', N'Số 3 - Công viên phần mềm quang trung - Quận 12', 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'9258eac4-a267-4c6b-c269-08d5f06675ab', N'vuprobs12@gmail.com', N'VUPROBS12@GMAIL.COM', N'vuprobs12@gmail.com', N'VUPROBS12@GMAIL.COM', 0, NULL, N'GD6GHQ42REHJFMDFKEXSYESZTDG3CQAP', N'ffb8f462-d872-4ff3-a291-df014edac922', N'01675086313', 0, 0, NULL, 1, 0, N'Huỳnh Lê', NULL, NULL, N'03, Lien Phuong Villa, Quang Software Parl, Distric 12', 0)
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDate], [Avatar], [Address], [IsDeleted]) VALUES (N'751e43ce-2719-47e5-c26a-08d5f06675ab', N'rijchard@gmail.com', N'RIJCHARD@GMAIL.COM', N'rijchard@gmail.com', N'RIJCHARD@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGuM/BHOcGKL8TSQ3mOLGLGgo7gfltX7XU51RxIRN5m4IeTDl1z1qz2zCOydqj6v/w==', N'MYNVQ6ORGRZGL55CGVUS4VB2EOFJ3MCB', N'659811a3-2d5e-476b-90c5-d5cbe9de2750', N'01675086313', 0, 0, NULL, 1, 0, N'Rijchard Huynhs', NULL, N'', N'Số 3 - Công viên phần mềm quang trung - Quận 12', 0)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted]) VALUES (1, N'Beds', N'0')
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted]) VALUES (2, N'Tables', N'0')
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted]) VALUES (3, N'Chair', N'0')
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted]) VALUES (4, N'Kitchen Furniture', N'0')
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted]) VALUES (5, N'test', N'1')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Collections] ON 

INSERT [dbo].[Collections] ([Id], [CollectionName], [Description], [Image], [IsDeleted]) VALUES (1, N'Autumn', N'This is autumn description', NULL, 0)
INSERT [dbo].[Collections] ([Id], [CollectionName], [Description], [Image], [IsDeleted]) VALUES (2, N'Fall', N'This is autumn description', NULL, 0)
INSERT [dbo].[Collections] ([Id], [CollectionName], [Description], [Image], [IsDeleted]) VALUES (3, N'Summner', N'This is autumn description', NULL, 0)
INSERT [dbo].[Collections] ([Id], [CollectionName], [Description], [Image], [IsDeleted]) VALUES (4, N'Spring', N'This is autumn description', NULL, 0)
INSERT [dbo].[Collections] ([Id], [CollectionName], [Description], [Image], [IsDeleted]) VALUES (5, N'test', N'test', N'/images/1.png', 1)
SET IDENTITY_INSERT [dbo].[Collections] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [ColorName], [Code], [IsDeleted]) VALUES (1, N'Red', N'#d80000', 0)
INSERT [dbo].[Colors] ([Id], [ColorName], [Code], [IsDeleted]) VALUES (2, N'Blue', N'#0099cc', 0)
INSERT [dbo].[Colors] ([Id], [ColorName], [Code], [IsDeleted]) VALUES (3, N'Green', N'#29ab87', 0)
INSERT [dbo].[Colors] ([Id], [ColorName], [Code], [IsDeleted]) VALUES (4, N'White', N'#ffffff', 0)
INSERT [dbo].[Colors] ([Id], [ColorName], [Code], [IsDeleted]) VALUES (5, N'test', N'#471616', 1)
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (5, N'/images/Category/cat1.jpg', 11)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (22, N'/images/t2.jpg', 14)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (23, N'/images/t2-1.jpg', 14)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (24, N'/images/t2-2.jpg', 14)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (25, N'/images/t2-3.jpg', 14)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (26, N'/images/t2-4.jpg', 14)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (27, N'/images/t2-5.jpg', 14)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (28, N'/images/t1.jpg', 13)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (29, N'/images/t1-1.jpg', 13)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (30, N'/images/t1-2.jpg', 13)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (31, N'/images/t1-3.jpg', 13)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (32, N'/images/t4.jpg', 16)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (33, N'/images/t4-1.jpg', 16)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (34, N'/images/t4-2.jpg', 16)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (35, N'/images/t4-3.jpg', 16)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (36, N'/images/t3.jpg', 15)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (37, N'/images/t3-2.jpg', 15)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (38, N'/images/t3-3.jpg', 15)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (39, N'/images/t5.jpg', 17)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (40, N'/images/t5-1.jpg', 17)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (41, N'/images/b1.jpg', 18)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (42, N'/images/b1-1.jpg', 18)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (43, N'/images/b1-2.jpg', 18)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (44, N'/images/b1-3.jpg', 18)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (45, N'/images/b1-4.jpg', 18)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (46, N'/images/b2.jpg', 2)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (47, N'/images/b2-1.jpg', 2)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (48, N'/images/b2-2.jpg', 2)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (49, N'/images/b3.jpg', 1)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (50, N'/images/b3-1.jpg', 1)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (51, N'/images/b2.jpg', 3)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (52, N'/images/b2-1.jpg', 3)
INSERT [dbo].[Images] ([Id], [ImagePath], [ProductId]) VALUES (53, N'/images/b2-2.jpg', 3)
SET IDENTITY_INSERT [dbo].[Images] OFF
SET IDENTITY_INSERT [dbo].[Manufacturers] ON 

INSERT [dbo].[Manufacturers] ([Id], [ManufacturerName], [IsDeleted]) VALUES (1, N'Yokohama', 0)
INSERT [dbo].[Manufacturers] ([Id], [ManufacturerName], [IsDeleted]) VALUES (2, N'Samsung', 0)
INSERT [dbo].[Manufacturers] ([Id], [ManufacturerName], [IsDeleted]) VALUES (3, N'Honda', 1)
INSERT [dbo].[Manufacturers] ([Id], [ManufacturerName], [IsDeleted]) VALUES (4, N'Honda', 0)
INSERT [dbo].[Manufacturers] ([Id], [ManufacturerName], [IsDeleted]) VALUES (5, N'Yamamoto', 0)
INSERT [dbo].[Manufacturers] ([Id], [ManufacturerName], [IsDeleted]) VALUES (6, N'test', 1)
SET IDENTITY_INSERT [dbo].[Manufacturers] OFF
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([Id], [MaterialName], [IsDeleted]) VALUES (1, N'Wood', 0)
INSERT [dbo].[Materials] ([Id], [MaterialName], [IsDeleted]) VALUES (2, N'Plastic', 0)
INSERT [dbo].[Materials] ([Id], [MaterialName], [IsDeleted]) VALUES (3, N'Wood', 0)
SET IDENTITY_INSERT [dbo].[Materials] OFF
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (1, 1, 1, CAST(2000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (2, 2, 2, CAST(2000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (3, 2, 3, CAST(2000.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (4, 3, 2, CAST(3000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (5, 4, 2, CAST(3000.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (6, 4, 2, CAST(2000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (7, 5, 5, CAST(2000.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (9, 7, 2, CAST(1800.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (10, 8, 2, CAST(1800.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (11, 9, 3, CAST(1800.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (12, 10, 2, CAST(2000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (13, 10, 2, CAST(2000.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (14, 11, 2, CAST(1800.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (15, 11, 2, CAST(1000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (16, 12, 3, CAST(1800.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (17, 12, 2, CAST(1000.00 AS Decimal(18, 2)), 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (21, 15, 2, CAST(1999.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Quantity], [Price], [ProductId]) VALUES (22, 16, 2, CAST(1999.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (1, N'Tin Ha', N'12458876', N'33 Phan Huy Ích Phường 15 Quận Tân Bình', N'ok', 1, 0, CAST(N'2018-07-17T03:20:10.2389529' AS DateTime2), N'c1c5281a-c90f-4f79-a215-08d5eb595eaf', 0, N'blue.imc2@facebook.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (2, N'Tin Ha', N'12458876', N'33 Phan Huy Ích Phường 15 Quận Tân Bình', N'give me the money', 0, 0, CAST(N'2018-07-17T03:30:05.8227714' AS DateTime2), N'c1c5281a-c90f-4f79-a215-08d5eb595eaf', 0, N'blue.imc2@facebook.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (3, N'Tin Ha', N'12458876', N'33 Phan Huy Ích Phường 15 Quận Tân Bình', N'a', 0, 0, CAST(N'2018-07-17T03:32:06.8778944' AS DateTime2), N'c1c5281a-c90f-4f79-a215-08d5eb595eaf', 0, N'blue.imc2@facebook.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (4, N'guest', N'123456789', N'12 phan huy ich', N'ok', 0, 0, CAST(N'2018-07-17T16:25:06.5898330' AS DateTime2), NULL, 0, N'guest@gmail.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (5, N'Tin Ha', N'1443534', N'33 Phan Huy Ích Phường 15 Quận Tân Bình', N'aa', 0, 0, CAST(N'2018-07-18T02:03:13.3521642' AS DateTime2), NULL, 0, N'test@gmail.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (7, N'quang vinh', N'091241212', N'tan phu', N'call me', 0, 1, CAST(N'2018-07-19T12:42:54.6054866' AS DateTime2), NULL, 0, N'minhquan@gmail.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (8, N'snow flowers', N'123456788', N'33 nguyen hue', N'ok', 0, 0, CAST(N'2018-07-19T13:23:30.7238843' AS DateTime2), N'bcc39400-be78-46b0-d20d-08d5ece633cb', 0, N'blue.imc3@facebook.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (9, N'Tin Ha', N'1443534', N'33 Phan Huy Ích Phường 15 Quận Tân Bình', N'ありがとうございました。', 0, 0, CAST(N'2018-07-19T16:19:45.1200130' AS DateTime2), NULL, 0, N'test@gmail.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (10, N'minh tu', N'123456789', N'33 Võ Đình Tú Quy Nhơn Bình Định', N'hi', 0, 0, CAST(N'2018-07-20T12:00:05.8112116' AS DateTime2), NULL, 0, N'pikeman20@gmail.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (11, N'snow flowers', N'123456788', N'33 nguyen hue', N'', 0, 4, CAST(N'2018-07-20T12:03:35.7559422' AS DateTime2), N'bcc39400-be78-46b0-d20d-08d5ece633cb', 0, N'blue.imc3@facebook.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (12, N'snow flowers', N'123456788', N'33 nguyen hue', N'as', 0, 2, CAST(N'2018-07-20T12:16:41.9931222' AS DateTime2), N'bcc39400-be78-46b0-d20d-08d5ece633cb', 0, N'blue.imc3@facebook.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (15, N'Rijchard Huynhs', N'01675086313', N'Số 3 - Công viên phần mềm quang trung - Quận 12', N'ok', 0, 0, CAST(N'2018-07-23T14:59:55.3357179' AS DateTime2), N'751e43ce-2719-47e5-c26a-08d5f06675ab', 0, N'rijchard@gmail.com')
INSERT [dbo].[Orders] ([Id], [CustomerName], [CustomerMobile], [CustomerAddress], [CustomerMessage], [PaymentMethod], [BillStatus], [CreatedDate], [UserId], [IsDeleted], [CustomerEmail]) VALUES (16, N'Rijchard Huynhs', N'01675086313', N'Số 3 - Công viên phần mềm quang trung - Quận 12', N'ok', 0, 1, CAST(N'2018-07-23T15:18:02.3883609' AS DateTime2), N'751e43ce-2719-47e5-c26a-08d5f06675ab', 0, N'rijchard@gmail.com')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (1, N'Bed 1', 50, 20, 20, N'/images/b3.jpg', CAST(9999.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(1999.00 AS Decimal(18, 2)), 1, 1, 1, 1, 1, N'Được làm từ chất liệu Polyester mềm mịn, an toàn cho sức khỏe, giường YOKOHAMA đem đến cho bạn cảm giác êm ái, tựa lưng thư giãn sau những giờ mệt mỏi. Sản phẩm có thiết kế đơn giản nhưng toát lên vẻ hiện đại, sang trọng, nhiều kích cỡ, phù hợp với mọi không gian phòng ngủ của gia đình bạn. Với 6 chân gỗ đóng chuẩn vào khung cùng với màu sắc tươi sáng, bắt mắt, sản phẩm tạo sự vững chắc và bền đẹp theo thời gian.', 0, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (2, N'Bed 2', 50, 20, 20, N'/images/b2.jpg', CAST(4000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(2999.00 AS Decimal(18, 2)), 1, 1, 2, 1, 2, N'Hơn cả một nơi ngả lưng để phục hồi năng lượng, giường WILLIAM còn là vật dụng lưu trữ hiệu quả giúp bạn nới rộng phòng ngủ của mình. Vạt giường có thể được dễ dàng nâng lên và hạ xuống nhờ hệ thống chốt với khoang chứa rộng rãi bên dưới để bạn sắp xếp quần áo, chăn, gối,...

Toàn bộ sản phẩm sở hữu khung gỗ chắc chắn và được bọc vải sang trọng, tinh tế. Phần đầu giường và gối tựa có thể được tháo rời tùy theo nhu cầu sử dụng cũng như để dễ dàng làm vệ sinh gối. Giường WILLIAM có thể phối hợp hoàn hảo cùng ghế thư giãn GEORGE từ UMA. Có 2 màu sắc để bạn chọn.', 6, 1, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (3, N'Bed 3', 200, 200, 300, N'/images/b2.jpg', CAST(1500.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 1, 1, 3, 2, 2, N'this is description', 8, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (4, N'Table 1', NULL, NULL, NULL, N'/images/Product/pro1.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, 2, 1, 1, 2, 1, NULL, 6, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (5, N'Table 2', NULL, NULL, NULL, N'/images/Product/pro2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, 2, 2, 2, 3, 2, NULL, 10, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (6, N'Table 3', 50, 20, 20, N'/images/Product/pro2.jpg', CAST(20.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 2, 3, 3, 4, 2, N'a', 50, 1, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (7, N'Chair 1', NULL, NULL, NULL, N'/images/Product/pro1.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, 3, 1, 1, 4, 1, NULL, 25, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (8, N'Chair 2', NULL, NULL, NULL, N'/images/Product/pro2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, 3, 2, 2, 4, 2, NULL, 26, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (9, N'Chair 3', NULL, NULL, NULL, N'/images/Product/pro2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, 3, 3, 3, 2, 2, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (10, N'Kitchen 1 ', 1, 12, 12, N'/images/Product/pro1.jpg', CAST(1000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), 4, 3, 1, 3, 1, N'this is description', 16, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (11, N'Kitchen 2', 200, 300, 400, N'/images/Product/pro2.jpg', CAST(3000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, 1, 2, 4, 2, N'no description', 19, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (12, N'Kitchen 3', NULL, NULL, NULL, N'/images/Product/pro2.jpg', CAST(0.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), NULL, 4, 2, 3, 1, 2, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (13, N'Bàn ăn', 50, 20, 30, N'/images/t1.jpg', CAST(999.00 AS Decimal(18, 2)), CAST(899.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 2, 1, 1, 3, 1, N'With its white and natural wooden melamine and its black structured legs, the IT coffee table creates a visually contrasting image. Made of MFC material with high pressed melamine surface, the IT coffee table is very durable. Consisting of a table top and two inner compartments, the IT coffee table has been designed to store all necessary living room items such as books, magazines and TV controls.
With the strength of the powder-coated steel legs, the coffee table can withstand the weight of people sitting on it. It is important to remember to tighten the screws a few weeks after usage, as they are the main element needed to keep the structure together.
This product comes completely knocked down.', 10, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (14, N'Bàn ăn', 50, 20, 40, N'/images/t2.jpg', CAST(999.00 AS Decimal(18, 2)), CAST(899.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 2, 3, 1, 3, 2, N'Bàn ăn VERONA nổi bật với màu đen sang trọng được làm từ gỗ công nghiệp bền chắc. Mặt bàn được xử lý kỹ càng, mang vẻ đẹp tinh xảo. Chân bàn làm từ kim loại, cho độ cứng cáp và chắc chắn cao. Bạn có thể kết hợp bàn cùng các sản phẩm khác trong cùng bộ sưu tập VERONA để hoàn thiện nội thất phòng ăn của gia đình bạn.', 15, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (15, N'Bàn ăn', 50, 20, 20, N'/images/t3.jpg', CAST(999.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 2, 1, 3, 2, 1, N'Bàn ăn VERONA nổi bật với màu trắng tinh khôi được làm từ gỗ công nghiệp bền chắc. Mặt bàn được xử lý kỹ càng, mang vẻ đẹp tinh xảo. Chân bàn làm từ kim loại, cho độ cứng cáp và chắc chắn cao. Bạn có thể kết hợp bàn cùng các sản phẩm khác trong cùng bộ sưu tập VERONA để hoàn thiện nội thất phòng ăn của gia đình bạn.
', 5, 1, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (16, N'Bàn ăn', 50, 20, 20, N'/images/t4.jpg', CAST(3790.00 AS Decimal(18, 2)), CAST(3090.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), 2, 3, 1, 1, 4, N'Bàn ăn VERONA nổi bật với màu trắng tinh khôi được làm từ gỗ công nghiệp bền chắc. Mặt bàn được xử lý kỹ càng, mang vẻ đẹp tinh xảo. Chân bàn làm từ kim loại, cho độ cứng cáp và chắc chắn cao. Bạn có thể kết hợp bàn cùng các sản phẩm khác trong cùng bộ sưu tập VERONA để hoàn thiện nội thất phòng ăn của gia đình bạn.
', 13, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (17, N'Bàn góc', 50, 20, 20, N'/images/t5.jpg', CAST(999.00 AS Decimal(18, 2)), CAST(232.00 AS Decimal(18, 2)), NULL, 2, 3, 1, 1, 1, N'Round coffee table, legs as slat walnut solid wood.', 5, 1, 1, 0, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (18, N'Giường', 50, 20, 20, N'/images/b1-3.jpg', CAST(999.00 AS Decimal(18, 2)), CAST(899.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 1, 3, 2, 1, 2, N'Giường ngủ KITKA có thiết kế vững chãi, chất liệu gỗ cao su và màu sắc ấm áp, đem đến vẻ đẹp sang trọng cho căn phòng. Chân giường được trang bị 4 ngăn chứa để bạn đặt sách và các đồ trang trí. Chiều cao của đầu giường khá lý tưởng để đọc sách hay làm việc ngay trên giường. Hãy kết hợp giường với các sản phẩm bàn hay tủ quần áo trong cùng bộ sưu tập để không gian căn hộ thêm sang trọng.', 5, 1, 0, 1, 0)
INSERT [dbo].[Products] ([Id], [Name], [Length], [Depth], [Height], [Thumbnail], [OriginalPrice], [Price], [PromotionPrice], [CategoryId], [ColorId], [MaterialId], [CollectionId], [ManufacturerId], [Description], [Quantity], [HomeFlag], [NewFlag], [HotFlag], [IsDeleted]) VALUES (19, N'Bàn ănzzzz', 50, 20, 20, N'/images/b2.jpg', CAST(999.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 1, 2, 1, 1, 2, N'qưeqewq', 5, 1, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Index [IX_AppRoleClaims_RoleId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppRoleClaims_RoleId] ON [dbo].[AppRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AppRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AppUserClaims_UserId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AppUserClaims_UserId] ON [dbo].[AppUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_AppUserLogins_LoginProvider_ProviderKey]    Script Date: 8/8/2018 12:06:09 PM ******/
ALTER TABLE [dbo].[AppUserLogins] ADD  CONSTRAINT [AK_AppUserLogins_LoginProvider_ProviderKey] UNIQUE NONCLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [AK_AppUserRole_UserId_RoleId]    Script Date: 8/8/2018 12:06:09 PM ******/
ALTER TABLE [dbo].[AppUserRole] ADD  CONSTRAINT [AK_AppUserRole_UserId_RoleId] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AppUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AppUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_AppUserTokens_UserId_LoginProvider_Name]    Script Date: 8/8/2018 12:06:09 PM ******/
ALTER TABLE [dbo].[AppUserTokens] ADD  CONSTRAINT [AK_AppUserTokens_UserId_LoginProvider_Name] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Images_ProductId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Images_ProductId] ON [dbo].[Images]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CollectionId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CollectionId] ON [dbo].[Products]
(
	[CollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ColorId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_ColorId] ON [dbo].[Products]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_ManufacturerId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_ManufacturerId] ON [dbo].[Products]
(
	[ManufacturerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_MaterialId]    Script Date: 8/8/2018 12:06:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_MaterialId] ON [dbo].[Products]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  DEFAULT ((0)) FOR [ProductId]
GO
ALTER TABLE [dbo].[AppRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AppRoleClaims_AppRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppRoleClaims] CHECK CONSTRAINT [FK_AppRoleClaims_AppRoles_RoleId]
GO
ALTER TABLE [dbo].[AppUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AppUserClaims_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserClaims] CHECK CONSTRAINT [FK_AppUserClaims_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AppUserLogins_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserLogins] CHECK CONSTRAINT [FK_AppUserLogins_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppUserRole]  WITH CHECK ADD  CONSTRAINT [FK_AppUserRole_AppRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserRole] CHECK CONSTRAINT [FK_AppUserRole_AppRoles_RoleId]
GO
ALTER TABLE [dbo].[AppUserRole]  WITH CHECK ADD  CONSTRAINT [FK_AppUserRole_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserRole] CHECK CONSTRAINT [FK_AppUserRole_AppUsers_UserId]
GO
ALTER TABLE [dbo].[AppUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AppUserTokens_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AppUserTokens] CHECK CONSTRAINT [FK_AppUserTokens_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AppUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Collections_CollectionId] FOREIGN KEY([CollectionId])
REFERENCES [dbo].[Collections] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Collections_CollectionId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Manufacturers_ManufacturerId] FOREIGN KEY([ManufacturerId])
REFERENCES [dbo].[Manufacturers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Manufacturers_ManufacturerId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Materials_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Materials_MaterialId]
GO
USE [master]
GO
ALTER DATABASE [Nevara] SET  READ_WRITE 
GO
