

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 1/16/2023 9:30:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[pk_CustomerKey] [int] IDENTITY(1,1) NOT NULL,
	[nk_CustomerID] [int] NULL,
	[nk_BusinessEntityID] [int] NULL,
	[nk_AddressID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[PhoneType] [nvarchar](50) NULL,
	[HomeAddressLine1] [nvarchar](60) NULL,
	[HomeAddressLine2] [nvarchar](60) NULL,
	[HomeCity] [nvarchar](30) NULL,
	[HomePostalCode] [nvarchar](15) NULL,
	[HomeStateProvince] [nvarchar](50) NULL,
	[HomeCountryRegion] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DateInserted] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[InferredMember] [bit] NULL,
	[current_flag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimCustomer] ADD  DEFAULT (getdate()) FOR [DateInserted]
GO

ALTER TABLE [dbo].[DimCustomer] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO


USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[DimDate]    Script Date: 1/16/2023 9:30:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[FullDateAlternateKey] [date] NOT NULL,
	[DayNumberOfWeek] [tinyint] NOT NULL,
	[EnglishDayNameOfWeek] [nvarchar](10) NOT NULL,
	[SpanishDayNameOfWeek] [nvarchar](10) NOT NULL,
	[FrenchDayNameOfWeek] [nvarchar](10) NOT NULL,
	[DayNumberOfMonth] [tinyint] NOT NULL,
	[DayNumberOfYear] [smallint] NOT NULL,
	[WeekNumberOfYear] [tinyint] NOT NULL,
	[EnglishMonthName] [nvarchar](10) NOT NULL,
	[SpanishMonthName] [nvarchar](10) NOT NULL,
	[FrenchMonthName] [nvarchar](10) NOT NULL,
	[MonthNumberOfYear] [tinyint] NOT NULL,
	[CalendarQuarter] [tinyint] NOT NULL,
	[CalendarYear] [smallint] NOT NULL,
	[CalendarSemester] [tinyint] NOT NULL,
	[FiscalQuarter] [tinyint] NOT NULL,
	[FiscalYear] [smallint] NOT NULL,
	[FiscalSemester] [tinyint] NOT NULL,
 CONSTRAINT [PK_DimDate_DateKey] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 1/16/2023 9:31:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[pk_ProductKey] [int] IDENTITY(1,1) NOT NULL,
	[nk_ProductID] [int] NOT NULL,
	[nk_ProductSubCategoryID] [int] NULL,
	[nk_ProductCategoryID] [int] NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](25) NOT NULL,
	[Color] [nvarchar](15) NULL,
	[ReorderPoint] [smallint] NOT NULL,
	[ProductSubCategory] [nvarchar](50) NULL,
	[ProductCategory] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DateInserted] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[current_flag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_ProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimProduct] ADD  DEFAULT (getdate()) FOR [DateInserted]
GO

ALTER TABLE [dbo].[DimProduct] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[DimSalesPerson]    Script Date: 1/16/2023 9:31:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimSalesPerson](
	[pk_SalesPersonKey] [int] IDENTITY(1,1) NOT NULL,
	[nk_BusinessEntityID] [int] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[SalesTerritory] [nvarchar](50) NULL,
	[SalesTerritoryRegion] [nvarchar](50) NULL,
	[SalesTerritoryGroup] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DateInserted] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[current_flag] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_SalesPersonKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimSalesPerson] ADD  DEFAULT (getdate()) FOR [DateInserted]
GO

ALTER TABLE [dbo].[DimSalesPerson] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[ETLRun]    Script Date: 1/16/2023 9:31:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ETLRun](
	[ETLRunKey] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](200) NOT NULL,
	[ChangeTracking_VersionNumber] [bigint] NULL,
	[ETLStatus] [varchar](25) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[RecordCount] [int] NULL,
 CONSTRAINT [PK_ETLRun] PRIMARY KEY CLUSTERED 
