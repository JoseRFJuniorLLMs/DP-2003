CREATE TABLE [dbo].[DimDate]
( 
    [DateKey] [int]  NOT NULL,
    [DateAltKey] [datetime]  NOT NULL,
    [CalendarYear] [int]  NOT NULL,
    [CalendarQuarter] [int]  NOT NULL,
    [MonthOfYear] [int]  NOT NULL,
    [MonthName] [nvarchar](15)  NOT NULL,
    [DayOfMonth] [int]  NOT NULL,
    [DayOfWeek] [int]  NOT NULL,
    [DayName] [nvarchar](15)  NOT NULL,
    [FiscalYear] [int]  NOT NULL,
    [FiscalQuarter] [int]  NOT NULL
)
WITH
(
    DISTRIBUTION = REPLICATE,
    CLUSTERED COLUMNSTORE INDEX
);
GO