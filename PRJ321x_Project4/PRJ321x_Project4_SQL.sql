USE [master]
GO
/****** Object:  Database [project4]    Script Date: 6/14/2021 2:22:52 AM ******/
CREATE DATABASE [project4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\project4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'project4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\project4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [project4] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project4] SET ARITHABORT OFF 
GO
ALTER DATABASE [project4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project4] SET  MULTI_USER 
GO
ALTER DATABASE [project4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [project4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [project4] SET QUERY_STORE = OFF
GO
USE [project4]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 6/14/2021 2:22:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ContentSum] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Time] [datetime] NULL,
	[author] [varchar](100) NULL,
	[status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/14/2021 2:22:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[username] [varchar](100) NULL,
	[password] [varchar](100) NULL,
	[role] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (1, N'Mobile Friendly', NULL, N' Europe has begun to take action against states that harm others in cyberspace. Last July, for instance, the European Union imposed the first sanctions for malicious hacking, targeting four Russian military cyber spies and two Chinese nationals linked to the government, among others. The Russians sought to compromise the Organization for the Prohibition of Chemical Weapons, which was probing the use of chemical weapons in Syria by the government of Bashar al-Assad, Russiaâs ally. The Chinese were sanctioned for a long-running industrial espionage campaign known as Cloud Hopper, which was enabled by hacking the global software service supply chain.', CAST(N'2021-06-13T15:10:57.230' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (2, N'Drag and Drop', NULL, N'Former officials said some activities that may not violate a norm, such as traditional espionage, can nonetheless be punished. In April, the Biden administration imposed sanctions on Russia in response to its SolarWinds compromises of nine federal agencies and about 100 companies. It was an espionage campaign, so it was not covered by the norms, but its scale, officials said, raised concerns that it could become disruptive.', CAST(N'2021-06-13T15:10:57.230' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (3, N'Custom Domains', NULL, N'As a companion to the norms, the State Department led the development of a cyber deterrence “playbook,” laying out the consequences that could be most effective against each of the United States’ main cyber adversaries. They include coordinated “naming and shaming,” economic sanctions, indictments and the exposure of cyber tools to undercut their utility', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (4, N'national security adviser Jake Sullivan said Wednesday', NULL, N'The guidelines were hammered out by the U.N. Group of Governmental Experts on Advancing Responsible State Behavior in Cyberspace. They reaffirmed a seminal 2015 agreement that, besides establishing the strictures against attacking critical infrastructure and enabling malicious activity in one’s territory, made clear that states “should take reasonable steps to ensure the integrity of the supply chain” of hardware and software that make up computer networks. In March, the 2015 norms were endorsed by all 193 members of the United Nations.”', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (5, N'White House officials have downplayed expectations from the summit given', NULL, N'Current and former officials say the global norms provide a foundation for accountability by explaining the bounds of acceptable conduct in cyberspace and by creating an expectation of good behavior.“It certainly seems that states want others to behave well in cyberspace, and there are some key states that just aren’t. So you have to do something about it,” said Michele Markoff, the State Department’s acting coordinator for cyber issues, who worked on successive United Nations norms agreements — including the one concluded last month.', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (6, N'Christopher Painter, who was the State Department’s top cyber official in the Obama administration,', NULL, N' were hammered out by the U.N. Group of Governmental Experts on Advancing Responsible State Behavior in Cyberspace. They reaffirmed a seminal 2015 agreement that, besides establishing the strictures against attacking critical infrastructure and enabling malicious activity in one’s territory, made clear that states “should take reasonable steps to ensure the integrity of the supply chain” of hardware and software that make up computer networks. In March', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin2', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (7, N'There are some activities the norms do not cover, such as traditional espionage conducted by the world’s spy agencies.', NULL, N'Nonetheless, countries that abide by the norms can band together to punish countries that break them, using sanctions and other tools, analysts say. They can also nudge developing nations that have signed onto the norms to follow the Western model of behavior rather than the Russian or Chinese ones, they say.“If you look at the history of diplomacy, many things that start out as nonbinding become customary behavior over time,” Markoff said.', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin2', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (8, N'None of these states — China, Russia, Iran, North Korea — seem to have any intention to follow them', NULL, N' Dmitri Alperovitch, a cybersecurity expert and executive chairman of the Silverado Policy Accelerator think tank. “And unless you hold these countries accountable, having nonbinding norms doesn’t fundamentally change our security situation.', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin3', NULL)
INSERT [dbo].[Article] ([ID], [Title], [ContentSum], [Content], [Time], [author], [status]) VALUES (9, N'Russia has repeatedly said it does not conduct cyber attacks against other countries and has rebuffed accusations', NULL, N' I do hope that people would realize that there hasn’t been any malicious Russian activity whatsoever,” Putin said at a recent economic forum in St. Petersburg. “I heard something about the meat plant. It’s sheer nonsense. We all understand it’s just ridiculous. A pipeline? It’s equally absurd.”Despite Moscow’s disavowals, Western governments have repeatedly found it responsible for malicious conduct.The United States, Britain and others in 2018 officially blamed Russia for the NotPetya cyber worm unleashed the previous year against Ukraine, which then spread across the world. The Trump administration called it “the most destructive and costly cyber-attack in history', CAST(N'2021-06-13T15:10:57.233' AS DateTime), N'admin3', NULL)
SET IDENTITY_INSERT [dbo].[Article] OFF
GO
INSERT [dbo].[Users] ([username], [password], [role]) VALUES (N'admin1', N'admin', 2)
INSERT [dbo].[Users] ([username], [password], [role]) VALUES (N'admin2', N'admin', 2)
INSERT [dbo].[Users] ([username], [password], [role]) VALUES (N'admin3', N'admin', 2)
INSERT [dbo].[Users] ([username], [password], [role]) VALUES (N'reader1', N'reader1', 1)
GO
ALTER TABLE [dbo].[Article] ADD  DEFAULT (getdate()) FOR [Time]
GO
USE [master]
GO
ALTER DATABASE [project4] SET  READ_WRITE 
GO
