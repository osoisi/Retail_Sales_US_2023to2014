CREATE VIEW industry_group_codes AS 
SELECT 
       distinct([Industry_Group])
      ,CodeN
  FROM [db_us_retailsales_2014to2023].[dbo].[view_industry_groupings]