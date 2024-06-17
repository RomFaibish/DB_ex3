WITH author_year_total(
    SELECT name, year, SUM(totalcount) AS yearCount
    FROM authors natural join conferences
    GROUP BY name, year
    )
SELECT a1.year, a1.name
FROM author_year_total a1
GROUP BY year
HAVING a1.yearCount >=ALL(SELECT yearCount FROM author_year_total a2 WHERE a1.year=a2.year)
ORDER BY a1.country, a1.institution;
