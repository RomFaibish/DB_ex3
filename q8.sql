SELECT DISTINCT name
FROM authors NATURAL JOIN conferences
WHERE subarea = 'ml' AND totalcount > 0
GROUP BY name
HAVING count(*) >= 3
INTERSECT
SELECT DISTINCT name
FROM authors NATURAL JOIN conferences
WHERE year >= 2020
