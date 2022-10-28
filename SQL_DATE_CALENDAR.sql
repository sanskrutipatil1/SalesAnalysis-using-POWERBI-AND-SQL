/****** Cleaned DATE dim table ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] AS DATE
      --,[DayNumberOfWeek] 
      ,[EnglishDayNameOfWeek] AS DAY
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNr
      ,[EnglishMonthName] AS MONTH
	  ,left([EnglishMonthName],3) as MonthShort --useful for front end date navigation and graphs
      --,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNo
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS YEAR
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2017].[dbo].[DimDate]
  where [CalendarYear] >= 2012;