SELECT DISTINCT name
FROM authors a,
    (SELECT a2.conference, a2.year
    FROM authors a2
    WHERE a2.name = 'Omri Abend') o
WHERE a.conference = o.conference and o.year = a.year
GROUP BY name
HAVING count(*) >= ALL(SELECT count(*)
                            FROM o)
