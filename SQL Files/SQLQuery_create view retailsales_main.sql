CREATE VIEW view_retailsales_main AS
SELECT 
    --   [column1] AS SN
       [Year]
    --  ,[Code]
    -- merged dual-codes into one
      ,CASE WHEN Code = '44114412' THEN '4411' 
		WHEN Code = '442443' THEN '442'
		ELSE Code END AS CodeN
      ,[Industry]
      ,[Jan_2022] AS January
      ,[Feb_2022] AS February
      ,[Mar_2022] AS March
      ,[Apr_2022] AS April
      ,[May_2022] AS May
      ,[Jun_2022] AS June
      ,[Jul_2022] AS July
      ,[Aug_2022] AS August
      ,[Sep_2022] AS September
      ,[Oct_2022] AS October
      ,[Nov_2022] AS November
      ,[Dec_2022] AS December
--      ,[TOTAL]
  FROM [db_us_retailsales_2014to2023].[dbo].[retail_sales_2023to2014new]
  --eliminating empty rows
  WHERE Industry !='Men''s clothing stores' AND Industry != 'Jewelry stores'