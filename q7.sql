SELECT name
FROM authors a,
    (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') o
WHERE a.conference = o.conference and a.year = o.year
GROUP BY a.name
HAVING count(*) = count(o);