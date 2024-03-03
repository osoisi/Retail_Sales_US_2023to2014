CREATE VIEW view_retaildata_december2023_fixed AS
SELECT vig.[Year]
      ,vig.[CodeN]
      ,vig.[Industry]
      ,vig.[Industry_Group]
      ,vig.[January]
      ,vig.[February]
      ,vig.[March]
      ,vig.[April]
      ,vig.[May]
      ,vig.[June]
      ,vig.[July]
      ,vig.[August]
      ,vig.[September]
      ,vig.[October]
      ,vig.[November]
    --  ,vig.December
    --  ,d03.december
      ,CAST(COALESCE(vig.December, d03.December) AS INTEGER) AS December
    --  ,CAST((CASE WHEN vig.December IS NULL THEN d03.December ELSE vig.December END) AS INTEGER)
  FROM view_industry_groupings AS vig
  LEFT JOIN december2023projections AS d03 ON vig.year=d03.YEAR AND vig.CodeN=d03.CodeN-- AND vig.[Year]=2023
  --WHERE vig.[Year]=2023