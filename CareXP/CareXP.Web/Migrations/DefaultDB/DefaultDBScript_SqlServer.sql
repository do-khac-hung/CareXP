/****** Object:  Table [dbo].[Exceptions]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exceptions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](50) NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[IsProtected] [bit] NOT NULL,
	[Host] [nvarchar](100) NULL,
	[Url] [nvarchar](500) NULL,
	[HTTPMethod] [nvarchar](10) NULL,
	[IPAddress] [nvarchar](40) NULL,
	[Source] [nvarchar](100) NULL,
	[Message] [nvarchar](1000) NULL,
	[Detail] [nvarchar](max) NULL,
	[StatusCode] [int] NULL,
	[SQL] [nvarchar](max) NULL,
	[DeletionDate] [datetime] NULL,
	[FullJson] [nvarchar](max) NULL,
	[ErrorHash] [int] NULL,
	[DuplicateCount] [int] NOT NULL,
 CONSTRAINT [PK_Exceptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageID] [nvarchar](10) NOT NULL,
	[LanguageName] [nvarchar](50) NOT NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[RolePermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[RolePermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[TenantId] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tenants]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenants](
	[TenantID] [int] IDENTITY(1,1) NOT NULL,
	[TenantName] [nvarchar](100) NOT NULL,
	[TenantTypeID] [int] NULL,
 CONSTRAINT [PK_Tenants] PRIMARY KEY CLUSTERED 
(
	[TenantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TENANTTYPES]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TENANTTYPES](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TENANTTYPES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPermissions]    Script Date: 9/12/2018 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissions](
	[UserPermissionId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PermissionKey] [nvarchar](100) NOT NULL,
	[Granted] [bit] NOT NULL,
 CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserPermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPreferences]    Script Date: 9/12/2018 10:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPreferences](
	[UserPreferenceID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PreferenceType] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserPreferences] PRIMARY KEY CLUSTERED 
(
	[UserPreferenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 9/12/2018 10:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/12/2018 10:03:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Source] [nvarchar](4) NOT NULL,
	[PasswordHash] [nvarchar](86) NOT NULL,
	[PasswordSalt] [nvarchar](10) NOT NULL,
	[LastDirectoryUpdate] [datetime] NULL,
	[UserImage] [nvarchar](100) NULL,
	[InsertDate] [datetime] NOT NULL,
	[InsertUserId] [int] NOT NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserId] [int] NULL,
	[IsActive] [smallint] NOT NULL,
	[TenantId] [int] NOT NULL,
	[MechanicId] [int] NULL,
	[DealerId] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 
GO
INSERT [dbo].[Languages] ([Id], [LanguageID], [LanguageName], [TenantID]) VALUES (1, N'en', N'English', 1)
GO
INSERT [dbo].[Languages] ([Id], [LanguageID], [LanguageName], [TenantID]) VALUES (11, N'vi-VN', N'Vietnamese (Vietnam)', 1)
GO
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] ON 
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10003, 6, N'Administration:Tenant:General')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10004, 6, N'Administration:User:General')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10005, 6, N'Administration:User:Modify')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10006, 6, N'Administration:User:Delete')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10007, 6, N'Administration:User:View')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10008, 6, N'Administration:Role:General')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10009, 6, N'Administration:Role:View')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10011, 1015, N'Northwind:General')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10012, 1015, N'Northwind:Customer:Modify')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10013, 1015, N'Northwind:Customer:Delete')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10014, 1015, N'Northwind:Customer:View')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10015, 6, N'Administration:Role:Modify')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10016, 1016, N'Northwind:General')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10018, 1016, N'Northwind:Customer:Delete')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10019, 1016, N'Northwind:Customer:View')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10024, 6, N'Administration:Role:Delete')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10049, 1016, N'Northwind:Customer:Modify')
GO
INSERT [dbo].[RolePermissions] ([RolePermissionId], [RoleId], [PermissionKey]) VALUES (10050, 1, N'Northwind:Customer:View')
GO
SET IDENTITY_INSERT [dbo].[RolePermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (1, N'Tư vấn', 4)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (2, N'Thợ máy', 2)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (4, N'Quản lý', 2)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (5, N'Thợ máy HH', 3)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (6, N'Admin Doanh nghiệp', 2)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (1015, N'Lễ tân', 2)
GO
INSERT [dbo].[Roles] ([RoleId], [RoleName], [TenantId]) VALUES (1016, N'Trông xe CN', 4)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Tenants] ON 
GO
INSERT [dbo].[Tenants] ([TenantID], [TenantName], [TenantTypeID]) VALUES (1, N'CareXP', 0)
GO
INSERT [dbo].[Tenants] ([TenantID], [TenantName], [TenantTypeID]) VALUES (2, N'Dùng chung', 1)
GO
INSERT [dbo].[Tenants] ([TenantID], [TenantName], [TenantTypeID]) VALUES (3, N'Hồng Hạnh', 1)
GO
INSERT [dbo].[Tenants] ([TenantID], [TenantName], [TenantTypeID]) VALUES (4, N'Cường Ngân', 1)
GO
INSERT [dbo].[Tenants] ([TenantID], [TenantName], [TenantTypeID]) VALUES (5, N'Trường Giang', NULL)
GO
SET IDENTITY_INSERT [dbo].[Tenants] OFF
GO
INSERT [dbo].[TENANTTYPES] ([ID], [Name]) VALUES (0, N'Admin')
GO
INSERT [dbo].[TENANTTYPES] ([ID], [Name]) VALUES (1, N'Đại lý bán hàng')
GO
INSERT [dbo].[TENANTTYPES] ([ID], [Name]) VALUES (2, N'Đại lý sửa chữa')
GO
SET IDENTITY_INSERT [dbo].[UserPermissions] ON 
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (1, 2, N'Northwind:General', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (2, 2, N'Northwind:Customer:Modify', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (3, 2, N'Northwind:Customer:View', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (4, 2, N'Northwind:Customer:Delete', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (7, 3, N'Northwind:General', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (8, 3, N'Northwind:Customer:Modify', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (9, 3, N'Northwind:Customer:View', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (10, 3, N'Northwind:Customer:Delete', 1)
GO
INSERT [dbo].[UserPermissions] ([UserPermissionId], [UserId], [PermissionKey], [Granted]) VALUES (11, 3, N'Administration:Security', 1)
GO
SET IDENTITY_INSERT [dbo].[UserPermissions] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (3, 3, 6)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (10002, 2, 4)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (10003, 2, 6)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (10004, 8, 1015)
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId]) VALUES (10005, 8, 1016)
GO
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive], [TenantId], [MechanicId], [DealerId]) VALUES (1, N'admin', N'admin', N'admin@dummy.com', N'site', N'ANcpKyp2w1kj3jGbsJYUyAwsUgKXEVZYT5W14o7ri8kPt78WRHaPVs3yx7x6J8qYG8ZXZ6vMhE7sg9wwFFGJCw', N'A!eVO', NULL, NULL, CAST(N'2014-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2018-08-21T16:10:57.347' AS DateTime), 1, 1, 1, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive], [TenantId], [MechanicId], [DealerId]) VALUES (2, N'cuong', N'Cường', NULL, N'site', N'wanHFuKHdMJt1G6DXi2RYy9k1l23ug7dhebOfRLLk0J861wnPX3TNoKzysY5MLlfPxAz5YRrZdRQ+60Fdl15Xg', N'q4+Xx', NULL, NULL, CAST(N'2018-08-21T16:06:48.053' AS DateTime), 1, CAST(N'2018-09-06T18:00:31.233' AS DateTime), 1, 1, 4, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive], [TenantId], [MechanicId], [DealerId]) VALUES (3, N'hong', N'hong', NULL, N'site', N'OwDXQWp98B1KDUCP9F9PGZ/bQcuud6C+fZ0mzehkVxeYylNTmqUaVJ3VL12WJYxWofCUlOzCiQ8fA8YPVwSi4Q', N'R$t!p', NULL, NULL, CAST(N'2018-08-21T16:23:52.773' AS DateTime), 1, CAST(N'2018-09-06T00:04:51.847' AS DateTime), 1, 1, 3, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive], [TenantId], [MechanicId], [DealerId]) VALUES (4, N'cuong2', N'cuong2', NULL, N'site', N'STQvj+NPyzYk2aqAFvLFoyuMm5ljIUmgpG6ju1tNZF1x+P3dDKB3VEvnUOd4ulMR8/+grnwYkb/YzvAWhnvtFA', N'2q*VH', NULL, NULL, CAST(N'2018-08-21T22:22:45.730' AS DateTime), 2, NULL, NULL, 1, 4, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive], [TenantId], [MechanicId], [DealerId]) VALUES (7, N'hong2', N'hong2', NULL, N'site', N'JqyiOF/HhlP/7u5Eys02uBpAa/rBxYkutxggXuIH+QLhQWnu5ph98UwqSdy2r4WYkqET5hcMo7AeDhg8iXlmXQ', N'HHm+k', NULL, N'UserImage/00000/00000005_v5qea2iwwfjpi.jpg', CAST(N'2018-08-21T22:24:48.657' AS DateTime), 3, NULL, NULL, 1, 3, NULL, NULL)
GO
INSERT [dbo].[Users] ([UserId], [Username], [DisplayName], [Email], [Source], [PasswordHash], [PasswordSalt], [LastDirectoryUpdate], [UserImage], [InsertDate], [InsertUserId], [UpdateDate], [UpdateUserId], [IsActive], [TenantId], [MechanicId], [DealerId]) VALUES (8, N'cuong3', N'Cường', NULL, N'site', N'jmH49bkXOA5s/oOPBYvw23QJxbyYhikndqaGtvohi/94+sKqJRPXIdu1Dg4BIFLJNY79xsmTKowySjz/a6gZ6w', N'%#h.!', NULL, NULL, CAST(N'2018-09-11T12:57:52.343' AS DateTime), 2, CAST(N'2018-09-11T12:58:00.733' AS DateTime), 2, 1, 4, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Exceptions] ADD  CONSTRAINT [DF_Exceptions_IsProtected]  DEFAULT ((1)) FOR [IsProtected]
GO
ALTER TABLE [dbo].[Exceptions] ADD  CONSTRAINT [DF_Exceptions_DuplicateCount]  DEFAULT ((1)) FOR [DuplicateCount]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_TenantId]  DEFAULT ((1)) FOR [TenantId]
GO
ALTER TABLE [dbo].[UserPermissions] ADD  CONSTRAINT [DF_UserPermissions_Granted]  DEFAULT ((1)) FOR [Granted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_TenantId]  DEFAULT ((1)) FOR [TenantId]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_MechanicID]  DEFAULT (NULL) FOR [MechanicId]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_DealerID]  DEFAULT (NULL) FOR [DealerId]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_RoleId]
GO
ALTER TABLE [dbo].[Tenants]  WITH CHECK ADD  CONSTRAINT [FK_Tenants_TENANTTYPES] FOREIGN KEY([TenantTypeID])
REFERENCES [dbo].[TENANTTYPES] ([ID])
GO
ALTER TABLE [dbo].[Tenants] CHECK CONSTRAINT [FK_Tenants_TENANTTYPES]
GO
ALTER TABLE [dbo].[UserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_UserPermissions_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserPermissions] CHECK CONSTRAINT [FK_UserPermissions_UserId]
GO
ALTER TABLE [dbo].[UserPreferences]  WITH CHECK ADD  CONSTRAINT [FK_UserPreferences_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserPreferences] CHECK CONSTRAINT [FK_UserPreferences_Users]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_RoleId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Tenants] FOREIGN KEY([TenantId])
REFERENCES [dbo].[Tenants] ([TenantID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Tenants]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên của các nhóm quyền. Ví dụ admin, kế toán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá trị enum trong bảng TENANTTYPES' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tenants', @level2type=N'COLUMN',@level2name=N'TenantTypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kiểu của đối tượng tham gia, là Đại lý bán hay Đại lý sửa chữa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TENANTTYPES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Các thông tin bổ sung về người dùng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserPreferences'
GO