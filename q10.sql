WITH author_area_total AS(
    SELECT name, year, SUM(totalcount) AS areaCount
    FROM authors
    GROUP BY name, year
    )
SELECT a1.year, a1.name
FROM author_area_total a1
GROUP BY year,name
HAVING SUM(a1.areaCount)>=ALL(SELECT a2.areaCount FROM author_area_total a2 WHERE a1.year=a2.year)
ORDER BY a1.year, a1.name;
--
--WITH author_area_total AS(
--    SELECT name, year, area, SUM(totalcount) AS areaCount
--    FROM authors NATURAL JOIN conferences
--    GROUP BY name, year, area
--    )
--SELECT a1.year, a1.name
--FROM author_area_total a1
--GROUP BY year,name
--HAVING SUM(a1.areaCount)>=ALL(SELECT SUM(a2.areaCount) FROM author_area_total a2 WHERE a1.year=a2.year)
--ORDER BY a1.year, a1.name;
