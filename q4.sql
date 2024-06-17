SELECT DISTINCT name,year
FROM(
    SELECT DISTINCT name,year
    FROM authors NATURAL JOIN conferences
    WHERE institution = 'Hebrew University of Jerusalem' and Subarea = 'ai'
    INTERSECT
    SELECT DISTINCT name,year
    FROM authors NATURAL JOIN conferences
    WHERE institution = 'Hebrew University of Jerusalem' and Subarea = 'economics'
) AS intersected_name_year
ORDER BY name,year