/****** Cleaned DIM_Customer Table ******/
SELECT c.customerkey AS [CustomerKey]
      --,[GeographyKey]
     -- ,[CustomerAlternateKey]
      --,[Title]
      ,c.[FirstName] as [First Name]
      --,[MiddleName] 
      ,c.[LastName] as [Last Name]
	  ,c.[FirstName]+' '+[LastName] AS FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE c.[Gender] WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS GENDER
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.[DateFirstPurchase] AS DateFirstPurchase
	  ,g.city as [Customer City]  --joined customer city from geography table 
      --,[CommuteDistance]
  FROM [AdventureWorksDW2017].[dbo].[DimCustomer] AS c
  left join [AdventureWorksDW2017].[dbo].[DimGeography] as g 
  ON g.GeographyKey =c.GeographyKey
  ORDER BY CustomerKey ASC; --ordered list customer key