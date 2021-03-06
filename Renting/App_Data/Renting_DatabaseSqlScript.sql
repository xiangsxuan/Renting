USE [master]
GO
/****** Object:  Database [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d]    Script Date: 2019/5/20 21:25:11 ******/
CREATE DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d.mdf', FILENAME = N'C:\Users\xiang\source\repos\Renting\Renting\App_Data\aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d_log.ldf', FILENAME = N'C:\Users\xiang\source\repos\Renting\Renting\App_Data\aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET QUERY_STORE = OFF
GO
USE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/5/20 21:25:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 2019/5/20 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[ChatId] [int] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NULL,
	[DayTime] [time](7) NULL,
	[HouseOwnerId] [int] NOT NULL,
	[TenantId] [int] NOT NULL,
	[ChatContent] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ChatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 2019/5/20 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[HouseId] [int] IDENTITY(1,1) NOT NULL,
	[Describe] [nvarchar](max) NULL,
	[Location] [nvarchar](256) NULL,
	[ReleaseTime] [nvarchar](256) NULL,
	[HouseTitle] [nvarchar](256) NULL,
	[Longitude] [nvarchar](256) NULL,
	[HouseType] [nvarchar](256) NULL,
	[Size] [nvarchar](256) NULL,
	[HouseOwnerId] [nvarchar](256) NOT NULL,
	[Latitude] [nvarchar](256) NULL,
	[HouseImg] [nvarchar](256) NULL,
	[Phone] [nvarchar](256) NULL,
	[HouseOwnerName] [nvarchar](256) NULL,
	[Price] [float] NULL,
	[SquareMeter] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseImg]    Script Date: 2019/5/20 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HouseImg](
	[HouseImgId] [int] IDENTITY(1,1) NOT NULL,
	[HouseImgFile] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseOwner]    Script Date: 2019/5/20 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HouseOwner](
	[HouseOwnerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Phone] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[Location] [nvarchar](256) NULL,
	[Password] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseOwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationBoard]    Script Date: 2019/5/20 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationBoard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BoardContent] [nvarchar](max) NOT NULL,
	[ReleaseTime] [datetime] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tenant]    Script Date: 2019/5/20 21:25:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenant](
	[TenantId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET  READ_WRITE 
GO
