SELECT
    Coalesce(p.[ModelName], p.[EnglishProductName]) AS [Model]
    ,g.City AS ResellerCity
    ,g.StateProvinceName AS StateProvince
    ,d.[CalendarYear]
    ,d.[FiscalYear]
    ,d.[MonthOfYear] AS [Month]
    ,sum(f.OrderQuantity) AS Quantity
    ,sum(f.ExtendedAmount) AS Amount
    ,approx_count_distinct(f.SalesOrderNumber) AS UniqueOrders  
FROM
    [dbo].[FactResellerSales] f
INNER JOIN [dbo].[DimReseller] r
    ON f.ResellerKey = r.ResellerKey
INNER JOIN [dbo].[DimGeography] g
    ON r.GeographyKey = g.GeographyKey
INNER JOIN [dbo].[DimDate] d
    ON f.[OrderDateKey] = d.[DateKey]
INNER JOIN [dbo].[DimProduct] p
    ON f.[ProductKey] = p.[ProductKey]
WHERE d.[MonthOfYear] = 10 AND d.[FiscalYear] IN (2012, 2013)
GROUP BY
    Coalesce(p.[ModelName], p.[EnglishProductName])
    ,g.City
    ,g.StateProvinceName
    ,d.[CalendarYear]
    ,d.[FiscalYear]
    ,d.[MonthOfYear]
ORDER BY d.[FiscalYear]