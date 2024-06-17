SELECT DISTINCT a.name
FROM authors a,
    (SELECT a2.conference, a2.year
    FROM authors a2
    WHERE a2.name = 'Omri Abend') as T
WHERE a.conference IN (select T.conference from T where T.year = a.year);
--GROUP BY a.name
--HAVING count(*) = count(o.conference)
--ORDER BY name;
