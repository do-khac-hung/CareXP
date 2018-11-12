/****** Object:  Table [dbo].[Post2Vehicles]    Script Date: 01/11/2018 10:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post2Vehicles](
	[PostId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 01/11/2018 10:20:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenantID] [int] NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[CustomerID] [int] NULL,
	[Status] [nchar](10) NOT NULL,
	[VIN] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[MainContent] [nvarchar](max) NULL,
	[FeatureImage] [nchar](100) NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([ID], [TenantID], [ModifiedDate], [ModifiedBy], [CustomerID], [Status], [VIN], [Model], [Subject], [MainContent], [FeatureImage]) VALUES (1, 1, CAST(N'2018-10-23' AS Date), 2, 1, N'1         ', N'RLO4DFDMMBTR05325', N'NEW RANGER', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Posts] OFF
ALTER TABLE [dbo].[Post2Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Post2Vehicles_Posts] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([ID])
GO
ALTER TABLE [dbo].[Post2Vehicles] CHECK CONSTRAINT [FK_Post2Vehicles_Posts]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Khóa ngoài' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post2Vehicles', @level2type=N'COLUMN',@level2name=N'PostId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Khóa ngoài tới table EPC.Vehicle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Post2Vehicles', @level2type=N'COLUMN',@level2name=N'VehicleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Không dùng. Sẽ xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Posts', @level2type=N'COLUMN',@level2name=N'VIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Không dùng. Sẽ xóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Posts', @level2type=N'COLUMN',@level2name=N'Model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiêu đề bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Posts', @level2type=N'COLUMN',@level2name=N'Subject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nội dung bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Posts', @level2type=N'COLUMN',@level2name=N'MainContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đường dẫn tới ảnh đại diện của bài viết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Posts', @level2type=N'COLUMN',@level2name=N'FeatureImage'
GO