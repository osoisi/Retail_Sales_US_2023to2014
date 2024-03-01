CREATE VIEW view_industry_groupings AS
SELECT [Year]
      ,[CodeN]
      ,[Industry]
      ,CASE WHEN Industry LIKE 'Auto%' THEN 'Car' 
            WHEN Industry LIKE 'Motor%' THEN 'Car'
            WHEN Industry LIKE 'Gaso%'THEN 'Car'
            WHEN Industry LIKE 'Fuel%'THEN 'Car'
            WHEN Industry LIKE 'Furniture%' THEN 'Home'
            WHEN Industry LIKE 'Electr%'THEN 'Home'

            WHEN Industry LIKE 'Building%' THEN 'Construction'
            WHEN Industry LIKE 'Food%' THEN 'Consumption'
            WHEN Industry LIKE 'Groc%'THEN 'Consumption'
            WHEN Industry LIKE 'Beer%'THEN 'Consumption'
            WHEN Industry LIKE 'Health%'THEN 'Consumption'
            WHEN Industry LIKE 'Pharm%'THEN 'Consumption'
            WHEN Industry LIKE '%lothing%'THEN 'Consumption'
            WHEN Industry LIKE 'Shoe%'THEN 'Consumption'
            WHEN Industry LIKE 'Sport%'THEN 'Hobby'
            
            
                ELSE 'Mix' END AS Industry_Group
      ,[January]
      ,[February]
      ,[March]
      ,[April]
      ,[May]
      ,[June]
      ,[July]
      ,[August]
      ,[September]
      ,[October]
      ,[November]
      ,[December]
  FROM [db_us_retailsales_2014to2023].[dbo].[view_retailsales_main]