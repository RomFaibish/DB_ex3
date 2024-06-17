SELECT country, count(*) AS institutionCount
FROM institutions
GROUP BY country
ORDER BY country ASC;