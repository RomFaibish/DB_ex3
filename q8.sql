SELECT name
FROM authors NATURAL JOIN conferences
WHERE subarea = 'ml' AND totalcount > 0
GROUP BY name
HAVING count(DISTINCT conference) >= 3
INTERSECT
SELECT name
FROM authors NATURAL JOIN conferences
WHERE year >= 2020
