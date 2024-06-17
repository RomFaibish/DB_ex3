WITH country_publishes AS(
    SELECT institution, country, SUM(totalcount) AS countryCount
    FROM institutions NATURAL JOIN authors
    GROUP BY institution
    )
SELECT country, institution, countryCount
FROM country_publishes c1
WHERE c1.countryCount >= ALL(SELECT c2.countryCount FROM country_publishes c2 WHERE c1.country = c2.country)
ORDER BY country, institution;

