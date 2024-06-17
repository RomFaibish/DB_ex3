WITH author_year_total(
    SELECT name, year, SUM(totalcount) AS yearCount
    FROM authors natural join conferences
    GROUP BY name, year
    )
SELECT year, name
FROM author_year_total a1
GROUP BY year
HAVING yearCount >=ALL(SELECT yearCount FROM author_year_total a2 WHERE a1.year=a2.year)
ORDER BY country, institution;