(
	[ETLRunKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[FactSalesOrder]    Script Date: 1/16/2023 9:31:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSalesOrder](
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] NOT NULL,
	[DateOrderKey] [int] NULL,
	[DateDueKey] [int] NULL,
	[DateShipKey] [int] NULL,
	[OnlineOrderFlag] [tinyint] NULL,
	[fk_CustomerKey] [int] NULL,
	[fk_SalesPersonKey] [int] NULL,
	[fk_ProductKey] [int] NULL,
	[OrderQty] [int] NULL,
	[UnitPrice] [money] NULL,
	[DiscountPct] [money] NULL,
	[DiscountAmt] [money] NULL,
	[SalesAmt] [money] NULL,
	[DateInserted] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_FactInternetSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ASC,
	[SalesOrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactSalesOrder] ADD  DEFAULT (getdate()) FOR [DateInserted]
GO

ALTER TABLE [dbo].[FactSalesOrder] ADD  DEFAULT (getdate()) FOR [DateUpdated]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactSalesOrder_DimCustomer] FOREIGN KEY([fk_CustomerKey])
REFERENCES [dbo].[DimCustomer] ([pk_CustomerKey])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FK_FactSalesOrder_DimCustomer]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactSalesOrder_DimDate] FOREIGN KEY([DateOrderKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FK_FactSalesOrder_DimDate]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactSalesOrder_DimDate1] FOREIGN KEY([DateDueKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FK_FactSalesOrder_DimDate1]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactSalesOrder_DimDate2] FOREIGN KEY([DateShipKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FK_FactSalesOrder_DimDate2]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactSalesOrder_DimProduct] FOREIGN KEY([fk_ProductKey])
REFERENCES [dbo].[DimProduct] ([pk_ProductKey])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FK_FactSalesOrder_DimProduct]
GO

ALTER TABLE [dbo].[FactSalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactSalesOrder_DimSalesPerson] FOREIGN KEY([fk_SalesPersonKey])
REFERENCES [dbo].[DimSalesPerson] ([pk_SalesPersonKey])
GO

