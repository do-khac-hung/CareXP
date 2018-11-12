/****** Object:  Table [dbo].[Brandnames]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brandnames](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TenantID] [int] NULL,
 CONSTRAINT [PK_Brandnames] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCustomerDemo]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCustomerDemo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CustomerTypeID] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC,
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDemographics]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDemographics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerTypeID] [nvarchar](10) NOT NULL,
	[CustomerDesc] [ntext] NULL,
 CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Email] [nvarchar](50) NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dealers]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dealers](
	[ID] [int] NOT NULL,
	[DistributorID] [int] NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_SEmployees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Distributors]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Distributors](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Email] [nvarchar](50) NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Dealers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DragDropSample]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DragDropSample](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DragDropSample] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueDetail2Items]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueDetail2Items](
	[IssueDetailID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[SellUnitPrice] [float] NULL,
 CONSTRAINT [PK_Issue2Items] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC,
	[IssueDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssueDetails]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssueDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IssueID] [int] NOT NULL,
	[FixRequired] [bit] NOT NULL,
	[FixStatusID] [int] NOT NULL,
 CONSTRAINT [PK_IssueDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issues]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleID] [int] NULL,
	[RepairerID] [int] NULL,
	[ConsultantID] [int] NULL,
 CONSTRAINT [PK_Issues] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ID] [int] NOT NULL,
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[PartID] [int] NULL,
	[Quantity] [float] NULL,
	[ItemCode] [nvarchar](50) NULL,
	[Barcode] [nvarchar](50) NULL,
	[Possition] [nvarchar](50) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobDetails]    Script Date: 27/08/2018 12:39:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IssueID] [int] NOT NULL,
	[TenantID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_JobDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOBS]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOBS](
	[ID] [int] NOT NULL,
	[Name] [nchar](10) NULL,
	[TenantID] [int] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mechanics]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mechanics](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[NoteID] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityType] [nvarchar](100) NOT NULL,
	[EntityID] [bigint] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[InsertUserId] [int] NOT NULL,
	[InsertDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[NoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [float] NOT NULL,
	[DetailID] [float] NOT NULL,
	[StatusID] [int] NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[CreatedByID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parts]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartName] [nvarchar](40) NOT NULL,
	[BrandnameID] [int] NULL,
	[CategoryID] [int] NULL,
	[Barcode] [nvarchar](50) NULL,
	[Unit] [nvarchar](20) NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NOT NULL,
	[ProductImage] [nvarchar](100) NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Website] [ntext] NULL,
	[TenantID] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table1]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOM]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOM](
	[ID] [int] NULL,
	[Name] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle2Customers]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle2Customers](
	[VehicleID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_Vehicle2Customers] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC,
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 27/08/2018 12:39:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BrandnameID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[DealerID] [int] NULL,
	[Model] [nvarchar](50) NULL,
	[ModelYear] [nvarchar](50) NULL,
	[CorpIDNumber] [nchar](10) NULL,
	[KeyNumber] [nvarchar](50) NULL,
	[PurchasedDate] [date] NULL,
	[WarrantyMileage] [int] NULL,
	[WarrantyPeriod] [nvarchar](50) NULL,
	[WarrantyExpiredDate] [date] NULL,
	[Mileage] [int] NULL,
	[NumberPlates] [nvarchar](20) NULL,
	[RegistrationDate] [date] NULL,
	[VIN] [nvarchar](50) NULL,
	[ChassisNumber] [nvarchar](10) NULL,
	[EngineNumber] [nvarchar](10) NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [CategoryName]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [City]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers]
(
	[City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CompanyName]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [LastName]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [LastName] ON [dbo].[Mechanics]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderID]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrdersOrder_Details]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [OrdersOrder_Details] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ProductID]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [ProductID] ON [dbo].[OrderDetails]
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ProductsOrder_Details]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [ProductsOrder_Details] ON [dbo].[OrderDetails]
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeeID]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [EmployeeID] ON [dbo].[Orders]
(
	[CreatedByID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeesOrders]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [EmployeesOrders] ON [dbo].[Orders]
(
	[CreatedByID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDate]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders]
(
	[OrderDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CategoriesProducts]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [CategoriesProducts] ON [dbo].[Parts]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CategoryID]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [CategoryID] ON [dbo].[Parts]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ProductName]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [ProductName] ON [dbo].[Parts]
(
	[PartName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [CompanyName]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PostalCode]    Script Date: 27/08/2018 12:39:07 AM ******/
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Suppliers]
(
	[PostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Brandnames] ADD  CONSTRAINT [DF_Brandnames_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Dealers] ADD  CONSTRAINT [DF_SEmployees_TenantID]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Distributors] ADD  CONSTRAINT [DF_Dealers_TenantID]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[IssueDetail2Items] ADD  CONSTRAINT [DF_Issue2Items_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[IssueDetails] ADD  CONSTRAINT [DF_IssueDetails_FixStatus]  DEFAULT ((0)) FOR [FixStatusID]
GO
ALTER TABLE [dbo].[Items] ADD  CONSTRAINT [DF_Items_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Mechanics] ADD  CONSTRAINT [DF_Employees_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Parts] ADD  CONSTRAINT [DF_Parts_BrandnameID]  DEFAULT ((0)) FOR [BrandnameID]
GO
ALTER TABLE [dbo].[Parts] ADD  CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)) FOR [ReorderLevel]
GO
ALTER TABLE [dbo].[Parts] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[Parts] ADD  CONSTRAINT [DF_Products_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_TenantId]  DEFAULT ((1)) FOR [TenantID]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo_Customers]
GO
ALTER TABLE [dbo].[Dealers]  WITH CHECK ADD  CONSTRAINT [FK_Dealers_Distributors] FOREIGN KEY([DistributorID])
REFERENCES [dbo].[Distributors] ([ID])
GO
ALTER TABLE [dbo].[Dealers] CHECK CONSTRAINT [FK_Dealers_Distributors]
GO
ALTER TABLE [dbo].[IssueDetail2Items]  WITH CHECK ADD  CONSTRAINT [FK_Issue2Items_IssueDetails] FOREIGN KEY([IssueDetailID])
REFERENCES [dbo].[IssueDetails] ([ID])
GO
ALTER TABLE [dbo].[IssueDetail2Items] CHECK CONSTRAINT [FK_Issue2Items_IssueDetails]
GO
ALTER TABLE [dbo].[IssueDetail2Items]  WITH CHECK ADD  CONSTRAINT [FK_Issue2Items_Items] FOREIGN KEY([PartID])
REFERENCES [dbo].[Items] ([ID])
GO
ALTER TABLE [dbo].[IssueDetail2Items] CHECK CONSTRAINT [FK_Issue2Items_Items]
GO
ALTER TABLE [dbo].[IssueDetails]  WITH CHECK ADD  CONSTRAINT [FK_IssueDetails_Issues1] FOREIGN KEY([IssueID])
REFERENCES [dbo].[Issues] ([ID])
GO
ALTER TABLE [dbo].[IssueDetails] CHECK CONSTRAINT [FK_IssueDetails_Issues1]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_MEmployees3] FOREIGN KEY([RepairerID])
REFERENCES [dbo].[Mechanics] ([ID])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_MEmployees3]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_MEmployees4] FOREIGN KEY([ConsultantID])
REFERENCES [dbo].[Mechanics] ([ID])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_MEmployees4]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_Vehicles]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Orders]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Parts] FOREIGN KEY([PartID])
REFERENCES [dbo].[Parts] ([ID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Parts]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Parts1] FOREIGN KEY([PartID])
REFERENCES [dbo].[Parts] ([ID])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Parts1]
GO
ALTER TABLE [dbo].[JobDetails]  WITH CHECK ADD  CONSTRAINT [FK_JobDetails_Issues] FOREIGN KEY([IssueID])
REFERENCES [dbo].[Issues] ([ID])
GO
ALTER TABLE [dbo].[JobDetails] CHECK CONSTRAINT [FK_JobDetails_Issues]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Order Details_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Parts] FOREIGN KEY([PartID])
REFERENCES [dbo].[Parts] ([ID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Order Details_Parts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([CreatedByID])
REFERENCES [dbo].[Mechanics] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Suppliers] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Suppliers]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Brandnames] FOREIGN KEY([BrandnameID])
REFERENCES [dbo].[Brandnames] ([ID])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Brandnames]
GO
ALTER TABLE [dbo].[Parts]  WITH CHECK ADD  CONSTRAINT [FK_Parts_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Parts] CHECK CONSTRAINT [FK_Parts_Categories]
GO
ALTER TABLE [dbo].[Vehicle2Customers]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle2Customers_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[Vehicle2Customers] CHECK CONSTRAINT [FK_Vehicle2Customers_Customers]
GO
ALTER TABLE [dbo].[Vehicle2Customers]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle2Customers_Vehicles] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicles] ([ID])
GO
ALTER TABLE [dbo].[Vehicle2Customers] CHECK CONSTRAINT [FK_Vehicle2Customers_Vehicles]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Brandnames] FOREIGN KEY([BrandnameID])
REFERENCES [dbo].[Brandnames] ([ID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Brandnames]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_Vehicles_Dealers1] FOREIGN KEY([DealerID])
REFERENCES [dbo].[Dealers] ([ID])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_Vehicles_Dealers1]
GO
ALTER TABLE [dbo].[Mechanics]  WITH NOCHECK ADD  CONSTRAINT [CK_Birthdate] CHECK  (([BirthDate]<getdate()))
GO
ALTER TABLE [dbo].[Mechanics] CHECK CONSTRAINT [CK_Birthdate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_Discount]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [CK_UnitPrice]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên của nhà bán hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Distributors', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng vật tư lấy ra để sửa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IssueDetail2Items', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IssueDetail2Items', @level2type=N'COLUMN',@level2name=N'SellUnitPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Chủ xe yêu cầu sửa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IssueDetails', @level2type=N'COLUMN',@level2name=N'FixRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tình trạng sửa chữa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IssueDetails', @level2type=N'COLUMN',@level2name=N'FixStatusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mặc định =1 nếu vật tư to, có mã code từ nhà máy. =2.3.. nếu vật tư  tiêu hao' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã code định danh vật tư do NSX hoặc đại lý tự dán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'ItemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã barcode để in. Có thể là ItemCode hoặc là sự kết hợp phức tạp hơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'Barcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vị trí đặt vật trong kho' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'Possition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loại hình công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobDetails', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá nhân công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giảm giá. Trừ trực tiếp vào giá nhân công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JobDetails', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JOBS', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giá nhân công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JOBS', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giảm giá. Trừ trực tiếp vào giá nhân công' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'JOBS', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Trừ trực tiếp vào UnitPrice. Không phải %' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn vị tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UOM', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sang tên đổi chủ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicle2Customers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hãng xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'BrandnameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đời xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'Model'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Năm' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'ModelYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số ID do hãng xe cung cấp' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'CorpIDNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số km giới hạn bảo hành ghi trên sổ sách' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'WarrantyMileage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Thời hạn bảo hành ghi trên sổ sách' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'WarrantyPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày hết hạn bảo hành thực tế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'WarrantyExpiredDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số km đã đi được trên thực tế' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'Mileage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Biển số xe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'NumberPlates'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đăng ký' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'RegistrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'vehicle identification number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'VIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số khung. 6 số cuối của VIN' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'ChassisNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số máy.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Vehicles', @level2type=N'COLUMN',@level2name=N'EngineNumber'
GO
