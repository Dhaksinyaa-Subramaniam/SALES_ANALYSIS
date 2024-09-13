SELECT 
      ProductKey,
      OrderDateKey,
      DueDateKey,
      ShipDateKey,
      CustomerKey,
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      SalesOrderNumber,
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      SalesAmount
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  where left(orderdatekey,4) >= year(getdate())-2 --ensures we always only bring previous two years of date from present for analysis
  order by OrderDateKey asc;
