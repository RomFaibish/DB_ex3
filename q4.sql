SELECT DISTINCT name,year
FROM authors NATURAL JOIN conferences
WHERE institution LIKE 'Hebrew%' and Subarea = 'ai'
INTERSECT
SELECT DISTINCT name,year
FROM authors NATURAL JOIN conferences
WHERE institution LIKE 'Hebrew%' and Subarea = 'economics'
ORDER BY name,year