SELECT DISTINCT  name,year
FROM authors NATURAL JOIN conferences
WHERE (
SELECT name,year
FROM
WHERE institution = 'Hebrew University of Jerusalem' and Subarea = 'ai'
INTERSECT
SELECT name,year
FROM
WHERE institution = 'Hebrew University of Jerusalem' and Subarea = 'economics'
)
ORDER BY name,year