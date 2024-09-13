SELECT  
       c.CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.FirstName,
      --,[MiddleName]
      c.LastName,
	  concat(c.FirstName, ' ' , c.LastName) as FullName,
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      case when c.Gender='M' then 'Male' else 'Female' end as Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.DateFirstPurchase,
	  g.City as CustomerCity
      --,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] as c
  left join AdventureWorksDW2022.dbo.DimGeography as g
  on c.GeographyKey = g.GeographyKey
  order by c.CustomerKey asc;