ALTER TABLE [dbo].[FactSalesOrder] CHECK CONSTRAINT [FK_FactSalesOrder_DimSalesPerson]
GO

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[stg_DimCustomer]    Script Date: 1/16/2023 9:32:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_DimCustomer](
	[nk_CustomerID] [int] NULL,
	[nk_BusinessEntityID] [int] NULL,
	[nk_AddressID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[PhoneType] [nvarchar](50) NULL,
	[HomeAddressLine1] [nvarchar](60) NULL,
	[HomeAddressLine2] [nvarchar](60) NULL,
	[HomeCity] [nvarchar](30) NULL,
	[HomePostalCode] [nvarchar](15) NULL,
	[HomeStateProvince] [nvarchar](50) NULL,
	[HomeCountryRegion] [nvarchar](50) NULL
) ON [PRIMARY]
GO

USE [AdventureWorksDM]
GO

/****** Object:  Table [dbo].[stg_FactSalesOrder]    Script Date: 1/16/2023 9:32:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_FactSalesOrder](
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] NOT NULL,
	[DateOrderKey] [int] NULL,
	[DateDueKey] [int] NULL,
	[DateShipKey] [int] NULL,
	[OnlineOrderFlag] [tinyint] NULL,
	[fk_CustomerKey] [int] NULL,
	[fk_SalesPersonKey] [int] NULL,
	[fk_ProductKey] [int] NULL,
	[OrderQty] [int] NULL,
	[UnitPrice] [money] NULL,
	[DiscountPct] [money] NULL,
	[DiscountAmt] [money] NULL,
	[SalesAmt] [money] NULL
) ON [PRIMARY]
GO

USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[_vDimCustomer]    Script Date: 1/16/2023 9:35:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create   view [dbo].[_vDimCustomer] as (

SELECT 
	CustomerID as nk_CustomerID ,
	p.BusinessEntityID as nk_BusinessEntityID ,
	AddressInfo.AddressID as nk_AddressID ,
	Title ,
	FirstName,
	LastName,
	phn.PhoneNumber,
	pt.Name as PhoneType ,
	AddressInfo.HomeAddressLine1 ,
	AddressInfo.HomeAddressLine2 ,
	AddressInfo.HomeCity ,
	AddressInfo.HomePostalCode ,
	AddressInfo.HomeStateProvince ,
	AddressInfo.HomeCountryRegion
  FROM [Sales].[Customer] c 
  inner join Person.Person p on c.PersonID = p.BusinessEntityID
  inner join Person.PersonPhone phn on phn.BusinessEntityID = p.BusinessEntityID
  inner join Person.PhoneNumberType pt on phn.PhoneNumberTypeID = pt.PhoneNumberTypeID
  outer apply	--we only want to keep the most recent home address in our dim, so make sure we're only selecting the most recent home address info
  (select top 1 
	ad.AddressID ,
    ad.AddressLine1 as HomeAddressLine1 ,
	ad.AddressLine2 as HomeAddressLine2 ,
	ad.City as HomeCity ,
	ad.PostalCode as HomePostalCode ,
	sp.Name as HomeStateProvince ,
	cr.Name as HomeCountryRegion
	from  Person.BusinessEntityAddress bad 
	INNER JOIN Person.AddressType adt on bad.AddressTypeID = adt.AddressTypeID
	INNER JOIN Person.Address ad on bad.AddressID = ad.AddressID
	INNER JOIN Person.StateProvince sp on ad.StateProvinceID = sp.StateProvinceID
	INNER JOIN Person.CountryRegion cr on sp.CountryRegionCode = cr.CountryRegionCode
	where p.BusinessEntityID = bad.BusinessEntityID and adt.Name = 'Home'
	order by bad.ModifiedDate desc
   ) AddressInfo
);

GO

USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[_vDimProduct]    Script Date: 1/16/2023 9:36:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create   view [dbo].[_vDimProduct] as (

SELECT p.[ProductID] as nk_ProductID
      ,p.[ProductSubcategoryID] as nk_ProductSubcategoryID
	  ,sc.ProductCategoryID as nk_ProductCategoryID
      ,p.[Name] as ProductName
	  ,sc.Name as ProductSubCategory
	  ,c.name as ProductCategory
      ,p.[ProductNumber]      
      ,p.[Color]
      ,p.[ReorderPoint]
from production.Product p 
left join production.ProductSubcategory sc on p.ProductSubcategoryID = sc.ProductSubcategoryID
left join production.ProductCategory c on sc.ProductCategoryID = c.ProductCategoryID
);

GO

USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[_vDimSalesPerson]    Script Date: 1/16/2023 9:37:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create   view [dbo].[_vDimSalesPerson] as (

SELECT 
	sp.BusinessEntityID as nk_BusinessEntityID,
	p.FirstName,
	p.LastName,
	st.Name as SalesTerritory,
	st.CountryRegionCode as SalesTerritoryRegion,
	st.[Group] as SalesTerritoryGroup
  FROM [Sales].[SalesPerson] sp 
	INNER JOIN Person.Person p on sp.BusinessEntityID = p.BusinessEntityID
	INNER JOIN Sales.SalesTerritory st on sp.TerritoryID = st.TerritoryID
);

GO

USE [AdventureWorks2017]
GO

/****** Object:  View [dbo].[_vFactSalesOrder]    Script Date: 1/16/2023 9:37:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE   VIEW [dbo].[_vFactSalesOrder] AS 
SELECT
	   --Degenerate Dimension Values
       h.[SalesOrderID]
	  ,d.[SalesOrderDetailID]

	  --Dates
	  ,h.OrderDate 
      ,COALESCE(CAST(CONVERT(VARCHAR(10), h.OrderDate, 112) AS INT), -1) as [DateOrderKey]
      ,COALESCE(CAST(CONVERT(VARCHAR(10), h.DueDate, 112) AS INT), -1) as [DateDueKey] 
      ,COALESCE(CAST(CONVERT(VARCHAR(10), h.ShipDate, 112) AS INT), -1) as [DateShipKey]

	  --COALESCE(CAST(CONVERT(VARCHAR(10), er.EditResultTimestamp, 112) AS INT), -1)

	  --Flag
      ,cast([OnlineOrderFlag] as tinyint) as [OnlineOrderFlag]

	  --Foreign Keys
      ,[CustomerID]
      ,[SalesPersonID]
	  ,[ProductID]
	  
	  --Measures
      ,[OrderQty]
      ,[UnitPrice]							--non-additive measure
	  ,[UnitPriceDiscount] as DiscountPct	--non-additive measure
      ,[UnitPriceDiscount] * UnitPrice * OrderQty as DiscountAmt
      ,[LineTotal] as SalesAmt

  FROM [AdventureWorks2017].[Sales].[SalesOrderHeader] h 
	   INNER JOIN [AdventureWorks2017].[Sales].[SalesOrderDetail] d on h.SalesOrderID = d.SalesOrderID;

GO

