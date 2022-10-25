CREATE TABLE [dbo].[DimProductCategory](
    [ProductCategoryKey] [int] NOT NULL,
    [ProductCategoryAlternateKey] [int] NULL,
    [EnglishProductCategoryName] [nvarchar](50) NOT NULL,
    [SpanishProductCategoryName] [nvarchar](50) NOT NULL,
    [FrenchProductCategoryName] [nvarchar](50) NOT NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);
GO

CREATE TABLE [dbo].[DimProductSubcategory](
    [ProductSubcategoryKey] [int] NOT NULL,
    [ProductSubcategoryAlternateKey] [int] NULL,
    [EnglishProductSubcategoryName] [nvarchar](50) NOT NULL,
    [SpanishProductSubcategoryName] [nvarchar](50) NOT NULL,
    [FrenchProductSubcategoryName] [nvarchar](50) NOT NULL,
    [ProductCategoryKey] [int] NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);
GO