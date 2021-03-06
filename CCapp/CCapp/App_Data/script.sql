USE [Northwind]
GO
/****** Object:  StoredProcedure [dbo].[Ten Most Expensive Products]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[Ten Most Expensive Products]
GO
/****** Object:  StoredProcedure [dbo].[SalesByCategory]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[SalesByCategory]
GO
/****** Object:  StoredProcedure [dbo].[Sales by Year]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[Sales by Year]
GO
/****** Object:  StoredProcedure [dbo].[Employee Sales by Country]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[Employee Sales by Country]
GO
/****** Object:  StoredProcedure [dbo].[CustOrdersOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[CustOrdersOrders]
GO
/****** Object:  StoredProcedure [dbo].[CustOrdersDetail]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[CustOrdersDetail]
GO
/****** Object:  StoredProcedure [dbo].[CustOrderHist]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[CustOrderHist]
GO
/****** Object:  StoredProcedure [dbo].[arthur_test]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP PROCEDURE [dbo].[arthur_test]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_UnitsOnOrder]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_UnitsInStock]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_ReorderLevel]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_UnitPrice]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_Discount]
GO
ALTER TABLE [dbo].[Main_Employees] DROP CONSTRAINT [CK_Birthdate]
GO
ALTER TABLE [dbo].[Suppliers] DROP CONSTRAINT [FK_Suppliers_Categories]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories1]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order Details_Employees]
GO
ALTER TABLE [dbo].[Main_Employees] DROP CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[EmployeeTerritories] DROP CONSTRAINT [FK_EmployeeTerritories_Employees]
GO
ALTER TABLE [dbo].[Data_City] DROP CONSTRAINT [FK_Data_City_Data_Province]
GO
ALTER TABLE [dbo].[Data_Area] DROP CONSTRAINT [FK_Data_Area_Data_City]
GO
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_Employees]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] DROP CONSTRAINT [FK_CustomerCustomerDemo]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_Discontinued]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_ReorderLevel]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitsOnOrder]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitsInStock]
GO
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF_Orders_Freight]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_Discount]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_Quantity]
GO
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_UnitPrice]
GO
/****** Object:  Index [CompanyName]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [CompanyName] ON [dbo].[Suppliers]
GO
/****** Object:  Index [ShipPostalCode]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [ShipPostalCode] ON [dbo].[Orders]
GO
/****** Object:  Index [ShippersOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [ShippersOrders] ON [dbo].[Orders]
GO
/****** Object:  Index [ShippedDate]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [ShippedDate] ON [dbo].[Orders]
GO
/****** Object:  Index [OrderDate]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [OrderDate] ON [dbo].[Orders]
GO
/****** Object:  Index [EmployeesOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [EmployeesOrders] ON [dbo].[Orders]
GO
/****** Object:  Index [EmployeeID]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [EmployeeID] ON [dbo].[Orders]
GO
/****** Object:  Index [CustomersOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [CustomersOrders] ON [dbo].[Orders]
GO
/****** Object:  Index [CustomerID]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [CustomerID] ON [dbo].[Orders]
GO
/****** Object:  Index [PostalCode]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [PostalCode] ON [dbo].[Main_Employees]
GO
/****** Object:  Index [LastName]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [LastName] ON [dbo].[Main_Employees]
GO
/****** Object:  Index [Region]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [Region] ON [dbo].[Customers]
GO
/****** Object:  Index [PostalCode]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [PostalCode] ON [dbo].[Customers]
GO
/****** Object:  Index [CompanyName]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [CompanyName] ON [dbo].[Customers]
GO
/****** Object:  Index [City]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [City] ON [dbo].[Customers]
GO
/****** Object:  Index [CategoryName]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP INDEX [CategoryName] ON [dbo].[Categories]
GO
/****** Object:  View [dbo].[Quarterly Orders]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Quarterly Orders]
GO
/****** Object:  View [dbo].[Products by Category]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Products by Category]
GO
/****** Object:  View [dbo].[Products Above Average Price]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Products Above Average Price]
GO
/****** Object:  View [dbo].[Orders Qry]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Orders Qry]
GO
/****** Object:  View [dbo].[Invoices]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Invoices]
GO
/****** Object:  View [dbo].[Customer and Suppliers by City]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Customer and Suppliers by City]
GO
/****** Object:  View [dbo].[Current Product List]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Current Product List]
GO
/****** Object:  View [dbo].[Alphabetical list of products]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Alphabetical list of products]
GO
/****** Object:  View [dbo].[Summary of Sales by Year]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Summary of Sales by Year]
GO
/****** Object:  View [dbo].[Summary of Sales by Quarter]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Summary of Sales by Quarter]
GO
/****** Object:  View [dbo].[Sales Totals by Amount]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Sales Totals by Amount]
GO
/****** Object:  View [dbo].[Order Subtotals]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Order Subtotals]
GO
/****** Object:  View [dbo].[Sales by Category]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Sales by Category]
GO
/****** Object:  View [dbo].[Order Details Extended]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Order Details Extended]
GO
/****** Object:  View [dbo].[Category Sales for 1997]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Category Sales for 1997]
GO
/****** Object:  View [dbo].[Product Sales for 1997]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP VIEW [dbo].[Product Sales for 1997]
GO
/****** Object:  Table [dbo].[Territories]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Territories]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Shippers]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Region]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Orders]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Order Details]
GO
/****** Object:  Table [dbo].[Main_Employees]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Main_Employees]
GO
/****** Object:  Table [dbo].[EmployeeTerritories]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[EmployeeTerritories]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Data_Province]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Data_Province]
GO
/****** Object:  Table [dbo].[Data_City]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Data_City]
GO
/****** Object:  Table [dbo].[Data_Area]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Data_Area]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[CustomerDemographics]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[CustomerDemographics]
GO
/****** Object:  Table [dbo].[CustomerCustomerDemo]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[CustomerCustomerDemo]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Schema [TPEO54002267\ASPNET]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP SCHEMA [TPEO54002267\ASPNET]
GO
/****** Object:  User [test]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP USER [test]
GO
/****** Object:  User [test_northwind]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP USER [test_northwind]
GO
/****** Object:  User [TPEO54002267\ASPNET]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP USER [TPEO54002267\ASPNET]
GO
USE [master]
GO
/****** Object:  Database [Northwind]    Script Date: 2016/6/2 上午 08:17:32 ******/
DROP DATABASE [Northwind]
GO
/****** Object:  Database [Northwind]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE DATABASE [Northwind]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Northwind', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MY_Db\northwnd.mdf' , SIZE = 6592KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Northwind_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\MY_Db\northwnd.ldf' , SIZE = 5696KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Northwind] ADD FILEGROUP [PIC] CONTAINS MEMORY_OPTIMIZED_DATA 
GO
ALTER DATABASE [Northwind] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Northwind].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Northwind] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Northwind] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Northwind] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Northwind] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Northwind] SET ARITHABORT OFF 
GO
ALTER DATABASE [Northwind] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Northwind] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Northwind] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Northwind] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Northwind] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Northwind] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Northwind] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Northwind] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Northwind] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Northwind] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Northwind] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Northwind] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Northwind] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Northwind] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Northwind] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Northwind] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Northwind] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Northwind] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Northwind] SET  MULTI_USER 
GO
ALTER DATABASE [Northwind] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Northwind] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Northwind] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Northwind] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Northwind] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Northwind', N'ON'
GO
USE [Northwind]
GO
/****** Object:  User [TPEO54002267\ASPNET]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE USER [TPEO54002267\ASPNET] WITH DEFAULT_SCHEMA=[TPEO54002267\ASPNET]
GO
/****** Object:  User [test_northwind]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE USER [test_northwind] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [test]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE USER [test] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [TPEO54002267\ASPNET]
GO
ALTER ROLE [db_owner] ADD MEMBER [test_northwind]
GO
ALTER ROLE [db_owner] ADD MEMBER [test]
GO
/****** Object:  Schema [TPEO54002267\ASPNET]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE SCHEMA [TPEO54002267\ASPNET]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerCustomerDemo]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCustomerDemo](
	[CustomerID] [nchar](5) NOT NULL,
	[CustomerTypeID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CustomerCustomerDemo] PRIMARY KEY NONCLUSTERED 
(
	[CustomerID] ASC,
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerDemographics]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDemographics](
	[CustomerTypeID] [nchar](10) NOT NULL,
	[CustomerDesc] [ntext] NULL,
 CONSTRAINT [PK_CustomerDemographics] PRIMARY KEY NONCLUSTERED 
(
	[CustomerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[Area_Z] [int] NULL,
	[City_Z] [int] NULL,
	[Province_Z] [int] NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Data_Area]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_Area](
	[AreaCode] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [nvarchar](50) NOT NULL,
	[CityCode] [int] NOT NULL,
 CONSTRAINT [PK_Data_Area] PRIMARY KEY CLUSTERED 
(
	[AreaCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Data_City]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_City](
	[CityCode] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[ProvinceCode] [int] NOT NULL,
 CONSTRAINT [PK_Data_City] PRIMARY KEY CLUSTERED 
(
	[CityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Data_Province]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data_Province](
	[ProvinceCode] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Data_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](8) NOT NULL,
	[FirstName] [nvarchar](10) NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[Area_Z] [int] NULL,
	[City_Z] [int] NULL,
	[Province_Z] [int] NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[DownLine] [int] NULL,
	[PhotoPath] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeTerritories]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTerritories](
	[EmployeeID] [int] NOT NULL,
	[AreaCodeID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED 
(
	[EmployeeID] ASC,
	[AreaCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Main_Employees]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Main_Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](8) NOT NULL,
	[FirstName] [nvarchar](10) NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[HomePhone] [nvarchar](24) NULL,
	[Extension] [nvarchar](4) NULL,
	[Photo] [image] NULL,
	[Notes] [ntext] NULL,
	[ReportsTo] [int] NULL,
	[PhotoPath] [nvarchar](255) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[Employee] [int] NOT NULL,
	[Product] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NULL,
	[Customer] [int] NULL,
 CONSTRAINT [PK_Order Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [int] NULL,
	[ShipArea_Z] [int] NULL,
	[ShipCity_Z] [int] NULL,
	[ShipProvince_Z] [int] NULL,
	[ShipCountry] [nvarchar](15) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](20) NOT NULL,
	[Supplier] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[ReorderLevel] [smallint] NULL,
	[Discontinued] [bit] NULL,
 CONSTRAINT [PK_Products_1] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Region]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionID] [int] NOT NULL,
	[RegionDescription] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY NONCLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [int] NOT NULL,
	[pap] [nvarchar](50) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Territories]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Territories](
	[TerritoryID] [nvarchar](20) NOT NULL,
	[TerritoryDescription] [nchar](50) NOT NULL,
	[RegionID] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[Product Sales for 1997]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Product Sales for 1997] AS
SELECT Categories.CategoryName, Products.ProductName, 
Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ProductSales
FROM (Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID) 
	INNER JOIN (Orders 
		INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
	ON Products.ProductID = "Order Details".ProductID
WHERE (((Orders.ShippedDate) Between '19970101' And '19971231'))
GROUP BY Categories.CategoryName, Products.ProductName
GO
/****** Object:  View [dbo].[Category Sales for 1997]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Category Sales for 1997] AS
SELECT "Product Sales for 1997".CategoryName, Sum("Product Sales for 1997".ProductSales) AS CategorySales
FROM "Product Sales for 1997"
GROUP BY "Product Sales for 1997".CategoryName
GO
/****** Object:  View [dbo].[Order Details Extended]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Order Details Extended] AS
SELECT "Order Details".OrderID, "Order Details".ProductID, Products.ProductName, 
	"Order Details".UnitPrice, "Order Details".Quantity, "Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "Order Details" ON Products.ProductID = "Order Details".ProductID
--ORDER BY "Order Details".OrderID
GO
/****** Object:  View [dbo].[Sales by Category]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Sales by Category] AS
SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductName, 
	Sum("Order Details Extended".ExtendedPrice) AS ProductSales
FROM 	Categories INNER JOIN 
		(Products INNER JOIN 
			(Orders INNER JOIN "Order Details Extended" ON Orders.OrderID = "Order Details Extended".OrderID) 
		ON Products.ProductID = "Order Details Extended".ProductID) 
	ON Categories.CategoryID = Products.CategoryID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GROUP BY Categories.CategoryID, Categories.CategoryName, Products.ProductName
--ORDER BY Products.ProductName
GO
/****** Object:  View [dbo].[Order Subtotals]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Order Subtotals] AS
SELECT "Order Details".OrderID, Sum(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "Order Details"
GROUP BY "Order Details".OrderID
GO
/****** Object:  View [dbo].[Sales Totals by Amount]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Sales Totals by Amount] AS
SELECT "Order Subtotals".Subtotal AS SaleAmount, Orders.OrderID, Customers.CompanyName, Orders.ShippedDate
FROM 	Customers INNER JOIN 
		(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Customers.CustomerID = Orders.CustomerID
WHERE ("Order Subtotals".Subtotal >2500) AND (Orders.ShippedDate BETWEEN '19970101' And '19971231')
GO
/****** Object:  View [dbo].[Summary of Sales by Quarter]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Summary of Sales by Quarter] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
/****** Object:  View [dbo].[Summary of Sales by Year]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Summary of Sales by Year] AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate IS NOT NULL
--ORDER BY Orders.ShippedDate
GO
/****** Object:  View [dbo].[Alphabetical list of products]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Alphabetical list of products] AS
SELECT Products.*, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE (((Products.Discontinued)=0))
GO
/****** Object:  View [dbo].[Current Product List]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Current Product List] AS
SELECT Product_List.ProductID, Product_List.ProductName
FROM Products AS Product_List
WHERE (((Product_List.Discontinued)=0))
--ORDER BY Product_List.ProductName
GO
/****** Object:  View [dbo].[Customer and Suppliers by City]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Customer and Suppliers by City] AS
SELECT City, CompanyName, ContactName, 'Customers' AS Relationship 
FROM Customers
UNION SELECT City, CompanyName, ContactName, 'Suppliers'
FROM Suppliers
--ORDER BY City, CompanyName
GO
/****** Object:  View [dbo].[Invoices]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Invoices] AS
SELECT Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, Orders.ShipRegion, Orders.ShipPostalCode, 
	Orders.ShipCountry, Orders.CustomerID, Customers.CompanyName AS CustomerName, Customers.Address, Customers.City, 
	Customers.Region, Customers.PostalCode, Customers.Country, 
	(FirstName + ' ' + LastName) AS Salesperson, 
	Orders.OrderID, Orders.OrderDate, Orders.RequiredDate, Orders.ShippedDate, Shippers.CompanyName As ShipperName, 
	"Order Details".ProductID, Products.ProductName, "Order Details".UnitPrice, "Order Details".Quantity, 
	"Order Details".Discount, 
	(CONVERT(money,("Order Details".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice, Orders.Freight
FROM 	Shippers INNER JOIN 
		(Products INNER JOIN 
			(
				(Employees INNER JOIN 
					(Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID) 
				ON Employees.EmployeeID = Orders.EmployeeID) 
			INNER JOIN "Order Details" ON Orders.OrderID = "Order Details".OrderID) 
		ON Products.ProductID = "Order Details".ProductID) 
	ON Shippers.ShipperID = Orders.ShipVia
GO
/****** Object:  View [dbo].[Orders Qry]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Orders Qry] AS
SELECT Orders.OrderID, Orders.CustomerID, Orders.EmployeeID, Orders.OrderDate, Orders.RequiredDate, 
	Orders.ShippedDate, Orders.ShipVia, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity, 
	Orders.ShipRegion, Orders.ShipPostalCode, Orders.ShipCountry, 
	Customers.CompanyName, Customers.Address, Customers.City, Customers.Region, Customers.PostalCode, Customers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GO
/****** Object:  View [dbo].[Products Above Average Price]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Products Above Average Price] AS
SELECT Products.ProductName, Products.UnitPrice
FROM Products
WHERE Products.UnitPrice>(SELECT AVG(UnitPrice) From Products)
--ORDER BY Products.UnitPrice DESC
GO
/****** Object:  View [dbo].[Products by Category]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Products by Category] AS
SELECT Categories.CategoryName, Products.ProductName, Products.QuantityPerUnit, Products.UnitsInStock, Products.Discontinued
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Products.Discontinued <> 1
--ORDER BY Categories.CategoryName, Products.ProductName
GO
/****** Object:  View [dbo].[Quarterly Orders]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Quarterly Orders] AS
SELECT DISTINCT Customers.CustomerID, Customers.CompanyName, Customers.City, Customers.Country
FROM Customers RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate BETWEEN '19970101' And '19971231'
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CategoryName]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories]
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [City]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [City] ON [dbo].[Customers]
(
	[Area_Z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [CompanyName]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Customers]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PostalCode]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Customers]
(
	[Province_Z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Region]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [Region] ON [dbo].[Customers]
(
	[City_Z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [LastName]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [LastName] ON [dbo].[Main_Employees]
(
	[LastName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PostalCode]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Main_Employees]
(
	[PostalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CustomerID]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [CustomerID] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CustomersOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [CustomersOrders] ON [dbo].[Orders]
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeeID]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [EmployeeID] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [EmployeesOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [EmployeesOrders] ON [dbo].[Orders]
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [OrderDate]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [OrderDate] ON [dbo].[Orders]
(
	[OrderDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ShippedDate]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [ShippedDate] ON [dbo].[Orders]
(
	[ShippedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ShippersOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [ShippersOrders] ON [dbo].[Orders]
(
	[ShipVia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ShipPostalCode]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [ShipPostalCode] ON [dbo].[Orders]
(
	[ShipProvince_Z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CompanyName]    Script Date: 2016/6/2 上午 08:17:32 ******/
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Suppliers]
(
	[CompanyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)) FOR [UnitsOnOrder]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ReorderLevel]  DEFAULT ((0)) FOR [ReorderLevel]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Discontinued]  DEFAULT ((0)) FOR [Discontinued]
