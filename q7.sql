SELECT DISTINCT name
FROM authors a,
    (SELECT a2.conference, a2.year
    FROM authors a2
    WHERE a2.name = 'Omri Abend') o
WHERE a.year = o.year
--GROUP BY a.name
--HAVING count(*) = count(o.conference)
ORDER BY name;
