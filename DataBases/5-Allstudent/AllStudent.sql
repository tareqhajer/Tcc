USE [master]
GO
/****** Object:  Database [TCC]    Script Date: 10/6/2020 5:04:56 PM ******/
CREATE DATABASE [TCC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TCC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TCC.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TCC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TCC_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TCC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TCC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TCC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TCC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TCC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TCC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TCC] SET ARITHABORT OFF 
GO
ALTER DATABASE [TCC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TCC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TCC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TCC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TCC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TCC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TCC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TCC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TCC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TCC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TCC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TCC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TCC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TCC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TCC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TCC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TCC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TCC] SET RECOVERY FULL 
GO
ALTER DATABASE [TCC] SET  MULTI_USER 
GO
ALTER DATABASE [TCC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TCC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TCC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TCC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TCC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TCC', N'ON'
GO
USE [TCC]
GO
/****** Object:  Table [dbo].[Attatchments]    Script Date: 10/6/2020 5:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attatchments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Attatchments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClosesetPersons]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClosesetPersons](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClosesetPersons] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colleges]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colleges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProvinceId] [int] NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Colleges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Constraints]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Constraints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[HonestyId] [int] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Constraints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MainCountry] [int] NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Counties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CrossOf]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CrossOf](
	[SSN] [nvarchar](50) NOT NULL,
	[RequserNumber] [int] NOT NULL,
	[date] [date] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CrossOf] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Deattach]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deattach](
	[SSN] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[Reason] [nvarchar](max) NOT NULL,
	[Decision] [nvarchar](max) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Deattach] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Degree]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DependenceSubject]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DependenceSubject](
	[subjectId] [int] NOT NULL,
	[dependsOnSubjectId] [int] NOT NULL,
	[IsEnabeld] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DependenceSubject] PRIMARY KEY CLUSTERED 
(
	[subjectId] ASC,
	[dependsOnSubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EquivalentSubject]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquivalentSubject](
	[FirstSubject] [int] NOT NULL,
	[SecoundSubject] [int] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_EquivalentSubject] PRIMARY KEY CLUSTERED 
(
	[FirstSubject] ASC,
	[SecoundSubject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExamSemester]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSemester](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SemesterNumber] [int] NOT NULL,
	[YearId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ExamSemester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExamSystem]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSystem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[HaveTheredSemester] [bit] NOT NULL,
	[IsDoubleExam] [bit] NOT NULL,
	[GraduateStudentsSemester] [int] NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ExamSystem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Graduation]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graduation](
	[SSN] [nvarchar](50) NOT NULL,
	[GraduationDesicion] [int] NOT NULL,
	[DesicionDate] [date] NOT NULL,
	[CollageDesicion] [int] NULL,
	[CDDate] [date] NULL,
	[MinistryApproval] [int] NULL,
	[ApprovalDate] [date] NULL,
	[GeneralAppreciation] [nvarchar](50) NULL,
	[GeneralAverage] [decimal](18, 0) NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Graduation] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nchar](10) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group_Privilage]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Privilage](
	[GroupId] [int] NOT NULL,
	[PrivilageId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Group_Privilage] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[PrivilageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Honesty]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Honesty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[CountryId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Honesty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Langaues]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Langaues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Langaues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityName] [nvarchar](50) NOT NULL,
	[BeforAction] [nvarchar](max) NULL,
	[AfterAction] [nvarchar](max) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MoreInformation]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MoreInformation](
	[SSN] [nvarchar](50) NOT NULL,
	[StudentWork] [nvarchar](max) NULL,
	[FatherWork] [nvarchar](max) NULL,
	[FatherBirthDay] [date] NULL,
	[FatherAge] [int] NULL,
	[FatherIncome] [int] NULL,
	[MotherFirstName] [nvarchar](50) NULL,
	[MotherLastName] [nvarchar](50) NULL,
	[MotherBirthDay] [date] NULL,
	[MotherAge] [int] NULL,
	[MotherWork] [nvarchar](max) NULL,
	[TemporaryAddress] [nvarchar](max) NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MoreInformation] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nationalies]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationalies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Nationalies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Partners]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[NationaliryId] [int] NOT NULL,
	[PartnerWork] [nvarchar](max) NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonPhone]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonPhone](
	[PersonId] [int] NOT NULL,
	[PhoneTypeId] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PersonPhone] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC,
	[PhoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhoneType]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhoneType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Privilage]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privilage](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Modified] [date] NULL,
 CONSTRAINT [PK_Privilage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registrations]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registrations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[YearId] [int] NOT NULL,
	[TypeOfRegistarId] [int] NOT NULL,
	[StudyYearId] [int] NOT NULL,
	[CardNumber] [nvarchar](50) NULL,
	[CardDate] [date] NULL,
	[StudentStateId] [int] NOT NULL,
	[SoldierDate] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[SystemNote] [nvarchar](max) NULL,
	[FinalStateId] [int] NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Registations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reparations]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reparations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Reparation] [nvarchar](100) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Reparations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sanctions]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanctions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sanction] [nvarchar](max) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Sanctions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SettingYearSystem]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SettingYearSystem](
	[YearSystem] [int] NOT NULL,
	[SettingId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SettingYearStstem] PRIMARY KEY CLUSTERED 
(
	[YearSystem] ASC,
	[SettingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siblings]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siblings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[_Work] [nvarchar](max) NULL,
	[SocialState] [int] NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Siblings_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SocialStates]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialStates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SocialStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specializations]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specializations](
	[Id] [char](1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Specializations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentAttachment]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAttachment](
	[SSN] [nvarchar](50) NOT NULL,
	[AttachmentId] [int] NOT NULL,
	[Attachemnt] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_StudentAttachment_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentDegree]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDegree](
	[DegreeId] [int] NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[Degree] [float] NOT NULL,
	[Source] [int] NOT NULL,
	[Date] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_StudentDegree_1] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentPhone]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPhone](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[PhoneTypeId] [int] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_StudentPhone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[SSN] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[FatherName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[BirthBlace] [nvarchar](max) NULL,
	[ConstraintId] [int] NULL,
	[ConstraintNumber] [smallint] NULL,
	[NationalityId] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
	[Sex] [bit] NOT NULL,
	[PermanentAddress] [nvarchar](max) NULL,
	[EnrollmentDate] [date] NOT NULL,
	[languageId] [int] NOT NULL,
	[TransformedFromId] [int] NULL,
	[SpecializationId] [char](1) NOT NULL,
	[CeasedFromTheCollage] [date] NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentState]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_StudentState] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentSubject]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSubject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SSN] [nvarchar](50) NOT NULL,
	[SubjectId] [int] NOT NULL,
	[practicalDegree] [float] NULL,
	[TheoreticlaDegree] [float] NULL,
	[ExamSemesterId] [int] NULL,
	[Note] [nvarchar](max) NULL,
	[SystemNote] [nvarchar](max) NULL,
	[HelpDegree] [bit] NULL CONSTRAINT [DF_StudentSubject_HelpDegree]  DEFAULT ((0)),
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_StudentSubject_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudyPlan]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudyPlan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[YearId] [int] NOT NULL,
	[SpecializationId] [char](1) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_StudyPlan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudySemester]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudySemester](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [smallint] NOT NULL,
	[StudyplanId] [int] NOT NULL,
	[StudyYearId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_StudySemester] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudyYear]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudyYear](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabeld] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_StudyYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PracticalTime] [int] NULL,
	[TheoreticalTime] [int] NULL,
	[SubjectTypeId] [int] NOT NULL,
	[StudySemesterId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubjectType]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[PracticalDegree] [int] NOT NULL,
	[NominateDegree] [int] NOT NULL,
	[TheoreticalDegree] [int] NOT NULL,
	[SuccessDegree] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SubjectType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trasmentd]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trasmentd](
	[SSN] [nvarchar](50) NOT NULL,
	[CollageId] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Trasmentd] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeOfRegistar]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfRegistar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_TypeOfRefistar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Modified] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Group]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Group](
	[User_ID] [int] NOT NULL,
	[Group_ID] [int] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Modified] [date] NULL,
 CONSTRAINT [PK_User_Group] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC,
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Years]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Years](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstYear] [int] NOT NULL,
	[SecondYear] [int] NOT NULL,
	[YearSystem] [int] NOT NULL,
	[ExamSystem] [int] NOT NULL,
	[Blocked] [bit] NOT NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Years] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YearSystem]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YearSystem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Created] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[Modified] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[IsMain] [bit] NOT NULL,
 CONSTRAINT [PK_YearSystem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Attatchments] ON 

INSERT [dbo].[Attatchments] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'صورة هوية', 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Attatchments] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'صورة شهادة', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Attatchments] OFF
SET IDENTITY_INSERT [dbo].[Colleges] ON 

INSERT [dbo].[Colleges] ([Id], [Name], [ProvinceId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'جامعة دمشق', 5, 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Colleges] ([Id], [Name], [ProvinceId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'جامعة القدس', 3, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Colleges] OFF
SET IDENTITY_INSERT [dbo].[Constraints] ON 

INSERT [dbo].[Constraints] ([Id], [Name], [HonestyId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'قيمرية جورة', 1, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Constraints] ([Id], [Name], [HonestyId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'قيد يافا', 2, 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
SET IDENTITY_INSERT [dbo].[Constraints] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'سوريا', NULL, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'لبنان', NULL, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'فلسطين', NULL, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'العراق', NULL, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'دمشق', 1, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'حيفا', 3, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'صيدا', 2, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'بغداد', 4, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Countries] ([Id], [Name], [MainCountry], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'دمشق', 3, 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'بكلوريا علمي', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Degree] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'بكلوريا مهني', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Degree] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'شريعة', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Degree] OFF
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (62, 73, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (63, 68, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (64, 67, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (65, 80, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (68, 80, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (69, 77, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (70, 79, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (70, 80, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (72, 80, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (74, 85, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (77, 83, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (78, 82, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (80, 86, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (87, 69, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (90, 95, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (91, 99, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (92, 101, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (93, 100, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (94, 108, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (95, 109, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (96, 104, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (99, 107, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (100, 102, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (101, 102, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (104, 112, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (106, 111, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (115, 96, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (118, 117, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (119, 118, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (120, 119, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (89, 61, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (99, 80, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (102, 76, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (103, 84, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (104, 83, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (107, 86, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (108, 71, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (109, 82, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (110, 75, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (111, 81, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (112, 83, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (113, 85, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (117, 83, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (118, 77, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (119, 69, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[EquivalentSubject] ([FirstSubject], [SecoundSubject], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (120, 87, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[ExamSemester] ON 

INSERT [dbo].[ExamSemester] ([Id], [SemesterNumber], [YearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1005, 1, 1003, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[ExamSemester] ([Id], [SemesterNumber], [YearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1006, 2, 1003, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[ExamSemester] ([Id], [SemesterNumber], [YearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1007, 1, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[ExamSemester] ([Id], [SemesterNumber], [YearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1008, 2, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[ExamSemester] OFF
SET IDENTITY_INSERT [dbo].[ExamSystem] ON 

INSERT [dbo].[ExamSystem] ([Id], [Name], [HaveTheredSemester], [IsDoubleExam], [GraduateStudentsSemester], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'نظام فصلين', 0, 1, NULL, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[ExamSystem] ([Id], [Name], [HaveTheredSemester], [IsDoubleExam], [GraduateStudentsSemester], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'فصلي مع دورة ثالثة', 1, 1, NULL, 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[ExamSystem] OFF
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([Id], [Name], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'admin', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Group] OFF
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 2, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 3, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 4, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 5, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 6, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 7, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 8, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 9, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 10, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 11, CAST(N'2020-04-04' AS Date), N'admin', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 12, CAST(N'2020-02-02' AS Date), N'admin', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 13, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 14, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 15, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 16, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 17, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 18, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 19, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 20, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 21, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 22, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 23, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 24, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 25, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 26, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 27, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 28, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 29, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 30, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 31, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 32, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 33, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 34, CAST(N'2020-04-05' AS Date), N'admin', NULL, N'')
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 35, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 36, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 37, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 38, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 39, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 40, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 41, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 42, CAST(N'2020-02-02' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 43, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 44, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 45, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 46, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 47, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 48, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 49, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 50, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 51, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 52, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 53, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 54, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 55, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 56, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 57, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 58, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 59, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 60, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 61, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 62, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 63, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 64, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 65, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 66, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 67, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 68, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 69, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 70, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 71, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 72, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 73, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 74, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 75, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 76, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 77, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 78, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 79, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 80, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 81, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 82, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 83, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 84, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 85, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 86, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 87, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 88, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 89, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Honesty] ON 

INSERT [dbo].[Honesty] ([Id], [Name], [IsEnabled], [CountryId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'الامانة المركزية', 1, 5, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Honesty] ([Id], [Name], [IsEnabled], [CountryId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'امانة فلسطين', 1, 6, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Honesty] OFF
SET IDENTITY_INSERT [dbo].[Langaues] ON 

INSERT [dbo].[Langaues] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'عربية', 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Langaues] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'انكليزية', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Langaues] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'فرنسية', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Langaues] OFF
SET IDENTITY_INSERT [dbo].[Log] ON 

INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6809, N'ExamSystem', NULL, N'DAL.Models.ExamSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6810, N'YearSystem', NULL, N'DAL.Models.YearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6811, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6812, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6813, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6814, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6815, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6816, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6817, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6818, N'SettingYearSystem', NULL, N'DAL.Models.SettingYearSystem', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6819, N'Years', NULL, N'DAL.Models.Years', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6820, N'ExamSemester', NULL, N'DAL.Models.ExamSemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6821, N'ExamSemester', NULL, N'DAL.Models.ExamSemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6822, N'Specializations', NULL, N'DAL.Models.Specializations', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6823, N'SubjectType', NULL, N'DAL.Models.SubjectType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6824, N'StudyPlan', NULL, N'DAL.Models.StudyPlan', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6825, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6826, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6827, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6828, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6829, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6830, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6831, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6832, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6833, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6834, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6835, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6836, N'SubjectType', NULL, N'DAL.Models.SubjectType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6837, N'SubjectType', N'DAL.Models.SubjectType', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6838, N'SubjectType', NULL, N'DAL.Models.SubjectType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6839, N'SubjectType', NULL, N'DAL.Models.SubjectType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6840, N'SubjectType', N'DAL.Models.SubjectType', N'DAL.Models.SubjectType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6841, N'SubjectType', NULL, N'DAL.Models.SubjectType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6842, N'Specializations', NULL, N'DAL.Models.Specializations', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6843, N'Specializations', NULL, N'DAL.Models.Specializations', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6844, N'Specializations', NULL, N'DAL.Models.Specializations', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6845, N'Specializations', N'DAL.Models.Specializations', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6846, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6847, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6848, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6849, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6850, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6851, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6852, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6853, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6854, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6855, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6856, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6857, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6858, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6859, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6860, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6861, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6862, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6863, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6864, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6865, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6866, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6867, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6868, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6869, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6870, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6871, N'StudyPlan', NULL, N'DAL.Models.StudyPlan', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6872, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6873, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6874, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6875, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6876, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6877, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6878, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6879, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6880, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6881, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6882, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6883, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6884, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6885, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6886, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6887, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6888, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6889, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6890, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6891, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6892, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6893, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6894, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6895, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6896, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6897, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6898, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6899, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6900, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6901, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6902, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6903, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6904, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6905, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6906, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6907, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
GO
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6908, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6909, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6910, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6911, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6912, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6913, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6914, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6915, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6916, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6917, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6918, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6919, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6920, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6921, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6922, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6923, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6924, N'StudyPlan', NULL, N'DAL.Models.StudyPlan', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6925, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6926, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6927, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6928, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6929, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6930, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6931, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6932, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6933, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6934, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6935, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6936, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6937, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6938, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6939, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6940, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6941, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6942, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6943, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6944, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6945, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6946, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6947, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6948, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6949, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6950, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6951, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6952, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6953, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6954, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6955, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6956, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6957, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6958, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6959, N'Degree', NULL, N'DAL.Models.Degree', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6960, N'Degree', NULL, N'DAL.Models.Degree', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6961, N'Degree', NULL, N'DAL.Models.Degree', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6962, N'Honesty', NULL, N'DAL.Models.Honesty', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6963, N'Honesty', NULL, N'DAL.Models.Honesty', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6964, N'Constraints', NULL, N'DAL.Models.Constraints', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6965, N'Constraints', N'DAL.Models.Constraints', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6966, N'Constraints', NULL, N'DAL.Models.Constraints', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6967, N'Constraints', NULL, N'DAL.Models.Constraints', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6968, N'Constraints', N'DAL.Models.Constraints', N'DAL.Models.Constraints', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6969, N'PhoneType', NULL, N'DAL.Models.PhoneType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6970, N'PhoneType', NULL, N'DAL.Models.PhoneType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6971, N'PhoneType', N'DAL.Models.PhoneType', N'DAL.Models.PhoneType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6972, N'PhoneType', N'DAL.Models.PhoneType', N'DAL.Models.PhoneType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6973, N'PhoneType', N'DAL.Models.PhoneType', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6974, N'PhoneType', NULL, N'DAL.Models.PhoneType', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6975, N'Langaues', NULL, N'DAL.Models.Langaues', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6976, N'Langaues', NULL, N'DAL.Models.Langaues', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6977, N'Langaues', NULL, N'DAL.Models.Langaues', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6978, N'Langaues', NULL, N'DAL.Models.Langaues', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6979, N'Langaues', N'DAL.Models.Langaues', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6980, N'Langaues', N'DAL.Models.Langaues', N'DAL.Models.Langaues', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6981, N'Colleges', NULL, N'DAL.Models.Colleges', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6982, N'Colleges', NULL, N'DAL.Models.Colleges', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6983, N'Colleges', NULL, N'DAL.Models.Colleges', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6984, N'Colleges', N'DAL.Models.Colleges', N'DAL.Models.Colleges', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6985, N'Colleges', N'DAL.Models.Colleges', N'DAL.Models.Colleges', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6986, N'Colleges', N'DAL.Models.Colleges', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6987, N'Nationalies', NULL, N'DAL.Models.Nationalies', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6988, N'Nationalies', NULL, N'DAL.Models.Nationalies', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6989, N'Nationalies', NULL, N'DAL.Models.Nationalies', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6990, N'Nationalies', NULL, N'DAL.Models.Nationalies', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6991, N'Nationalies', NULL, N'DAL.Models.Nationalies', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6992, N'Nationalies', N'DAL.Models.Nationalies', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6993, N'Nationalies', N'DAL.Models.Nationalies', N'DAL.Models.Nationalies', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6994, N'Attatchments', NULL, N'DAL.Models.Attatchments', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6995, N'Attatchments', N'DAL.Models.Attatchments', N'DAL.Models.Attatchments', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6996, N'Attatchments', NULL, N'DAL.Models.Attatchments', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6997, N'Attatchments', N'DAL.Models.Attatchments', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6998, N'Attatchments', NULL, N'DAL.Models.Attatchments', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (6999, N'TypeOfRegistar', NULL, N'DAL.Models.TypeOfRegistar', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7000, N'TypeOfRegistar', NULL, N'DAL.Models.TypeOfRegistar', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7001, N'TypeOfRegistar', N'DAL.Models.TypeOfRegistar', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7002, N'TypeOfRegistar', N'DAL.Models.TypeOfRegistar', N'DAL.Models.TypeOfRegistar', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7003, N'TypeOfRegistar', NULL, N'DAL.Models.TypeOfRegistar', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7004, N'SocialStates', NULL, N'DAL.Models.SocialStates', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7005, N'SocialStates', NULL, N'DAL.Models.SocialStates', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7006, N'SocialStates', NULL, N'DAL.Models.SocialStates', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7007, N'SocialStates', N'DAL.Models.SocialStates', N'DAL.Models.SocialStates', CAST(N'2020-10-05' AS Date), N'Admin')
GO
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7008, N'SocialStates', N'DAL.Models.SocialStates', N'Removed', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7009, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7010, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7011, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7012, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7013, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7014, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7015, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7016, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7017, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7018, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7019, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7020, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7021, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7022, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7023, N'StudyPlan', NULL, N'DAL.Models.StudyPlan', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7024, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7025, N'DependenceSubject', N'DAL.Models.DependenceSubject', N'Removed', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7026, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7027, N'EquivalentSubject', NULL, N'DAL.Models.EquivalentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7028, N'DependenceSubject', N'DAL.Models.DependenceSubject', N'Removed', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7029, N'DependenceSubject', NULL, N'DAL.Models.DependenceSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7030, N'EquivalentSubject', N'DAL.Models.EquivalentSubject', N'Removed', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7031, N'Countries', NULL, N'DAL.Models.Countries', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7032, N'User', NULL, N'DAL.Models.User', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7033, N'UserGroup', NULL, N'DAL.Models.UserGroup', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7034, N'Years', N'DAL.Models.Years', N'DAL.Models.Years', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7035, N'Years', NULL, N'DAL.Models.Years', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7036, N'ExamSemester', NULL, N'DAL.Models.ExamSemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7037, N'ExamSemester', NULL, N'DAL.Models.ExamSemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7038, N'StudyPlan', NULL, N'DAL.Models.StudyPlan', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7039, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7040, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7041, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7042, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7043, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7044, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7045, N'StudySemester', NULL, N'DAL.Models.StudySemester', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7046, N'Subjects', NULL, N'DAL.Models.Subjects', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7047, N'Specializations', N'DAL.Models.Specializations', N'DAL.Models.Specializations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7048, N'Specializations', N'DAL.Models.Specializations', N'DAL.Models.Specializations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7049, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7050, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7051, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7052, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7053, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7054, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7055, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7056, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7057, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7058, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7059, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7060, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7061, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7062, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7063, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7064, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7065, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7066, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7067, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7068, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7069, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7070, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7071, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7072, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7073, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7074, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7075, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7076, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7077, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7078, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7079, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7080, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7081, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7082, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7083, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7084, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7085, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7086, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7087, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7088, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7089, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7090, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7091, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7092, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7093, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7094, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7095, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7096, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7097, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7098, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7099, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7100, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7101, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7102, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7103, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7104, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7105, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7106, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7107, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
GO
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7108, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7109, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7110, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7111, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7112, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7113, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7114, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7115, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7116, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7117, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7118, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7119, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7120, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7121, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7122, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7123, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7124, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7125, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7126, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7127, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7128, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7129, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7130, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7131, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7132, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7133, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7134, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7135, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7136, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7137, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7138, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7139, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7140, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7141, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7142, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7143, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7144, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7145, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7146, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7147, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7148, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7149, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7150, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7151, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7152, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7153, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7154, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7155, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7156, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7157, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7158, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7159, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7160, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7161, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7162, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7163, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7164, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7165, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7166, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7167, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7168, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7169, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7170, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7171, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7172, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7173, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7174, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7175, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7176, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7177, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7178, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7179, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7180, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7181, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7182, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7183, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7184, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7185, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7186, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7187, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7188, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7189, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7190, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7191, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7192, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7193, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7194, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7195, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7196, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7197, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7198, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7199, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7200, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7201, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7202, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7203, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7204, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7205, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7206, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7207, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
GO
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7208, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7209, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7210, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7211, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7212, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7213, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7214, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7215, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7216, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7217, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7218, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7219, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7220, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7221, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7222, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7223, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7224, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7225, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7226, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7227, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7228, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7229, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7230, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7231, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7232, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7233, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7234, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7235, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7236, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7237, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7238, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7239, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7240, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7241, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7242, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7243, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7244, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7245, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7246, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7247, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7248, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7249, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7250, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7251, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7252, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7253, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7254, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7255, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7256, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7257, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7258, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7259, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7260, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7261, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7262, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7263, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7264, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7265, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7266, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7267, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7268, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7269, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7270, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7271, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7272, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7273, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7274, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7275, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7276, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7277, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7278, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7279, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7280, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7281, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7282, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7283, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7284, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7285, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7286, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7287, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7288, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7289, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7290, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7291, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7292, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7293, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7294, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7295, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7296, N'Registrations', NULL, N'DAL.Models.Registrations', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7297, N'MoreInformation', NULL, N'DAL.Models.MoreInformation', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7298, N'StudentDegree', NULL, N'DAL.Models.StudentDegree', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7299, N'Students', NULL, N'DAL.Models.Students', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7300, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7301, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7302, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7303, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7304, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7305, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7306, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7307, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
GO
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7308, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7309, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7310, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7311, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7312, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7313, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7314, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7315, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7316, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7317, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7318, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7319, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7320, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7321, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7322, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7323, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7324, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7325, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7326, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7327, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7328, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7329, N'ExamSystem', NULL, N'DAL.Models.ExamSystem', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7330, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7331, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7332, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7333, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7334, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7335, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7336, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7337, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7338, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7339, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7340, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7341, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7342, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7343, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7344, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7345, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7346, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7347, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7348, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7349, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7350, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7351, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7352, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7353, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7354, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7355, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7356, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7357, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7358, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7359, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7360, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7361, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7362, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7363, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7364, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7365, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7366, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7367, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7368, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7369, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7370, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7371, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7372, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7373, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7374, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7375, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7376, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7377, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7378, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7379, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7380, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7381, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7382, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7383, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7384, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7385, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7386, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7387, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7388, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7389, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7390, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7531, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7532, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7533, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7534, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7535, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7536, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7537, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7538, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7539, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7540, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7541, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7542, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7543, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7544, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7545, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7546, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7547, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
GO
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7548, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7549, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7550, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7551, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7552, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7553, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7554, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7555, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7556, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7557, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7558, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7559, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7560, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7561, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7562, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7563, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7564, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7565, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7566, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7567, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7568, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7569, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7570, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7571, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7572, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7573, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7574, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7575, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7576, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7577, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7578, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7579, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7580, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7581, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7582, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7583, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7584, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7585, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7586, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7587, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7588, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7589, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7590, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7591, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7592, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7593, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7594, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7595, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7596, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7597, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7598, N'StudentSubject', NULL, N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7599, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7600, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7601, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Log] ([Id], [EntityName], [BeforAction], [AfterAction], [Created], [CreatedBy]) VALUES (7602, N'StudentSubject', N'DAL.Models.StudentSubject', N'DAL.Models.StudentSubject', CAST(N'2020-10-06' AS Date), N'Admin')
SET IDENTITY_INSERT [dbo].[Log] OFF
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H14001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H14002', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H15001', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H15002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20002', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20003', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S14001', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S15001', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20001', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20002', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[MoreInformation] ([SSN], [StudentWork], [FatherWork], [FatherBirthDay], [FatherAge], [FatherIncome], [MotherFirstName], [MotherLastName], [MotherBirthDay], [MotherAge], [MotherWork], [TemporaryAddress], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20004', NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, NULL, CAST(N'2020-02-01' AS Date), NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Nationalies] ON 

INSERT [dbo].[Nationalies] ([Id], [Name], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'سورية', CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Nationalies] ([Id], [Name], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'فلسطينية', CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Nationalies] ([Id], [Name], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'تركية', CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[Nationalies] ([Id], [Name], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'عراقية', CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Nationalies] OFF
SET IDENTITY_INSERT [dbo].[PhoneType] ON 

INSERT [dbo].[PhoneType] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'هاتف أرضي', 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[PhoneType] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'هاتف نقال', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[PhoneType] OFF
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, N'CreateGroup', N'إنشاء مجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (2, N'ShowGroup', N'عرض المجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (3, N'UpdateGroup', N'التعديل على المجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (4, N'DeleteGroup', N'حذف المجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (5, N'ShowUser', N'عرض المستخدمين', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (6, N'AddUser', N'إنشاء مستخدمين', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (7, N'UpdateUser', N'تعديل المستخدمين', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (8, N'AddAttachment', N'إضافة انواع مرفقات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (9, N'ShowAttachment', N'عرض انواع المرفقات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (10, N'UpdateAttachment', N'التعديل على انواع المرفقات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (11, N'AddCountry', N'إضافة مدن', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (12, N'RemoveAttachment', N'حذف المرفقات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (13, N'ShowCountries', N'عرض البلدان', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (14, N'UpdateCountry', N'تعديل البلدان', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (15, N'RemoveCountry', N'حذف البلدان', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (16, N'AddDegree', N'اضافة شهادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (17, N'ShowDegree', N'عرض الشهادات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (18, N'UpdateDegree', N'تعديل على الشهادات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (19, N'RemoveDegree', N'حذف الشهادات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (20, N'ShowCities', N'عرض المدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (21, N'AddCity', N'اضافة مدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (22, N'UpdateCity', N'تعديل على المدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (23, N'RemoveCity', N'حذف مدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (24, N'AddCollege', N'اضافة جامعات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (25, N'ShowColleges', N'عرض جامعات', CAST(N'2020-03-03' AS Date), N'sysetm', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (26, N'UpdateCollege', N'تعديل على الجامعات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (27, N'RemoveCollege', N'حذف الجامعات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (28, N'AddConstraint', N'اضافة قيد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (29, N'ShowConstraint', N'عرض القيد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (30, N'UpdateConstraint', N'تعديل على القيود', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (31, N'RemoveConstraint', N'حذف القيد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (32, N'AddHonesty', N'اضافة امانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (33, N'ShowHonesty', N'عرض الامانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (34, N'UpdateHonesty', N'تعديل على الامانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (35, N'RemoveHonesty', N'حذف الامانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (36, N'AddLanguage', N'اضافة لغات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (37, N'ShowLanguages', N'عرض لغات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (38, N'UpdateLanguage', N'تعديل على اللغات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (39, N'RemoveLanguage', N'حذف اللفات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (40, N'AddNationality', N'اضافة جنسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (41, N'ShowNationality', N'عرض جننسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (42, N'UpdateNationality', N'تعديل على الجنسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (43, N'RemoveNationality', N'حذف الجنسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (44, N'AddPhoneType', N'اضافة انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (45, N'ShowPhoneType', N'عرض انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (46, N'UpdatePhoneType', N'تعديل على انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (47, N'RemovePhoneType', N'حذف انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (48, N'ShowPrivilage', N'عرض السماحيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (49, N'AddSocialStates', N'اضافة الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (50, N'ShowSocialStates', N'عرض الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (51, N'UpdateSocialStates', N'تعديل على الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (52, N'RemoveSocialStates', N'حذف الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (53, N'AddSpecialization', N'اضافة اختصاص', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (54, N'ShowSpecialization', N'عرض الاختصاصات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (55, N'UpdateSpecialization', N'تعديل على الاختصاص', CAST(N'2020-03-30' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (56, N'RemoveSpecializations', N'حذف الاختصاص', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (57, N'AddTypeOfRegistar', N'اضافة نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (58, N'ShowTypeOfRegistar', N'عرض نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (59, N'UpdateTypeOfRegistar', N'تعديل على نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (60, N'RemoveTypeOfRegistar', N'حذف نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (61, N'AddStudent', N'اضافة طالب', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (62, N'ShowStudent', N'عرض الطلاب', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (63, N'UploadImage', N'رفع الصورة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (64, N'UpdateStudent', N'تعديل الطالب', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (65, N'RemoveStudent', N'حذف الطالب', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (66, N'GetStudentPracticalDegree', N'عرض شهادة الطالب العلمية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (67, N'SetStudentsDegreeBySubject', N'تحديد علامة الطالب من خلال المادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (68, N'CanReset', N'المواد الممكن تصفيرها', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (69, N'Reset', N'تصفير المواد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (70, N'ShowStudyPlan', N'عرض الخطة الدراسية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (71, N'UpdateStudyPlan', N'تعديل الخطة الدراسية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (72, N'RemoveStudyPlan', N'حذف الخطة الدراسية ', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (73, N'ShowStudyYear', N'عرض السنة الدراسية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (74, N'ShowSubject', N'عرض المواد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (75, N'AddSubject', N'اضافةمادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (76, N'RemoveSubject', N'حذف المادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (77, N'UpdateSubject', N'تعديل المادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (78, N'AddSubjectType', N'اضافة نوع مادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (79, N'ShowSubjectType', N'عرض نوع ماة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (80, N'UpdateSubjectType', N'تعديل نوع المادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (81, N'RemoveSubjectType', N'حذف نوع المادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (82, N'RemoveUser', N'حذف المستخدم', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (83, N'AddYear', N'اضافة سنة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (84, N'ShowYears', N'عرض السنين', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (85, N'AddYearSystem', N'اضافة نظام سنة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (86, N'ShowYearSystem', N'عرض نظام السنة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (87, N'RemoveYearSystem', N'حذف نظام السنة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (88, N'SetDegreeForTransformStudent', N'وضع علامات للطالب المنقول', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (89, N'StudentPreviousYearSetting', N'نظام السن  السابقة للطالب', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Registrations] ON 

INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'H20001', 1004, 3, 1, N'1', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'H20002', 1004, 3, 1, N'2', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'H20003', 1004, 2, 1, N'3', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'H20004', 1004, 2, 1, N'4', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'S20001', 1004, 3, 1, N'5', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'S20002', 1004, 3, 1, N'6', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'S20003', 1004, 3, 1, N'7', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'S20004', 1004, 2, 1, N'8', CAST(N'2020-10-28' AS Date), 1, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'H14001', 1004, 2, 1, N'9', CAST(N'2020-10-28' AS Date), 2, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (10, N'S15001', 1004, 3, 1, N'10', CAST(N'2020-10-28' AS Date), 4, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (11, N'S14001', 1004, 3, 1, N'11', CAST(N'2020-10-28' AS Date), 2, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (12, N'H15001', 1004, 2, 1, N'12', CAST(N'2020-10-28' AS Date), 4, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (13, N'H15002', 1004, 3, 1, N'13', CAST(N'2020-10-28' AS Date), 4, NULL, NULL, NULL, NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Registrations] ([Id], [SSN], [YearId], [TypeOfRegistarId], [StudyYearId], [CardNumber], [CardDate], [StudentStateId], [SoldierDate], [Note], [SystemNote], [FinalStateId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (14, N'H14002', 1004, 2, 1, N'14', CAST(N'2020-10-28' AS Date), 3, NULL, NULL, N'تسجيل بنجاح إداري', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Registrations] OFF
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'عدد مواد الترفع الإداري', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'عدد المواد للطالب خارج المعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'عدد علامات المساعدة لطالب خارج اللمعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'تقسم العلامات المساعدة للطالب خارج المعهد على', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'عدد علامات المساعدة للطالب الذي سوف يصبح مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'عدد المواد التي تقسم عليها علامات المساعدة للطالب الذوي سوف يصبح مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'عدد علامات المساعدة للطالب الذي سوف يصبح راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'عدد المواد التي تقسم عليها علامات المساعدة للطالب الذي سوف يصبح راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 1, 9, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 2, 4, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 4, 4, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 5, 2, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 6, 6, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 7, 3, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 8, 4, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 9, 2, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[SocialStates] ON 

INSERT [dbo].[SocialStates] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'اعزب', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[SocialStates] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'متزوج', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[SocialStates] OFF
INSERT [dbo].[Specializations] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H', N'هندسة برمجيات', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Specializations] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'M', N'هندسة الحواسيب', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Specializations] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S', N'هندسة شبكات', 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'H14001', 222, 3, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'H14002', 222, 1, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'H15001', 222, 4, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'H15002', 222, 3, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'H20001', 200, 1, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'H20002', 222, 1, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'H20003', 222, 2, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'H20004', 222, 2, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'S14001', 222, 1, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'S15001', 222, 2, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'S20001', 222, 2, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'S20002', 222, 2, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'S20003', 222, 2, 1004, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentDegree] ([DegreeId], [SSN], [Degree], [Source], [Date], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'S20004', 222, 2, 1003, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H14001', N'طالب9', N'اب9', N'كنيىة9', CAST(N'2020-10-28' AS Date), N'دمشق', 3, 2, 1, 9, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 3, 3, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H14002', N'طالب14', N'اب14', N'كنية14', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 1, 8, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 4, 1, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H15001', N'طالب12', N'اب12', N'كنية12', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 3, 6, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 3, 1, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H15002', N'طالب13', N'اب4', N'كنية4', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 1, 9, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 2, 1, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20001', N'طالب1', N'اب1', N'كنية1', CAST(N'2020-10-28' AS Date), N'دمشق1', NULL, NULL, 1, 5, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 3, NULL, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20002', N'طالب2', N'اب2', N'كنية2', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 1, 5, 0, NULL, CAST(N'2020-10-06' AS Date), 3, NULL, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20003', N'طالب3', N'اب3', N'كنية3', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 2, 7, 1, N'دمشق', CAST(N'2020-10-06' AS Date), 4, NULL, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H20004', N'طالب4', N'اب 4', N'كنية4', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 2, 8, 0, NULL, CAST(N'2020-10-06' AS Date), 3, NULL, N'H', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S14001', N'طالب11', N'اب11', N'كنية11', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 1, 8, 0, N'دمشق11', CAST(N'2020-10-06' AS Date), 2, 3, N'S', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S15001', N'طالب10', N'اب10', N'كنية10', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 1, 8, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 3, 1, N'S', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20001', N'طالب5', N'اب5', N'كنية5', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 1, 8, 1, N'دمشق', CAST(N'2020-10-06' AS Date), 3, NULL, N'S', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20002', N'طالب6', N'اب6', N'كنية6', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 2, 9, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 2, NULL, N'S', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20003', N'طالب7', N'اب7', N'كنية7', CAST(N'2020-10-28' AS Date), N'دمشق', NULL, NULL, 3, 5, 0, N'دمشق', CAST(N'2020-10-06' AS Date), 3, NULL, N'S', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Students] ([SSN], [FirstName], [FatherName], [LastName], [BirthDate], [BirthBlace], [ConstraintId], [ConstraintNumber], [NationalityId], [ProvinceId], [Sex], [PermanentAddress], [EnrollmentDate], [languageId], [TransformedFromId], [SpecializationId], [CeasedFromTheCollage], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S20004', N'طالب8', N'اب8', N'كنية8', CAST(N'2020-10-28' AS Date), N'دمشق', 3, 1, 2, 8, 1, N'دمشق', CAST(N'2020-10-06' AS Date), 3, NULL, N'S', NULL, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[StudentState] ON 

INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'مستجد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'ناجح', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'منقول', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'خارج المعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'مرسوم', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'?????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'متخرج', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[StudentState] OFF
SET IDENTITY_INSERT [dbo].[StudentSubject] ON 

INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'H20001', 78, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'H20001', 77, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'H20001', 76, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'H20001', 75, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'H20001', 74, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'H20001', 86, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'H20001', 85, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'H20001', 84, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'H20001', 83, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (10, N'H20001', 82, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (11, N'H20001', 81, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (12, N'H20001', 61, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (13, N'H20001', 79, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (14, N'H20001', 80, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (15, N'H20002', 78, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (16, N'H20002', 77, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (17, N'H20002', 76, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (18, N'H20002', 75, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (19, N'H20002', 74, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (20, N'H20002', 86, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (21, N'H20002', 85, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (22, N'H20002', 84, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (23, N'H20002', 83, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (24, N'H20002', 82, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (25, N'H20002', 81, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (26, N'H20002', 61, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (27, N'H20002', 79, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (28, N'H20002', 80, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (29, N'H20003', 78, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (30, N'H20003', 77, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (31, N'H20003', 76, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (32, N'H20003', 75, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (33, N'H20003', 74, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (34, N'H20003', 86, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (35, N'H20003', 85, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (36, N'H20003', 84, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (37, N'H20003', 83, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (38, N'H20003', 82, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (39, N'H20003', 81, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (40, N'H20003', 61, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (41, N'H20003', 79, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (42, N'H20003', 80, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (43, N'H20004', 78, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (44, N'H20004', 77, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (45, N'H20004', 76, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (46, N'H20004', 75, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (47, N'H20004', 74, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (48, N'H20004', 86, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (49, N'H20004', 85, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (50, N'H20004', 84, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (51, N'H20004', 83, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (52, N'H20004', 82, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (53, N'H20004', 81, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (54, N'H20004', 61, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (55, N'H20004', 79, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (56, N'H20004', 80, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (57, N'S20001', 106, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (58, N'S20001', 105, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (59, N'S20001', 104, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (60, N'S20001', 103, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (61, N'S20001', 102, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (62, N'S20001', 114, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (63, N'S20001', 113, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (64, N'S20001', 112, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (65, N'S20001', 111, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (66, N'S20001', 110, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (67, N'S20001', 109, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (68, N'S20001', 89, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (69, N'S20001', 107, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (70, N'S20001', 108, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (71, N'S20002', 106, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (72, N'S20002', 105, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (73, N'S20002', 104, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (74, N'S20002', 103, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (75, N'S20002', 102, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (76, N'S20002', 114, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (77, N'S20002', 113, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (78, N'S20002', 112, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (79, N'S20002', 111, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (80, N'S20002', 110, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (81, N'S20002', 109, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (82, N'S20002', 89, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (83, N'S20002', 107, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (84, N'S20002', 108, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (85, N'S20003', 106, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (86, N'S20003', 105, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (87, N'S20003', 104, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (88, N'S20003', 103, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (89, N'S20003', 102, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (90, N'S20003', 114, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (91, N'S20003', 113, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (92, N'S20003', 112, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (93, N'S20003', 111, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (94, N'S20003', 110, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (95, N'S20003', 109, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (96, N'S20003', 89, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (97, N'S20003', 107, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (98, N'S20003', 108, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (99, N'S20004', 106, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
GO
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (100, N'S20004', 105, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (101, N'S20004', 104, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (102, N'S20004', 103, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (103, N'S20004', 102, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (104, N'S20004', 114, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (105, N'S20004', 113, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (106, N'S20004', 112, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (107, N'S20004', 111, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (108, N'S20004', 110, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (109, N'S20004', 109, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (110, N'S20004', 89, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (111, N'S20004', 107, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (112, N'S20004', 108, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (113, N'H14001', 78, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (114, N'H14001', 77, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (115, N'H14001', 76, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (116, N'H14001', 75, 0, 50, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (117, N'H14001', 74, 30, 30, NULL, N'', NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (118, N'H14001', 86, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (119, N'H14001', 85, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (120, N'H14001', 84, 0, 50, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (121, N'H14001', 83, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (122, N'H14001', 82, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (123, N'H14001', 81, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (124, N'H14001', 61, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (125, N'H14001', 79, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (126, N'H14001', 80, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (127, N'S15001', 106, 22, 33, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (128, N'S15001', 105, 12, 32, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (129, N'S15001', 104, 22, 54, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (130, N'S15001', 103, 0, 45, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (131, N'S15001', 102, 22, 32, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (132, N'S15001', 114, 22, 34, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (133, N'S15001', 113, 22, 43, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (134, N'S15001', 112, 12, 44, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (135, N'S15001', 111, 23, 54, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (136, N'S15001', 110, 0, 100, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (137, N'S15001', 109, 34, 23, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (138, N'S15001', 89, 23, 12, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (139, N'S15001', 107, 23, 23, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (140, N'S15001', 108, 23, 23, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (141, N'S14001', 106, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (142, N'S14001', 105, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (143, N'S14001', 104, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (144, N'S14001', 103, 0, 50, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (145, N'S14001', 102, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (146, N'S14001', 114, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (147, N'S14001', 113, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (148, N'S14001', 112, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (149, N'S14001', 111, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (150, N'S14001', 110, 0, 50, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (151, N'S14001', 109, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (152, N'S14001', 89, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (153, N'S14001', 107, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (154, N'S14001', 108, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (155, N'H15001', 78, 22, 21, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (156, N'H15001', 77, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (157, N'H15001', 76, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (158, N'H15001', 75, 0, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (159, N'H15001', 74, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (160, N'H15001', 86, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (161, N'H15001', 85, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (162, N'H15001', 84, 0, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (163, N'H15001', 83, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (164, N'H15001', 82, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (165, N'H15001', 81, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (166, N'H15001', 61, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (167, N'H15001', 79, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (168, N'H15001', 80, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (169, N'H15002', 78, 22, 44, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (170, N'H15002', 77, 22, 44, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (171, N'H15002', 76, 22, 44, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (172, N'H15002', 75, 0, 55, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (173, N'H15002', 74, 22, 55, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (174, N'H15002', 86, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (175, N'H15002', 85, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (176, N'H15002', 84, 0, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (177, N'H15002', 83, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (178, N'H15002', 82, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (179, N'H15002', 81, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (180, N'H15002', 61, 22, 22, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (181, N'H15002', 79, 22, 44, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (182, N'H15002', 80, 22, 44, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (183, N'H14002', 78, 5, 0, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (184, N'H14002', 77, 12, 0, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (185, N'H14002', 76, 12, 0, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (186, N'H14002', 75, 0, 50, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (187, N'H14002', 74, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (188, N'H14002', 86, 22, 60, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (189, N'H14002', 85, 30, 30, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (190, N'H14002', 84, 0, 24, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (191, N'H14002', 83, 15, 40, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (192, N'H14002', 82, 22, NULL, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (193, N'H14002', 81, 13, 50, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (194, N'H14002', 61, 22, 40, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (195, N'H14002', 79, 15, 60, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (196, N'H14002', 80, 30, 33, NULL, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (197, N'S14001', 92, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (198, N'S14001', 91, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (199, N'S14001', 93, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
GO
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (200, N'S14001', 90, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (201, N'S14001', 115, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (202, N'S14001', 95, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (203, N'S14001', 101, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (204, N'S14001', 94, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (205, N'S14001', 99, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (206, N'S14001', 98, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (207, N'S14001', 97, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (208, N'S14001', 96, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (209, N'S14001', 116, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (210, N'S14001', 100, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (211, N'H14001', 66, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (212, N'H14001', 65, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (213, N'H14001', 87, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (214, N'H14001', 64, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (215, N'H14001', 62, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (216, N'H14001', 67, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (217, N'H14001', 73, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (218, N'H14001', 88, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (219, N'H14001', 71, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (220, N'H14001', 70, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (221, N'H14001', 69, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (222, N'H14001', 68, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (223, N'H14001', 63, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (224, N'H14001', 72, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (225, N'H14002', 76, 12, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (226, N'H14002', 78, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (227, N'H14002', 84, 0, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (228, N'H14002', 88, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (229, N'H14002', 77, 12, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (230, N'H14002', 70, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (231, N'H14002', 66, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (232, N'H14002', 82, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (233, N'H14002', 65, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (234, N'H14002', 64, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (235, N'H14002', 63, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (236, N'H14002', 62, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (237, N'H14002', 73, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (238, N'H14002', 72, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (239, N'H14002', 67, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (240, N'H14002', 71, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (241, N'H14002', 68, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (242, N'H14002', 87, NULL, NULL, 1008, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (243, N'H14002', 69, NULL, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (253, N'H15001', 61, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (254, N'H15001', 81, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (255, N'H15001', 79, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (256, N'H15001', 82, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (257, N'H15001', 84, 0, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (258, N'H15001', 78, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (259, N'H15001', 85, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (260, N'H15001', 80, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (261, N'H15001', 74, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (262, N'H15001', 75, 0, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (263, N'H15001', 76, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (264, N'H15001', 77, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (265, N'H15001', 83, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (266, N'H15001', 86, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (267, N'H15002', 86, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (268, N'H15002', 61, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (269, N'H15002', 85, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (270, N'H15002', 84, 0, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (271, N'H15002', 83, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (272, N'H15002', 82, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (273, N'H15002', 81, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (274, N'S15001', 114, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (275, N'S15001', 103, 0, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (276, N'S15001', 109, 34, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (277, N'S15001', 108, 23, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (278, N'S15001', 89, 23, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (279, N'S15001', 105, 12, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (280, N'S15001', 107, 23, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (281, N'S15001', 106, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudentSubject] ([Id], [SSN], [SubjectId], [practicalDegree], [TheoreticlaDegree], [ExamSemesterId], [Note], [SystemNote], [HelpDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (282, N'S15001', 102, 22, NULL, 1007, NULL, NULL, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[StudentSubject] OFF
SET IDENTITY_INSERT [dbo].[StudyPlan] ON 

INSERT [dbo].[StudyPlan] ([Id], [YearId], [SpecializationId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, 1003, N'H', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudyPlan] ([Id], [YearId], [SpecializationId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, 1003, N'S', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudyPlan] ([Id], [YearId], [SpecializationId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, 1003, N'M', 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudyPlan] ([Id], [YearId], [SpecializationId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, 1004, N'M', 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[StudyPlan] OFF
SET IDENTITY_INSERT [dbo].[StudySemester] ON 

INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (13, 1, 4, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (14, 2, 4, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (15, 1, 4, 2, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (16, 2, 4, 2, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (17, 1, 5, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (18, 2, 5, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (19, 1, 5, 2, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (20, 2, 5, 2, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (21, 1, 6, 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (22, 2, 6, 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (23, 1, 6, 2, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (24, 2, 6, 2, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (25, 1, 7, 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (26, 2, 7, 1, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (27, 1, 7, 2, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (28, 2, 7, 2, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[StudySemester] OFF
SET IDENTITY_INSERT [dbo].[StudyYear] ON 

INSERT [dbo].[StudyYear] ([Id], [Name], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'اولى', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudyYear] ([Id], [Name], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'ثانية', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[StudyYear] OFF
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (61, N'Hasu', N'اسس هندسة الكهربا', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (62, N'Hora2', N'قواعد معطيات 2', 2, 2, 7, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (63, N'Hadv2', N'برمجة متقدمة 2', 2, 2, 7, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (64, N'Hhnd', N'هندسة برمجيات', 2, 2, 10, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (65, N'Hmult', N'وسائط متعددة', 2, 2, 7, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (66, N'Hsec', N'امن معلومات', 2, 2, 8, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (67, N'Hana', N'نظم تحليل', 2, 2, 8, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (68, N'Hadv1', N'برمجة متقدمة 1', 2, 2, 7, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (69, N'Heng3', N'انكليزي 3', 2, 2, 8, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (70, N'Htec', N'تقانات انترنت', 2, 2, 7, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (71, N'Hetc', N'اتصالات رقمية', 2, 2, 7, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (72, N'Halg', N'خوارزميات', 2, 2, 7, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (73, N'Hora1', N'قواعد معطيات 1', 2, 2, 7, 15, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (74, N'Hmath2', N'رياضيات 2', 2, 2, 8, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (75, N'Hkau', N'ثقافة', 2, 2, 11, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (76, N'Hnet', N'شبكات', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (77, N'Heng2', N'انكليزي 2', 2, 2, 8, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (78, N'Hopr2', N'نظم تشغيل 2', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (79, N'Hhtml', N'تصميم ويب', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (80, N'Hpro2', N'برمجة 2', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (81, N'Hcom', N'مدخل الى الحاسوب', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (82, N'Hopr', N'نظم تشغيل 1', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (83, N'Heng', N'انكليزي 1', 2, 2, 8, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (84, N'Harb', N'عربي', 2, 2, 11, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (85, N'Hmath', N'رياضيات 1', 2, 2, 8, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (86, N'Hpro', N'برمجة 1', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (87, N'Heng4', N'انكليزي 4', 2, 2, 8, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (88, N'Hproject', N'مشروع التخرج', 2, 2, 9, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (89, N'Sasus', N'اسس هندسة كهرباء', 2, 2, 7, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (90, N'Sopr2', N'نظم تشغيل شبكية 2', 2, 2, 7, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (91, N'Spro3', N'برمجة', 2, 2, 7, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (92, N'Ssec2', N'امن شبكات 2', 2, 2, 7, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (93, N'ٍٍSman', N'ادارة شبكات', 1, 1, 7, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (94, N'Setcm', N'اتصالات حديثة', 2, 2, 7, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (95, N'Sopr', N'نظم تشغيل شبكية', 2, 2, 7, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (96, N'Seng3', N'انكليزي 3', 2, 2, 8, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (97, N'Stec', N'تقانات انترنت', 2, 2, 7, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (98, N'Sora', N'قواعد معطيات', 2, 2, 8, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (99, N'Spro2', N'برمجة 2', 2, 2, 7, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (100, N'Sdes', N'تصميم شبكات', 2, 2, 7, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (101, N'Ssec', N'امن شبكات', 2, 2, 8, 19, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (102, N'Snet', N'شبكات', 2, 2, 7, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (103, N'Sarb', N'عربي', 2, 2, 11, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (104, N'Seng2', N'انكليزي 2', 2, 2, 8, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (105, N'Ssea', N'صيانة الحواسيب', 2, 2, 7, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (106, N'Sbun', N'بنية وتنظيم الحاسوب', 2, 2, 7, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (107, N'Spro', N'برمجة 1', 2, 2, 7, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (108, N'Setc', N'اتصالت رقمية', 2, 2, 8, 18, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (109, N'Sopr ', N'نظم تشغيل 1', 2, 2, 7, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (110, N'Skau', N'ثقافة', 2, 2, 11, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (111, N'Scom', N'مدخل الى الحاسوب', 2, 2, 7, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (112, N'Seng1', N'انكليزي 1', 2, 2, 8, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (113, N'Smath', N'رياضيات حاسوبية', 2, 2, 8, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (114, N'Scir', N'دارات منطقية', 2, 2, 7, 17, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (115, N'Seng4', N'انكليزي 4', 2, 2, 8, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (116, N'Sproject', N'مشروع التخرج', 2, 2, 9, 20, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (117, N'a', N'a', 1, 1, 7, 21, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (118, N'b', N'b', 2, 2, 10, 22, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (119, N'c', N'c', 3, 3, 8, 23, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (120, N'd', N'd', 4, 4, 10, 24, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (121, N'ثصث', N'ضصثض', 2, 2, 8, 25, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (122, N'2ثص', N'صسيشص', 2, 2, 9, 26, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (123, N'2ثصسي', N'ثصسث', 2, 2, 8, 27, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (124, N'سيرل', N'صص', 2, 2, 9, 28, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
SET IDENTITY_INSERT [dbo].[SubjectType] ON 

INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'اختصاصية', 1, 40, 12, 60, 60, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'غير اختصاصية نظرية', 1, 30, 9, 70, 50, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'مشروع', 1, 40, 12, 60, 60, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (10, N'اختصاصي نظري', 1, 40, 12, 60, 50, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (11, N'من مئة', 1, 0, 0, 100, 50, CAST(N'2020-02-02' AS Date), N'gawad', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SubjectType] OFF
SET IDENTITY_INSERT [dbo].[TypeOfRegistar] ON 

INSERT [dbo].[TypeOfRegistar] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'موازي', 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[TypeOfRegistar] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'عام', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[TypeOfRegistar] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [username], [password], [IsEnabled], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, N'مسؤول النظام', N'admin', N'21232f297a57a5a743894a0e4a801fc3', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[User] ([Id], [Name], [username], [password], [IsEnabled], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (2, N'adminششش', N'adminششش', N'4297f44b13955235245b2497399d7a93', 1, CAST(N'2020-10-06' AS Date), N'Admin', N'', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[User_Group] ([User_ID], [Group_ID], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, 1, CAST(N'2020-01-01' AS Date), N'system', NULL, NULL)
INSERT [dbo].[User_Group] ([User_ID], [Group_ID], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (2, 1, CAST(N'2020-10-06' AS Date), N'Admin', N'', NULL)
SET IDENTITY_INSERT [dbo].[Years] ON 

INSERT [dbo].[Years] ([Id], [FirstYear], [SecondYear], [YearSystem], [ExamSystem], [Blocked], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1003, 2014, 2015, 3, 4, 1, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-06' AS Date), N'Admin')
INSERT [dbo].[Years] ([Id], [FirstYear], [SecondYear], [YearSystem], [ExamSystem], [Blocked], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1004, 2015, 2016, 3, 4, 0, CAST(N'2020-10-06' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Years] OFF
SET IDENTITY_INSERT [dbo].[YearSystem] ON 

INSERT [dbo].[YearSystem] ([Id], [Name], [Note], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsMain]) VALUES (3, N'ترفع اداري', NULL, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'', 1)
SET IDENTITY_INSERT [dbo].[YearSystem] OFF
/****** Object:  Index [UniqueCode]    Script Date: 10/6/2020 5:04:58 PM ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [UniqueCode] UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClosesetPersons]  WITH CHECK ADD  CONSTRAINT [FK_ClosesetPersons_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClosesetPersons] CHECK CONSTRAINT [FK_ClosesetPersons_Students]
GO
ALTER TABLE [dbo].[Colleges]  WITH CHECK ADD  CONSTRAINT [FK_Colleges_Counties] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Colleges] CHECK CONSTRAINT [FK_Colleges_Counties]
GO
ALTER TABLE [dbo].[Constraints]  WITH CHECK ADD  CONSTRAINT [FK_Constraints_Honesty] FOREIGN KEY([HonestyId])
REFERENCES [dbo].[Honesty] ([Id])
GO
ALTER TABLE [dbo].[Constraints] CHECK CONSTRAINT [FK_Constraints_Honesty]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Counties_Counties] FOREIGN KEY([MainCountry])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Counties_Counties]
GO
ALTER TABLE [dbo].[CrossOf]  WITH CHECK ADD  CONSTRAINT [FK_CrossOf_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
GO
ALTER TABLE [dbo].[CrossOf] CHECK CONSTRAINT [FK_CrossOf_Students]
GO
ALTER TABLE [dbo].[CrossOf]  WITH CHECK ADD  CONSTRAINT [fk_name2] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CrossOf] CHECK CONSTRAINT [fk_name2]
GO
ALTER TABLE [dbo].[Deattach]  WITH CHECK ADD  CONSTRAINT [FK_Deattach_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
GO
ALTER TABLE [dbo].[Deattach] CHECK CONSTRAINT [FK_Deattach_Students]
GO
ALTER TABLE [dbo].[Deattach]  WITH CHECK ADD  CONSTRAINT [fk_name3] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deattach] CHECK CONSTRAINT [fk_name3]
GO
ALTER TABLE [dbo].[DependenceSubject]  WITH CHECK ADD  CONSTRAINT [FK_DependenceSubject_Subjects] FOREIGN KEY([subjectId])
REFERENCES [dbo].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DependenceSubject] CHECK CONSTRAINT [FK_DependenceSubject_Subjects]
GO
ALTER TABLE [dbo].[DependenceSubject]  WITH CHECK ADD  CONSTRAINT [FK_DependenceSubject_Subjects1] FOREIGN KEY([dependsOnSubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[DependenceSubject] CHECK CONSTRAINT [FK_DependenceSubject_Subjects1]
GO
ALTER TABLE [dbo].[EquivalentSubject]  WITH CHECK ADD  CONSTRAINT [FK_EquivalentSubject_Subjects] FOREIGN KEY([FirstSubject])
REFERENCES [dbo].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EquivalentSubject] CHECK CONSTRAINT [FK_EquivalentSubject_Subjects]
GO
ALTER TABLE [dbo].[EquivalentSubject]  WITH CHECK ADD  CONSTRAINT [FK_EquivalentSubject_Subjects1] FOREIGN KEY([SecoundSubject])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[EquivalentSubject] CHECK CONSTRAINT [FK_EquivalentSubject_Subjects1]
GO
ALTER TABLE [dbo].[ExamSemester]  WITH CHECK ADD  CONSTRAINT [FK_ExamSemester_Years] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExamSemester] CHECK CONSTRAINT [FK_ExamSemester_Years]
GO
ALTER TABLE [dbo].[Graduation]  WITH CHECK ADD  CONSTRAINT [FK_Graduation_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Graduation] CHECK CONSTRAINT [FK_Graduation_Students]
GO
ALTER TABLE [dbo].[Group_Privilage]  WITH CHECK ADD  CONSTRAINT [FK_Group_Privilage_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Group_Privilage] CHECK CONSTRAINT [FK_Group_Privilage_Group]
GO
ALTER TABLE [dbo].[Group_Privilage]  WITH CHECK ADD  CONSTRAINT [FK_Group_Privilage_Privilage] FOREIGN KEY([PrivilageId])
REFERENCES [dbo].[Privilage] ([ID])
GO
ALTER TABLE [dbo].[Group_Privilage] CHECK CONSTRAINT [FK_Group_Privilage_Privilage]
GO
ALTER TABLE [dbo].[Group_Privilage]  WITH CHECK ADD  CONSTRAINT [fk_Privilage_id1] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Group_Privilage] CHECK CONSTRAINT [fk_Privilage_id1]
GO
ALTER TABLE [dbo].[Honesty]  WITH CHECK ADD  CONSTRAINT [FK_Honesty_Counties] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Honesty] CHECK CONSTRAINT [FK_Honesty_Counties]
GO
ALTER TABLE [dbo].[MoreInformation]  WITH CHECK ADD  CONSTRAINT [FK_MoreInformation_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MoreInformation] CHECK CONSTRAINT [FK_MoreInformation_Students1]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Nationalies] FOREIGN KEY([NationaliryId])
REFERENCES [dbo].[Nationalies] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Nationalies]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Students]
GO
ALTER TABLE [dbo].[PersonPhone]  WITH CHECK ADD  CONSTRAINT [fk_name16] FOREIGN KEY([PersonId])
REFERENCES [dbo].[ClosesetPersons] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonPhone] CHECK CONSTRAINT [fk_name16]
GO
ALTER TABLE [dbo].[PersonPhone]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_ClosesetPersons] FOREIGN KEY([PersonId])
REFERENCES [dbo].[ClosesetPersons] ([Id])
GO
ALTER TABLE [dbo].[PersonPhone] CHECK CONSTRAINT [FK_PersonPhone_ClosesetPersons]
GO
ALTER TABLE [dbo].[PersonPhone]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_PhoneType] FOREIGN KEY([PhoneTypeId])
REFERENCES [dbo].[PhoneType] ([Id])
GO
ALTER TABLE [dbo].[PersonPhone] CHECK CONSTRAINT [FK_PersonPhone_PhoneType]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_Students1]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_StudentState] FOREIGN KEY([StudentStateId])
REFERENCES [dbo].[StudentState] ([Id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_StudentState]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_StudentState1] FOREIGN KEY([FinalStateId])
REFERENCES [dbo].[StudentState] ([Id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_StudentState1]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_StudyYear] FOREIGN KEY([StudyYearId])
REFERENCES [dbo].[StudyYear] ([Id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_StudyYear]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_TypeOfRegistar] FOREIGN KEY([TypeOfRegistarId])
REFERENCES [dbo].[TypeOfRegistar] ([Id])
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_TypeOfRegistar]
GO
ALTER TABLE [dbo].[Registrations]  WITH CHECK ADD  CONSTRAINT [FK_Registrations_Years] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Registrations] CHECK CONSTRAINT [FK_Registrations_Years]
GO
ALTER TABLE [dbo].[Reparations]  WITH CHECK ADD  CONSTRAINT [FK_Reparations_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reparations] CHECK CONSTRAINT [FK_Reparations_Students1]
GO
ALTER TABLE [dbo].[Sanctions]  WITH CHECK ADD  CONSTRAINT [FK_Sanctions_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sanctions] CHECK CONSTRAINT [FK_Sanctions_Students1]
GO
ALTER TABLE [dbo].[SettingYearSystem]  WITH CHECK ADD  CONSTRAINT [FK_SettingYearStstem_Settings] FOREIGN KEY([SettingId])
REFERENCES [dbo].[Settings] ([Id])
GO
ALTER TABLE [dbo].[SettingYearSystem] CHECK CONSTRAINT [FK_SettingYearStstem_Settings]
GO
ALTER TABLE [dbo].[SettingYearSystem]  WITH CHECK ADD  CONSTRAINT [FK_SettingYearStstem_YearSystem] FOREIGN KEY([YearSystem])
REFERENCES [dbo].[YearSystem] ([Id])
GO
ALTER TABLE [dbo].[SettingYearSystem] CHECK CONSTRAINT [FK_SettingYearStstem_YearSystem]
GO
ALTER TABLE [dbo].[Siblings]  WITH CHECK ADD  CONSTRAINT [FK_Siblings_SocialStates] FOREIGN KEY([SocialState])
REFERENCES [dbo].[SocialStates] ([Id])
GO
ALTER TABLE [dbo].[Siblings] CHECK CONSTRAINT [FK_Siblings_SocialStates]
GO
ALTER TABLE [dbo].[Siblings]  WITH CHECK ADD  CONSTRAINT [FK_Siblings_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Siblings] CHECK CONSTRAINT [FK_Siblings_Students1]
GO
ALTER TABLE [dbo].[StudentAttachment]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttachment_Attatchments] FOREIGN KEY([AttachmentId])
REFERENCES [dbo].[Attatchments] ([Id])
GO
ALTER TABLE [dbo].[StudentAttachment] CHECK CONSTRAINT [FK_StudentAttachment_Attatchments]
GO
ALTER TABLE [dbo].[StudentAttachment]  WITH CHECK ADD  CONSTRAINT [FK_StudentAttachment_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentAttachment] CHECK CONSTRAINT [FK_StudentAttachment_Students1]
GO
ALTER TABLE [dbo].[StudentDegree]  WITH CHECK ADD  CONSTRAINT [FK_StudentDegree_Countries] FOREIGN KEY([Source])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[StudentDegree] CHECK CONSTRAINT [FK_StudentDegree_Countries]
GO
ALTER TABLE [dbo].[StudentDegree]  WITH CHECK ADD  CONSTRAINT [FK_StudentDegree_Degree] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[Degree] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentDegree] CHECK CONSTRAINT [FK_StudentDegree_Degree]
GO
ALTER TABLE [dbo].[StudentDegree]  WITH CHECK ADD  CONSTRAINT [FK_StudentDegree_Students1] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentDegree] CHECK CONSTRAINT [FK_StudentDegree_Students1]
GO
ALTER TABLE [dbo].[StudentDegree]  WITH CHECK ADD  CONSTRAINT [FK_StudentDegree_Years] FOREIGN KEY([Date])
REFERENCES [dbo].[Years] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentDegree] CHECK CONSTRAINT [FK_StudentDegree_Years]
GO
ALTER TABLE [dbo].[StudentPhone]  WITH CHECK ADD  CONSTRAINT [FK_StudentPhone_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentPhone] CHECK CONSTRAINT [FK_StudentPhone_Students]
GO
ALTER TABLE [dbo].[StudentPhone]  WITH CHECK ADD  CONSTRAINT [FK_StudentPhones_PhoneType] FOREIGN KEY([PhoneTypeId])
REFERENCES [dbo].[PhoneType] ([Id])
GO
ALTER TABLE [dbo].[StudentPhone] CHECK CONSTRAINT [FK_StudentPhones_PhoneType]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Colleges] FOREIGN KEY([TransformedFromId])
REFERENCES [dbo].[Colleges] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Colleges]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Constraints] FOREIGN KEY([ConstraintId])
REFERENCES [dbo].[Constraints] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Constraints]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Countries] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Countries]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Langaues] FOREIGN KEY([languageId])
REFERENCES [dbo].[Langaues] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Langaues]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Nationalies] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalies] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Nationalies]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Specializations] FOREIGN KEY([SpecializationId])
REFERENCES [dbo].[Specializations] ([Id])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Specializations]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_ExamSemester] FOREIGN KEY([ExamSemesterId])
REFERENCES [dbo].[ExamSemester] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_ExamSemester]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_Students] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_Students]
GO
ALTER TABLE [dbo].[StudentSubject]  WITH CHECK ADD  CONSTRAINT [FK_StudentSubject_Subjects] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[StudentSubject] CHECK CONSTRAINT [FK_StudentSubject_Subjects]
GO
ALTER TABLE [dbo].[StudyPlan]  WITH CHECK ADD  CONSTRAINT [FK_StudyPlan_Specializations] FOREIGN KEY([SpecializationId])
REFERENCES [dbo].[Specializations] ([Id])
GO
ALTER TABLE [dbo].[StudyPlan] CHECK CONSTRAINT [FK_StudyPlan_Specializations]
GO
ALTER TABLE [dbo].[StudyPlan]  WITH CHECK ADD  CONSTRAINT [FK_StudyPlan_Years] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudyPlan] CHECK CONSTRAINT [FK_StudyPlan_Years]
GO
ALTER TABLE [dbo].[StudySemester]  WITH CHECK ADD  CONSTRAINT [FK_StudySemester_StudyPlan1] FOREIGN KEY([StudyplanId])
REFERENCES [dbo].[StudyPlan] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StudySemester] CHECK CONSTRAINT [FK_StudySemester_StudyPlan1]
GO
ALTER TABLE [dbo].[StudySemester]  WITH CHECK ADD  CONSTRAINT [FK_StudySemester_StudyYear] FOREIGN KEY([StudyYearId])
REFERENCES [dbo].[StudyYear] ([Id])
GO
ALTER TABLE [dbo].[StudySemester] CHECK CONSTRAINT [FK_StudySemester_StudyYear]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_StudySemester1] FOREIGN KEY([StudySemesterId])
REFERENCES [dbo].[StudySemester] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_StudySemester1]
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_SubjectType] FOREIGN KEY([SubjectTypeId])
REFERENCES [dbo].[SubjectType] ([Id])
GO
ALTER TABLE [dbo].[Subjects] CHECK CONSTRAINT [FK_Subjects_SubjectType]
GO
ALTER TABLE [dbo].[Trasmentd]  WITH CHECK ADD  CONSTRAINT [\] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Trasmentd] CHECK CONSTRAINT [\]
GO
ALTER TABLE [dbo].[Trasmentd]  WITH CHECK ADD  CONSTRAINT [FK_Trasmentd_Colleges] FOREIGN KEY([CollageId])
REFERENCES [dbo].[Colleges] ([Id])
GO
ALTER TABLE [dbo].[Trasmentd] CHECK CONSTRAINT [FK_Trasmentd_Colleges]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [FK_User_Group_Group] FOREIGN KEY([Group_ID])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [FK_User_Group_Group]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [FK_User_Group_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [FK_User_Group_User]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [fk_user_id1] FOREIGN KEY([User_ID])
REFERENCES [dbo].[User] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [fk_user_id1]
GO
ALTER TABLE [dbo].[Years]  WITH CHECK ADD  CONSTRAINT [FK_Years_ExamSystem] FOREIGN KEY([ExamSystem])
REFERENCES [dbo].[ExamSystem] ([Id])
GO
ALTER TABLE [dbo].[Years] CHECK CONSTRAINT [FK_Years_ExamSystem]
GO
ALTER TABLE [dbo].[Years]  WITH CHECK ADD  CONSTRAINT [FK_Years_YearSystem] FOREIGN KEY([YearSystem])
REFERENCES [dbo].[YearSystem] ([Id])
GO
ALTER TABLE [dbo].[Years] CHECK CONSTRAINT [FK_Years_YearSystem]
GO
/****** Object:  StoredProcedure [dbo].[sp_EmptyAllDataBase]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: script (4).sql|2277|0|C:\Users\jawad\Downloads\Telegram Desktop\script (4).sql
create proc [dbo].[sp_EmptyAllDataBase]
as 
begin 

EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' ;

EXEC sp_MSForEachTable 'DELETE FROM ?' ;

-- enable referential integrity again 
EXEC sp_MSForEachTable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL' ;

end 










GO
/****** Object:  StoredProcedure [dbo].[sp_MainData1]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: script (4).sql|2296|0|C:\Users\jawad\Downloads\Telegram Desktop\script (4).sql
CREATE proc [dbo].[sp_MainData1] as 
begin 
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([Id], [Name], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'admin', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Group] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [username], [password], [IsEnabled], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, N'مسؤول النظام', N'admin', N'21232f297a57a5a743894a0e4a801fc3', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[User_Group] ([User_ID], [Group_ID], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, 1, CAST(N'2020-01-01' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, N'CreateGroup', N'إنشاء مجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (2, N'ShowGroup', N'عرض المجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (3, N'UpdateGroup', N'التعديل على المجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (4, N'DeleteGroup', N'حذف المجموعات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (5, N'ShowUser', N'عرض المستخدمين', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (6, N'AddUser', N'إنشاء مستخدمين', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (7, N'UpdateUser', N'تعديل المستخدمين', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (8, N'AddAttachment', N'إضافة انواع مرفقات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (9, N'ShowAttachment', N'عرض انواع المرفقات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (10, N'UpdateAttachment', N'التعديل على انواع المرفقات', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (11, N'AddCountry', N'إضافة مدن', CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (12, N'RemoveAttachment', N'حذف المرفقات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (13, N'ShowCountries', N'عرض البلدان', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (14, N'UpdateCountry', N'تعديل البلدان', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (15, N'RemoveCountry', N'حذف البلدان', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (16, N'AddDegree', N'اضافة شهادة', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (17, N'ShowDegree', N'عرض الشهادات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (18, N'UpdateDegree', N'تعديل على الشهادات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (19, N'RemoveDegree', N'حذف الشهادات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (20, N'ShowCities', N'عرض المدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (21, N'AddCity', N'اضافة مدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (22, N'UpdateCity', N'تعديل على المدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (23, N'RemoveCity', N'حذف مدن', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (24, N'AddCollege', N'اضافة جامعات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (25, N'ShowColleges', N'عرض جامعات', CAST(N'2020-03-03' AS Date), N'sysetm', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (26, N'UpdateCollege', N'تعديل على الجامعات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (27, N'RemoveCollege', N'حذف الجامعات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (28, N'AddConstraint', N'اضافة قيد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (29, N'ShowConstraint', N'عرض القيد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (30, N'UpdateConstraint', N'تعديل على القيود', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (31, N'RemoveConstraint', N'حذف القيد', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (32, N'AddHonesty', N'اضافة امانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (33, N'ShowHonesty', N'عرض الامانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (34, N'UpdateHonesty', N'تعديل على الامانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (35, N'RemoveHonesty', N'حذف الامانات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (36, N'AddLanguage', N'اضافة لغات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (37, N'ShowLanguages', N'عرض لغات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (38, N'UpdateLanguage', N'تعديل على اللغات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (39, N'RempoveLanguage', N'حذف اللفات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (40, N'AddNationality', N'اضافة جنسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (41, N'ShowNationality', N'عرض جننسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (42, N'UpdateNationality', N'تعديل على الجنسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (43, N'RemoveNationality', N'حذف الجنسيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (44, N'AddPhoneType', N'اضافة انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (45, N'ShowPhoneType', N'عرض انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (46, N'UpdatePhoneType', N'تعديل على انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (47, N'RemovePhoneType', N'حذف انواع ارقام الهاتف', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (48, N'ShowPrivilage', N'عرض السماحيات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (49, N'AddSocialStates', N'اضافة الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (50, N'ShowSocialStates', N'عرض الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (51, N'UpdateSocialStates', N'تعديل على الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (52, N'RemoveSocialStates', N'حذف الحالة الاجتماعية', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (53, N'AddSpecialization', N'اضافة اختصاص', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (54, N'ShowSpecialization', N'عرض الاختصاصات', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (55, N'UpdateSpecialization', N'تعديل على الاختصاص', CAST(N'2020-03-30' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (56, N'RemoveSpecializations', N'حذف الاختصاص', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (57, N'AddTypeOfRegistar', N'اضافة نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (58, N'ShowTypeOfRegistar', N'عرض نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (59, N'UpdateTypeOfRegistar', N'تعديل على نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Privilage] ([ID], [Name], [Description], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (60, N'RemoveTypeOfRegistar', N'حذف نوع التسجيل', CAST(N'2020-03-03' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 2, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 3, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 4, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 5, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 6, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 7, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 8, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 9, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 10, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 11, CAST(N'2020-04-04' AS Date), N'admin', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 12, CAST(N'2020-02-02' AS Date), N'admin', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 13, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 14, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 15, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 16, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 17, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 18, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 19, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 20, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 21, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 22, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 23, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 24, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 25, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 26, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 27, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 28, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 29, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 30, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 31, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 32, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 33, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 34, CAST(N'2020-04-05' AS Date), N'admin', NULL, N'')
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 35, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 36, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 37, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 38, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 39, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 40, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 41, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 42, CAST(N'2020-02-02' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 43, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 44, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 45, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 46, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 47, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 48, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 49, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 50, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 51, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 52, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 53, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 54, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 55, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 56, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 57, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 58, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 59, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Group_Privilage] ([GroupId], [PrivilageId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, 60, CAST(N'2020-04-04' AS Date), N'system', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'عدد مواد الترفع الإداري', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'عدد المواد للطالب خارج المعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'عدد علامات المساعدة لطالب خارج اللمعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'تقسم العلامات المساعدة للطالب خارج المعهد على', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'عدد علامات المساعدة للطالب الذي سوف يصبح مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'عدد المواد التي تقسم عليها علامات المساعدة للطالب الذوي سوف يصبح مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'عدد علامات المساعدة للطالب الذي سوف يصبح راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'عدد المواد التي تقسم عليها علامات المساعدة للطالب الذي سوف يصبح راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (10, N'يستطيع الطالب خارج المعهد تقديم مواد من 100 و عددها ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
--added new 
SET IDENTITY_INSERT [dbo].[StudyYear] ON 
INSERT [dbo].[StudyYear] ([Id], [Name], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'اولى', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudyYear] ([Id], [Name], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'ثانية', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[StudyYear] OFF
SET IDENTITY_INSERT [dbo].[StudentState] ON 

INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'?????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, N'?????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'????? ??????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'??????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'?????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[StudentState] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'?????', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[StudentState] OFF

end











GO
/****** Object:  StoredProcedure [dbo].[sp_ResetDataBase]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: script (4).sql|2462|0|C:\Users\jawad\Downloads\Telegram Desktop\script (4).sql
create proc [dbo].[sp_ResetDataBase]
as
begin
exec sp_EmptyAllDataBase;
exec sp_RessedAllIdentityTable;
exec sp_MainData1;
end










GO
/****** Object:  StoredProcedure [dbo].[sp_RessedAllIdentityTable]    Script Date: 10/6/2020 5:04:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: script (4).sql|2476|0|C:\Users\jawad\Downloads\Telegram Desktop\script (4).sql
create proc [dbo].[sp_RessedAllIdentityTable]
as
begin 
declare  @tableName nvarchar(100);
declare c cursor   for select name from sys.tables;
open c ;
fetch c into @tableName ;
while (@@FETCH_STATUS=0)
begin 
print @tableName;
DBCC CHECKIDENT (@tableName, RESEED, 0);
fetch c into @tableName ;
end 
CLOSE  c; 
DEALLOCATE c;
end











GO
USE [master]
GO
ALTER DATABASE [TCC] SET  READ_WRITE 
GO
