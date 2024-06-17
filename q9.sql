WITH country_publishes AS(
    SELECT institution, country, SUM(totalcount) AS institutionCount
    FROM institutions NATURAL JOIN authors
    GROUP BY institution
    )
SELECT c1.country, c1.institution, c1.institutionCount AS countryCount
FROM country_publishes c1
WHERE c1.institutionCount >= ALL(SELECT institutionCount FROM country_publishes c2 WHERE c1.country = c2.country)
ORDER BY country, institution;