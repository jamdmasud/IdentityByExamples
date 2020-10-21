USE [master]
GO
/****** Object:  Database [CRLIdentity]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE DATABASE [CRLIdentity]
 
GO
ALTER DATABASE [CRLIdentity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRLIdentity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRLIdentity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRLIdentity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRLIdentity] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRLIdentity] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRLIdentity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRLIdentity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRLIdentity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRLIdentity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRLIdentity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRLIdentity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRLIdentity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRLIdentity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRLIdentity] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CRLIdentity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRLIdentity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRLIdentity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRLIdentity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRLIdentity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRLIdentity] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CRLIdentity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRLIdentity] SET RECOVERY FULL 
GO
ALTER DATABASE [CRLIdentity] SET  MULTI_USER 
GO
ALTER DATABASE [CRLIdentity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRLIdentity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRLIdentity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRLIdentity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRLIdentity] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CRLIdentity', N'ON'
GO
ALTER DATABASE [CRLIdentity] SET QUERY_STORE = OFF
GO
USE [CRLIdentity]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/21/2020 2:44:31 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 10/21/2020 2:44:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[Position] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809143745_CreatingIdentityScheme', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200809144024_InsertedRoles', N'3.1.0')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'50fc903f-2918-4b47-9721-40d5224fabf8', N'Visitor', N'VISITOR', N'c55af00c-eaa9-4d3d-bd3a-84dcfc038358')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8f7049f2-4312-47e8-a548-5a0e5503b30a', N'Administrator', N'ADMINISTRATOR', N'6ca595a7-307c-4ad6-8114-062c78d0e012')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f8621a51-dae5-4c42-a5f1-6211eb7e71a3', N'50fc903f-2918-4b47-9721-40d5224fabf8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'f8621a51-dae5-4c42-a5f1-6211eb7e71a3', N'masud@bs-23.net', N'MASUD@BS-23.NET', N'masud@bs-23.net', N'MASUD@BS-23.NET', 0, N'AQAAAAEAACcQAAAAEBr4IW/gbnuOtYik/Ku6IJ5uOKClLTFvQgdDVtbG1RHRHHguLTXFB5UiIqwQbVIOFg==', N'M7E7PWVG3UTRAEORYONDOMV7I77S55MM', N'7d3a2420-e189-40cd-9124-c5fc355e9a97', NULL, 0, 0, NULL, 1, 0, N'Muhammad', N'Masud')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'b492c194-20e3-45a0-a3b2-06b9d42bc7b3', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'9ab095d7-5f9f-4bc1-8ea4-0869c151ea13', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'f61fd792-55ba-4f80-8f66-0c6f7a35de52', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'7708967f-6897-4460-b14d-1b8a31b5c2c5', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'e310a6cb-6677-4aa6-93c7-2763956f7a97', N'Mark Miens', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'0354fec8-ee78-456a-ac08-282dabef6dbb', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'd637eed0-7e73-4aab-abdf-29751bc88b0c', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'7c0d43f8-9348-4a58-bf26-2ab6413b7b3c', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'7efe86f9-a37a-4437-991e-31439e0d9cab', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'd79db195-e4c4-4301-afff-437409973388', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'7f6e5a19-a938-4b17-b8c2-43d8b0797038', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'65feb42e-c271-48a4-b747-4a069bc9f3c4', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'6238d5ef-ed76-4d7c-baee-5975681f370f', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'95e93970-cd6c-4453-bbd5-653c50854122', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'34d077be-6bd5-4eaa-8ae5-6bf92aabe8ef', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'acafaef1-2e9d-4e21-b2f4-6caaa4c3101b', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'33977619-3ffe-4853-8119-7b3436311ffb', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'0b379c2c-0e97-4306-8966-91b6f9ef7be2', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'164b0616-71ae-42af-8f40-a2973069aa58', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'3cc1a712-d0cf-44f3-8deb-a9b0e1df965f', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'afad963e-329f-4b0b-be39-b59e406ff4af', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'0992d21f-6a77-43ef-8cfa-b5b16bca6da7', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'd7381a79-f7f2-42eb-bae2-bce68b68e76e', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'398d10fe-4b8d-4606-8e9c-bd2c78d4e001', N'Anna Simmons', 29, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'4660f307-2495-4c7c-9dff-c01d34898a39', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'fcedfdc7-f449-400b-ae66-c047abe7f5a2', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'136d6afe-5e2f-4422-acd3-c2b0467e8b24', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'f4f730c7-95c5-4d91-a1aa-d7d4f456439d', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'80dc8a70-2343-4c20-b1dd-d851961c4a07', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'e492533a-22c4-4810-8d9d-d9e214dd707c', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'7823cf6b-eb5c-4f30-a517-e20a30e84c5c', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'1290b022-3968-4a84-a623-e25b2c8a967b', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'635d74fc-1180-455e-94a9-e5fed5bffac5', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'33a4fa2e-0db4-4963-a2e2-ecc2db8f333f', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'bf1791a2-6de6-4449-ae42-f10a5c80da5e', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'03e7eb7d-ae7a-471a-9841-f64e0f5065b1', N'Mark Miens two', 26, N'Software Developer')
GO
INSERT [dbo].[Employees] ([Id], [Name], [Age], [Position]) VALUES (N'3d466c9c-d74c-435a-99e1-f8e74951066f', N'Mark Miens two', 26, N'Software Developer')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/21/2020 2:44:31 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [CRLIdentity] SET  READ_WRITE 
GO
