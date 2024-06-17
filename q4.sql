SELECT DISTINCT name,year
FROM(
    SELECT name,year
    FROM authors NATURAL JOIN conferences
    WHERE institution = 'Hebrew University of Jerusalem' and Subarea = 'ai'
    INTERSECT
    SELECT name,year
    FROM authors NATURAL JOIN conferences
    WHERE institution = 'Hebrew University of Jerusalem' and Subarea = 'economics'
) T
ORDER BY name,year