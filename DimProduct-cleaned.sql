SELECT 
      p.ProductKey,
      p.ProductAlternateKey as ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.EnglishProductName as ProductName,
	  pc.EnglishProductCategoryName as ProductCategory,
	  ps.EnglishProductSubcategoryName as ProductSubCategory,
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.Color as ProductColor,
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      p.Size as ProductSize,
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.ProductLine as ProductLine,
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.ModelName as ProductModelName,
      --,[LargePhoto]
      p.EnglishDescription as ProductDescription,
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
        isnull(p.Status,'Outdated') as ProductStatus
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] p
  left join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  left join [AdventureWorksDW2022].[dbo].[DimProductCategory] pc on ps.ProductCategoryKey = pc.ProductCategoryKey
  order by p.ProductKey asc;


