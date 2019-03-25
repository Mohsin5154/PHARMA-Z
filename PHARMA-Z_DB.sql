/*
Navicat SQL Server Data Transfer

Source Server         : SQLSERVER
Source Server Version : 110000
Source Host           : DESKTOP-H4D0KNJ\SQLEXPRESS:1433
Source Database       : PHARMA-Z
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2019-03-24 17:18:38
*/


-- ----------------------------
-- Table structure for Brand
-- ----------------------------
DROP TABLE [dbo].[Brand]
GO
CREATE TABLE [dbo].[Brand] (
[Id] int NOT NULL ,
[Name] varchar(255) NOT NULL ,
[CompanyId] int NOT NULL ,
[Use] varchar(255) NULL ,
[Precautions] varchar(255) NULL ,
[Side Effects] varchar(255) NULL ,
[Overview] varchar(255) NULL ,
[Meta] varchar(255) NULL ,
[IsFavorite] bit NULL ,
[IsRecent] bit NULL 
)


GO

-- ----------------------------
-- Records of Brand
-- ----------------------------

-- ----------------------------
-- Table structure for Company
-- ----------------------------
DROP TABLE [dbo].[Company]
GO
CREATE TABLE [dbo].[Company] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Name] varchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Company]', RESEED, 1001)
GO

-- ----------------------------
-- Records of Company
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Company] ON
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'1', N'Reckitt Benkiser Pakistan Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'2', N'PFizer Laboratories Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'3', N'Abbott Laboratories(Pakistan) Limited')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'4', N'Sami Pharmaceuticals (PVT) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'5', N'Searle Pakisatan (PVT) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'6', N'Glaxosmithkline')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'7', N'Helix Pharma (Private) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'8', N'Merck Private Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'9', N'Hilton Pharma (PVT) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'10', N'Novartis Pharma (Pakistan) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'11', N'AGP (Private) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'12', N'Platinum Pharmaceuticals (PVT) Ltd.')
GO
GO
INSERT INTO [dbo].[Company] ([Id], [Name]) VALUES (N'13', N'Raazee Theraputics (PVT) Ltd.')
GO
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO

-- ----------------------------
-- Table structure for Dosages
-- ----------------------------
DROP TABLE [dbo].[Dosages]
GO
CREATE TABLE [dbo].[Dosages] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Adult] varchar(50) NOT NULL ,
[Neonatal] varchar(50) NOT NULL ,
[Paedriatic] varchar(50) NOT NULL ,
[GenericId] int NOT NULL 
)


GO

-- ----------------------------
-- Records of Dosages
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Dosages] ON
GO
SET IDENTITY_INSERT [dbo].[Dosages] OFF
GO

-- ----------------------------
-- Table structure for Feedback
-- ----------------------------
DROP TABLE [dbo].[Feedback]
GO
CREATE TABLE [dbo].[Feedback] (
[EmailFrom] varchar(50) NULL ,
[Pwd] varchar(50) NULL ,
[EmailTo] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Feedback
-- ----------------------------
INSERT INTO [dbo].[Feedback] ([EmailFrom], [Pwd], [EmailTo]) VALUES (N'zuma2k18@outlook.com', N'Zumaa51576065', N'mohsin2851@outlook.com')
GO
GO

-- ----------------------------
-- Table structure for Forms
-- ----------------------------
DROP TABLE [dbo].[Forms]
GO
CREATE TABLE [dbo].[Forms] (
[Id] int NOT NULL ,
[Medicine_Form] varchar(255) NULL ,
[Image] varchar(255) NULL 
)


GO

-- ----------------------------
-- Records of Forms
-- ----------------------------

-- ----------------------------
-- Table structure for Generic
-- ----------------------------
DROP TABLE [dbo].[Generic]
GO
CREATE TABLE [dbo].[Generic] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Name] varchar(255) NOT NULL ,
[Overview] varchar(50) NULL ,
[BrandId] int NULL ,
[Gramage] varchar(255) NULL ,
[IsRecent] bit NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Generic]', RESEED, 12)
GO

