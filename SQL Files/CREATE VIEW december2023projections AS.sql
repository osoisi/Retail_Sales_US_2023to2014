CREATE VIEW december2023projections AS
SELECT [Year]
      ,[CodeN]
      ,[Industry]
      ,[Industry_Group]
      ,ROUND((January+February+March+April+May+June+July+August+September+October+November)/11, 0) AS December
  FROM view_industry_groupings
  WHERE December IS NULL