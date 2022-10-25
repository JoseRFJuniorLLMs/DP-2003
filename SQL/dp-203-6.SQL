IF OBJECT_ID('tempdb..#DateTmp') IS NOT NULL
BEGIN
    DROP TABLE #DateTmp
END

CREATE TABLE #DateTmp (DateKey datetime NOT NULL)

-- Create temp table with all the dates we will use
DECLARE @StartDate datetime
DECLARE @EndDate datetime
SET @StartDate = '01/01/2005'
SET @EndDate = getdate() 
DECLARE @LoopDate datetime
SET @LoopDate = @StartDate
WHILE @LoopDate <= @EndDate
BEGIN
INSERT INTO #DateTmp VALUES
    (
        @LoopDate
    )  		  
    SET @LoopDate = DateAdd(dd, 1, @LoopDate)
END

INSERT INTO dbo.DimDate 
SELECT
CAST(CONVERT(VARCHAR(8), DateKey, 112) AS int) , -- date key
        DateKey, -- date alt key
        Year(DateKey), -- calendar year
        datepart(qq, DateKey), -- calendar quarter
        Month(DateKey), -- month number of year
        datename(mm, DateKey), -- month name
        Day(DateKey),  -- day number of month
        datepart(dw, DateKey), -- day number of week
        datename(dw, DateKey), -- day name of week
        CASE
            WHEN Month(DateKey) < 7 THEN Year(DateKey)
            ELSE Year(DateKey) + 1
        END, -- Fiscal year (assuming fiscal year runs from Jul to June)
        CASE
            WHEN Month(DateKey) IN (1, 2, 3) THEN 3
            WHEN Month(DateKey) IN (4, 5, 6) THEN 4
            WHEN Month(DateKey) IN (7, 8, 9) THEN 1
            WHEN Month(DateKey) IN (10, 11, 12) THEN 2
        END -- fiscal quarter 
    FROM #DateTmp
GO