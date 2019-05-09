USE [master]
GO
/****** Object:  Database [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d]    Script Date: 2019/5/8 19:07:55 ******/
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
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2019/5/8 19:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2019/5/8 19:07:55 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2019/5/8 19:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2019/5/8 19:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2019/5/8 19:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2019/5/8 19:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2019/5/8 19:07:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 2019/5/8 19:07:55 ******/
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
/****** Object:  Table [dbo].[House]    Script Date: 2019/5/8 19:07:56 ******/
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
	[MapLocationX] [decimal](18, 2) NULL,
	[HouseType] [nvarchar](256) NULL,
	[Size] [nvarchar](256) NULL,
	[HouseOwnerId] [nvarchar](256) NOT NULL,
	[MapLocationY] [decimal](18, 2) NULL,
	[HouseImg] [nvarchar](256) NULL,
	[Phone] [nvarchar](256) NULL,
	[HouseOwnerName] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[HouseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HouseImg]    Script Date: 2019/5/8 19:07:56 ******/
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
/****** Object:  Table [dbo].[HouseOwner]    Script Date: 2019/5/8 19:07:56 ******/
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
/****** Object:  Table [dbo].[Tenant]    Script Date: 2019/5/8 19:07:56 ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2019/5/8 19:07:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/5/8 19:07:56 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/5/8 19:07:56 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2019/5/8 19:07:56 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2019/5/8 19:07:56 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2019/5/8 19:07:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [aspnet-Renting-b5f52eb5-8a03-4e0d-a3c5-455dd3cfd02d] SET  READ_WRITE 
GO
