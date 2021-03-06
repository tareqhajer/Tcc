USE [master]
GO
/****** Object:  Database [TCC]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Attatchments]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[ClosesetPersons]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Colleges]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Constraints]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[CrossOf]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Deattach]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Degree]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[DependenceSubject]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[EquivalentSubject]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[ExamSemester]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[ExamSystem]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Graduation]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Group_Privilage]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Honesty]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Langaues]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Log]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[MoreInformation]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Nationalies]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Partners]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[PersonPhone]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[PhoneType]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Privilage]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Registrations]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Reparations]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Sanctions]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Settings]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[SettingYearSystem]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Siblings]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[SocialStates]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Specializations]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudentAttachment]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudentDegree]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudentPhone]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudentState]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudentSubject]    Script Date: 10/5/2020 9:12:46 PM ******/
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
	[HelpDegree] [bit] NULL,
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
/****** Object:  Table [dbo].[StudyPlan]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudySemester]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[StudyYear]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Subjects]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[SubjectType]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Trasmentd]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[TypeOfRegistar]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[User_Group]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[Years]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  Table [dbo].[YearSystem]    Script Date: 10/5/2020 9:12:46 PM ******/
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
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (77, 83, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (78, 82, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (80, 86, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[DependenceSubject] ([subjectId], [dependsOnSubjectId], [IsEnabeld], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (87, 69, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[ExamSemester] ON 

INSERT [dbo].[ExamSemester] ([Id], [SemesterNumber], [YearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1005, 1, 1003, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[ExamSemester] ([Id], [SemesterNumber], [YearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1006, 2, 1003, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[ExamSemester] OFF
SET IDENTITY_INSERT [dbo].[ExamSystem] ON 

INSERT [dbo].[ExamSystem] ([Id], [Name], [HaveTheredSemester], [IsDoubleExam], [GraduateStudentsSemester], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'نظام فصلين', 0, 1, NULL, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
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
SET IDENTITY_INSERT [dbo].[Log] OFF
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
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1, N'عدد مواد الترفع الإداري', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (2, N'عدد المواد للطالب خارج المعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, N'عدد علامات المساعدة لطالب خارج اللمعهد', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (5, N'تقسم العلامات المساعدة للطالب خارج المعهد على', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (6, N'عدد علامات المساعدة للطالب الذي سوف يصبح مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'عدد المواد التي تقسم عليها علامات المساعدة للطالب الذوي سوف يصبح مستنفذ', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'عدد علامات المساعدة للطالب الذي سوف يصبح راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[Settings] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'عدد المواد التي تقسم عليها علامات المساعدة للطالب الذي سوف يصبح راسب', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 1, 9, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 2, 2, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 4, 3, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 5, 1, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 6, 3, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 7, 2, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 8, 2, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[SettingYearSystem] ([YearSystem], [SettingId], [Count], [Created], [Note], [CreatedBy], [Modified], [ModifiedBy]) VALUES (3, 9, 5, CAST(N'2020-10-05' AS Date), NULL, N'Admin', NULL, N'')
INSERT [dbo].[Specializations] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'H', N'هندسة برمجيات', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Specializations] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'M', N'هندسة الحواسيب', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Specializations] ([Id], [Name], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (N'S', N'هندسة شبكات', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
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
SET IDENTITY_INSERT [dbo].[StudyPlan] ON 

INSERT [dbo].[StudyPlan] ([Id], [YearId], [SpecializationId], [IsEnabled], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (4, 1003, N'H', 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[StudyPlan] OFF
SET IDENTITY_INSERT [dbo].[StudySemester] ON 

INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (13, 1, 4, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (14, 2, 4, 1, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (15, 1, 4, 2, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[StudySemester] ([Id], [Number], [StudyplanId], [StudyYearId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (16, 2, 4, 2, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
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
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (75, N'Hkau', N'ثقافة', 2, 2, 8, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (76, N'Hnet', N'شبكات', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (77, N'Heng2', N'انكليزي 2', 2, 2, 8, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (78, N'Hopr2', N'نظم تشغيل 2', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (79, N'Hhtml', N'تصميم ويب', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (80, N'Hpro2', N'برمجة 2', 2, 2, 7, 14, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (81, N'Hcom', N'مدخل الى الحاسوب', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (82, N'Hopr', N'نظم تشغيل 1', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (83, N'Heng', N'انكليزي 1', 2, 2, 8, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (84, N'Harb', N'عربي', 2, 2, 8, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (85, N'Hmath', N'رياضيات 1', 2, 2, 8, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (86, N'Hpro', N'برمجة 1', 2, 2, 7, 13, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (87, N'Heng4', N'انكليزي 4', 2, 2, 8, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[Subjects] ([Id], [SubjectCode], [Name], [PracticalTime], [TheoreticalTime], [SubjectTypeId], [StudySemesterId], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (88, N'Hproject', N'مشروع التخرج', 2, 2, 9, 16, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
SET IDENTITY_INSERT [dbo].[SubjectType] ON 

INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (7, N'اختصاصية', 1, 40, 12, 60, 60, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (8, N'غير اختصاصية نظرية', 1, 30, 9, 70, 50, CAST(N'2020-10-05' AS Date), N'Admin', CAST(N'2020-10-05' AS Date), N'Admin')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (9, N'مشروع', 1, 40, 12, 60, 60, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
INSERT [dbo].[SubjectType] ([Id], [Name], [IsEnabled], [PracticalDegree], [NominateDegree], [TheoreticalDegree], [SuccessDegree], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (10, N'اختصاصي نظري', 1, 40, 12, 60, 50, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[SubjectType] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [username], [password], [IsEnabled], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, N'مسؤول النظام', N'admin', N'21232f297a57a5a743894a0e4a801fc3', 1, CAST(N'2020-01-01' AS Date), N'System', NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[User_Group] ([User_ID], [Group_ID], [Created], [CreatedBy], [ModifiedBy], [Modified]) VALUES (1, 1, CAST(N'2020-01-01' AS Date), N'system', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Years] ON 

INSERT [dbo].[Years] ([Id], [FirstYear], [SecondYear], [YearSystem], [ExamSystem], [Blocked], [Created], [CreatedBy], [Modified], [ModifiedBy]) VALUES (1003, 2014, 2015, 3, 4, 0, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'')
SET IDENTITY_INSERT [dbo].[Years] OFF
SET IDENTITY_INSERT [dbo].[YearSystem] ON 

INSERT [dbo].[YearSystem] ([Id], [Name], [Note], [Created], [CreatedBy], [Modified], [ModifiedBy], [IsMain]) VALUES (3, N'ترفع اداري', NULL, CAST(N'2020-10-05' AS Date), N'Admin', NULL, N'', 1)
SET IDENTITY_INSERT [dbo].[YearSystem] OFF
/****** Object:  Index [UniqueCode]    Script Date: 10/5/2020 9:12:46 PM ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [UniqueCode] UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StudentSubject] ADD  CONSTRAINT [DF_StudentSubject_HelpDegree]  DEFAULT ((0)) FOR [HelpDegree]
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
ALTER TABLE [dbo].[Graduation]  WITH CHECK ADD  CONSTRAINT [fk_name6] FOREIGN KEY([SSN])
REFERENCES [dbo].[Students] ([SSN])
GO
ALTER TABLE [dbo].[Graduation] CHECK CONSTRAINT [fk_name6]
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
/****** Object:  StoredProcedure [dbo].[sp_EmptyAllDataBase]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_MainData1]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ResetDataBase]    Script Date: 10/5/2020 9:12:46 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_RessedAllIdentityTable]    Script Date: 10/5/2020 9:12:46 PM ******/
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
