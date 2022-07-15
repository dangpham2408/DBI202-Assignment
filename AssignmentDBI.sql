USE [Assignment]
GO
/****** Object:  Table [dbo].[Assess]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assess](
	[AssID] [varchar](50) NOT NULL,
	[ClassID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment System]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment System](
	[AssID] [varchar](50) NOT NULL,
	[CateID] [varchar](50) NOT NULL,
	[CourseID] [varchar](50) NOT NULL,
	[Number of quest] [int] NOT NULL,
	[Duration] [time](7) NOT NULL,
	[Weight] [float] NOT NULL,
 CONSTRAINT [PK_Assessment System] PRIMARY KEY CLUSTERED 
(
	[AssID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[AssignID] [varchar](50) NOT NULL,
	[AssignName] [varchar](50) NOT NULL,
	[LectureID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[AssignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Completion Criteria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [varchar](50) NOT NULL,
	[AssignID] [varchar](50) NOT NULL,
	[Semester] [varchar](50) NOT NULL,
	[Start date] [date] NOT NULL,
	[End date] [date] NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [varchar](50) NOT NULL,
	[Course Name] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[StudentID] [varchar](10) NOT NULL,
	[AssID] [varchar](50) NOT NULL,
	[Score] [float] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupID] [varchar](50) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[Number of Student] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Join]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Join](
	[ClassID] [varchar](50) NOT NULL,
	[GroupID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[LectureID] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[First Name] [nvarchar](50) NOT NULL,
	[Last Name] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DoB] [date] NOT NULL,
	[Report] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[LectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](10) NOT NULL,
	[Email] [varchar](10) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NOT NULL,
	[DoB] [date] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student Group]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student Group](
	[StudentID] [varchar](10) NOT NULL,
	[GroupID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[View]    Script Date: 7/15/2022 10:13:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[View](
	[StudentID] [varchar](10) NOT NULL,
	[ClassID] [varchar](50) NOT NULL,
	[Average] [float] NOT NULL,
	[Status] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assess]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Assessment System] FOREIGN KEY([AssID])
REFERENCES [dbo].[Assessment System] ([AssID])
GO
ALTER TABLE [dbo].[Assess] CHECK CONSTRAINT [FK_Assess_Assessment System]
GO
ALTER TABLE [dbo].[Assess]  WITH CHECK ADD  CONSTRAINT [FK_Assess_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Assess] CHECK CONSTRAINT [FK_Assess_Class]
GO
ALTER TABLE [dbo].[Assessment System]  WITH CHECK ADD  CONSTRAINT [FK_Assessment System_Categories] FOREIGN KEY([CateID])
REFERENCES [dbo].[Categories] ([CateID])
GO
ALTER TABLE [dbo].[Assessment System] CHECK CONSTRAINT [FK_Assessment System_Categories]
GO
ALTER TABLE [dbo].[Assessment System]  WITH CHECK ADD  CONSTRAINT [FK_Assessment System_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Assessment System] CHECK CONSTRAINT [FK_Assessment System_Course]
GO
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Lecture] FOREIGN KEY([LectureID])
REFERENCES [dbo].[Lecture] ([LectureID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Lecture]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Assignment] FOREIGN KEY([AssignID])
REFERENCES [dbo].[Assignment] ([AssignID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Assignment]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Assessment System] FOREIGN KEY([AssID])
REFERENCES [dbo].[Assessment System] ([AssID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Assessment System]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK_Grade_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK_Grade_Student]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_Class]
GO
ALTER TABLE [dbo].[Join]  WITH CHECK ADD  CONSTRAINT [FK_Join_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Join] CHECK CONSTRAINT [FK_Join_Group]
GO
ALTER TABLE [dbo].[Student Group]  WITH CHECK ADD  CONSTRAINT [FK_Student Group_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[Student Group] CHECK CONSTRAINT [FK_Student Group_Group]
GO
ALTER TABLE [dbo].[Student Group]  WITH CHECK ADD  CONSTRAINT [FK_Student Group_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[Student Group] CHECK CONSTRAINT [FK_Student Group_Student]
GO
ALTER TABLE [dbo].[View]  WITH CHECK ADD  CONSTRAINT [FK_View_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[View] CHECK CONSTRAINT [FK_View_Class]
GO
ALTER TABLE [dbo].[View]  WITH CHECK ADD  CONSTRAINT [FK_View_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[View] CHECK CONSTRAINT [FK_View_Student]
GO
