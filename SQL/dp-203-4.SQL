COPY INTO [dbo].[DimProductCategory]
FROM 'https://solliancepublicdata.blob.core.windows.net/dataengineering/dp-203/awdata/DimProductCategory.csv'
WITH (
    FILE_TYPE='CSV',
    FIELDTERMINATOR='|',
    FIELDQUOTE='',
    ROWTERMINATOR='\n',
    ENCODING = 'UTF16'
);
GO

COPY INTO [dbo].[DimProductSubcategory]
FROM 'https://solliancepublicdata.blob.core.windows.net/dataengineering/dp-203/awdata/DimProductSubcategory.csv'
WITH (
    FILE_TYPE='CSV',
    FIELDTERMINATOR='|',
    FIELDQUOTE='',
    ROWTERMINATOR='\n',
    ENCODING = 'UTF16'
);
GO