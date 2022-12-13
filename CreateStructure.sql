
IF OBJECT_ID (Ndbo.SKU, U) IS NOT NULL 
	DROP TABLE IF EXISTS dbo.SKU;  
GO
CREATE TABLE dbo.SKU (
	ID        INT IDENTITY(1,1) NOT NULL  ,
	Code        VARCHAR(45)  NOT NULL  DEFAULT S PRIMARY KEY, 
	[Name]     VARCHAR(45)  NOT NULL
);



IF OBJECT_ID (Ndbo.Basket, U) IS NOT NULL 
	DROP TABLE IF EXISTS dbo.Basket;  
GO

CREATE TABLE dbo.Basket (
	ID        INT IDENTITY(1,1) NOT NULL ,
	ID_SKU       VARCHAR(45) NOT NULL, FOREIGN KEY(ID_SKU) REFERENCES dbo.SKU(code),
	Quantity     INT  NULL   CHECK(Quantity >= 0) ,
	[Value]        INT   NULL CHECK([Value]  >= 0) ,
	PurchaseDate   datetime   NOT NULL DEFAULT(SYSDATETIME()),
	DiscountValue   INT   NOT NULL
);



IF OBJECT_ID (Ndbo.Family, U) IS NOT NULL 
	DROP TABLE IF EXISTS dbo.Family;  
GO
CREATE TABLE dbo.Family (
	ID        INT IDENTITY(1,1) NOT NULL ,
	FamilySurName       VARCHAR(45) NOT NULL, 
	BudgetValue     INT  NULL 
);
