SELECT DISTINCT T.name
FROM (
    SELECT DISTINCT name
    FROM authors NATURAL JOIN conferences
    WHERE subarea = 'ml' AND totalcount > 0
    GROUP BY name
    HAVING count(DISTINCT conference) >= 3
    INTERSECT
    SELECT DISTINCT name
    FROM authors NATURAL JOIN conferences
    WHERE subarea = 'ml' and year >= 2020
    ) T
ORDER BY T.name