SELECT DISTINCT name
FROM authors a,
    (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') o
WHERE a.conference EXISTS o and a.year EXISTS o
GROUP BY a.name
HAVING count(*) = count(o.conference)
ORDER BY name;