-- ----------------------------
-- Records of Generic
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Generic] ON
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'2', N'sulphamethoxazole , trimethoprime : 160mg', null, null, N'800mg', null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'3', N'sulphamethoxazole : 400mg , trimethoprime : 80mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'4', N'orphenadrine :50mg , paracetamol : 650mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'5', N'orphenadrine :35mg , paracetamol : 450mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'6', N'nimesulide : 100mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'7', N'aspirin : 100mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'8', N'PARACETAMOL : 500mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'9', N'ibuprofen : 200mg or 400mg 0r 600mg ', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'10', N'PARACETAMOL : 500mg', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'11', N'mefenamic Acid : 50mg/5mlx', null, null, null, null)
GO
GO
INSERT INTO [dbo].[Generic] ([Id], [Name], [Overview], [BrandId], [Gramage], [IsRecent]) VALUES (N'12', N'Aspirin : 300mg ,calcium carbonate : 90mg , citric acid : 30mg ', null, null, null, null)
GO
GO
SET IDENTITY_INSERT [dbo].[Generic] OFF
GO

-- ----------------------------
-- Table structure for System_Configuration
-- ----------------------------
DROP TABLE [dbo].[System_Configuration]
GO
CREATE TABLE [dbo].[System_Configuration] (
[Theme_Toggle] int NULL ,
[Disclaimer_Check] bit NULL 
)


GO

-- ----------------------------
-- Records of System_Configuration
-- ----------------------------
INSERT INTO [dbo].[System_Configuration] ([Theme_Toggle], [Disclaimer_Check]) VALUES (N'0', N'1')
GO
GO

-- ----------------------------
-- Procedure structure for GetAllCompanies
-- ----------------------------
DROP PROCEDURE [dbo].[GetAllCompanies]
GO

-- Batch submitted through debugger: SQLQuery5.sql|7|0|C:\Users\Mohsin\AppData\Local\Temp\~vs8DD4.sql
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCompanies] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	SELECT * FROM Company;
END


GO

-- ----------------------------
-- Procedure structure for GetInitialSystemConfiguration
-- ----------------------------
DROP PROCEDURE [dbo].[GetInitialSystemConfiguration]
GO

CREATE PROCEDURE [dbo].[GetInitialSystemConfiguration]
AS
	SELECT * FROM System_Configuration;


GO

-- ----------------------------
-- Procedure structure for InitializeFeedback
-- ----------------------------
DROP PROCEDURE [dbo].[InitializeFeedback]
GO

CREATE PROCEDURE [dbo].[InitializeFeedback]
AS
	SELECT * FROM Feedback

GO

-- ----------------------------
-- Procedure structure for UpdateDisclaimerCheck
-- ----------------------------
DROP PROCEDURE [dbo].[UpdateDisclaimerCheck]
GO

CREATE PROCEDURE [dbo].[UpdateDisclaimerCheck]
		@DisclaimerCheck bit
AS
	UPDATE System_Configuration SET Disclaimer_Check = @DisclaimerCheck;

GO

-- ----------------------------
-- Procedure structure for UpdateTheme
-- ----------------------------
DROP PROCEDURE [dbo].[UpdateTheme]
GO

CREATE PROCEDURE [dbo].[UpdateTheme]
	@theme int
AS
	UPDATE System_Configuration SET Theme_Toggle = @theme;

GO

-- ----------------------------
-- Indexes structure for table Brand
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Brand
-- ----------------------------
ALTER TABLE [dbo].[Brand] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Company
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Company
-- ----------------------------
ALTER TABLE [dbo].[Company] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Dosages
-- ----------------------------
CREATE UNIQUE INDEX [IX_DOSAGES_GENERIC] ON [dbo].[Dosages]
([GenericId] ASC) 
WITH (IGNORE_DUP_KEY = ON)
GO

-- ----------------------------
-- Primary Key structure for table Dosages
-- ----------------------------
ALTER TABLE [dbo].[Dosages] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Forms
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Forms
-- ----------------------------
ALTER TABLE [dbo].[Forms] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table Generic
-- ----------------------------
CREATE INDEX [IX_GENERIC_BRAND] ON [dbo].[Generic]
([BrandId] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table Generic
-- ----------------------------
ALTER TABLE [dbo].[Generic] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Brand]
-- ----------------------------
ALTER TABLE [dbo].[Brand] ADD FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Company] ([Id]) ON DELETE NO ACTION ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Dosages]
-- ----------------------------
ALTER TABLE [dbo].[Dosages] ADD FOREIGN KEY ([GenericId]) REFERENCES [dbo].[Generic] ([Id]) ON DELETE CASCADE ON UPDATE CASCADE
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[Generic]
-- ----------------------------
ALTER TABLE [dbo].[Generic] ADD FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brand] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO
