SELECT DISTINCT name
FROM authors a,
    (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') o
WHERE (a.conference,a.year) IN o
GROUP BY a.name
HAVING count(*) = count(o.conference)
ORDER BY name;