GO
ALTER TABLE [dbo].[CustomerCustomerDemo]  WITH CHECK ADD  CONSTRAINT [FK_CustomerCustomerDemo] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerDemographics] ([CustomerTypeID])
GO
ALTER TABLE [dbo].[CustomerCustomerDemo] CHECK CONSTRAINT [FK_CustomerCustomerDemo]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Employees]
GO
ALTER TABLE [dbo].[Data_Area]  WITH CHECK ADD  CONSTRAINT [FK_Data_Area_Data_City] FOREIGN KEY([CityCode])
REFERENCES [dbo].[Data_City] ([CityCode])
GO
ALTER TABLE [dbo].[Data_Area] CHECK CONSTRAINT [FK_Data_Area_Data_City]
GO
ALTER TABLE [dbo].[Data_City]  WITH CHECK ADD  CONSTRAINT [FK_Data_City_Data_Province] FOREIGN KEY([ProvinceCode])
REFERENCES [dbo].[Data_Province] ([ProvinceCode])
GO
ALTER TABLE [dbo].[Data_City] CHECK CONSTRAINT [FK_Data_City_Data_Province]
GO
ALTER TABLE [dbo].[EmployeeTerritories]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Main_Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeTerritories] CHECK CONSTRAINT [FK_EmployeeTerritories_Employees]
GO
ALTER TABLE [dbo].[Main_Employees]  WITH NOCHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ReportsTo])
REFERENCES [dbo].[Main_Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Main_Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Employees] FOREIGN KEY([Employee])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Employees]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([Supplier])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
ALTER TABLE [dbo].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Categories] FOREIGN KEY([Category])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Categories]
GO
ALTER TABLE [dbo].[Main_Employees]  WITH NOCHECK ADD  CONSTRAINT [CK_Birthdate] CHECK  (([BirthDate]<getdate()))
GO
ALTER TABLE [dbo].[Main_Employees] CHECK CONSTRAINT [CK_Birthdate]
GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Discount]
GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[Order Details]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_ReorderLevel] CHECK  (([ReorderLevel]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_ReorderLevel]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
ALTER TABLE [dbo].[Products]  WITH NOCHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
GO
/****** Object:  StoredProcedure [dbo].[arthur_test]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[arthur_test]
	-- Add the parameters for the stored procedure here
@cus_ord int,
@ave_amo int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   select @ave_amo = AVG(quantity)
   from [orders details]
   where orderid = @cus_ord
END

GO
/****** Object:  StoredProcedure [dbo].[CustOrderHist]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CustOrderHist] @CustomerID nchar(5)
AS
SELECT ProductName, Total=SUM(Quantity)
FROM Products P, [Order Details] OD, Orders O, Customers C
WHERE C.CustomerID = @CustomerID
AND C.CustomerID = O.CustomerID AND O.OrderID = OD.OrderID AND OD.ProductID = P.ProductID
GROUP BY ProductName
GO
/****** Object:  StoredProcedure [dbo].[CustOrdersDetail]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CustOrdersDetail] @OrderID int
AS
SELECT ProductName,
    UnitPrice=ROUND(Od.UnitPrice, 2),
    Quantity,
    Discount=CONVERT(int, Discount * 100), 
    ExtendedPrice=ROUND(CONVERT(money, Quantity * (1 - Discount) * Od.UnitPrice), 2)
FROM Products P, [Order Details] Od
WHERE Od.ProductID = P.ProductID and Od.OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[CustOrdersOrders]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CustOrdersOrders] @CustomerID nchar(5)
AS
SELECT OrderID, 
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Orders
WHERE CustomerID = @CustomerID
ORDER BY OrderID
GO
/****** Object:  StoredProcedure [dbo].[Employee Sales by Country]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Employee Sales by Country] 
@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Employees.Country, Employees.LastName, Employees.FirstName, Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal AS SaleAmount
FROM Employees INNER JOIN 
	(Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID) 
	ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO
/****** Object:  StoredProcedure [dbo].[Sales by Year]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sales by Year] 
	@Beginning_Date DateTime, @Ending_Date DateTime AS
SELECT Orders.ShippedDate, Orders.OrderID, "Order Subtotals".Subtotal, DATENAME(yy,ShippedDate) AS Year
FROM Orders INNER JOIN "Order Subtotals" ON Orders.OrderID = "Order Subtotals".OrderID
WHERE Orders.ShippedDate Between @Beginning_Date And @Ending_Date
GO
/****** Object:  StoredProcedure [dbo].[SalesByCategory]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesByCategory]
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT ProductName,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.Quantity * (1-OD.Discount) * OD.UnitPrice)), 0)
FROM [Order Details] OD, Orders O, Products P, Categories C
WHERE OD.OrderID = O.OrderID 
	AND OD.ProductID = P.ProductID 
	AND P.CategoryID = C.CategoryID
	AND C.CategoryName = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.OrderDate, 111), 1, 4) = @OrdYear
GROUP BY ProductName
ORDER BY ProductName
GO
/****** Object:  StoredProcedure [dbo].[Ten Most Expensive Products]    Script Date: 2016/6/2 上午 08:17:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Ten Most Expensive Products] AS
SET ROWCOUNT 10
SELECT Products.ProductName AS TenMostExpensiveProducts, Products.UnitPrice
FROM Products
ORDER BY Products.UnitPrice DESC
GO
USE [master]
GO
ALTER DATABASE [Northwind] SET  READ_WRITE 
GO
