    (SELECT a2.conference, a2.year
    FROM authors a2
    WHERE a2.name = 'Omri Abend') o
SELECT DISTINCT name
FROM authors a, o
WHERE a.conference = o.conference and o.year = a.year
GROUP BY a.name
HAVING count(a.conference) = count(o.conference)
ORDER BY name;
