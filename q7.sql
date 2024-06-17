SELECT DISTINCT name
FROM authors a
WHERE (a.conference,a.year) IN (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') o
GROUP BY a.name
HAVING count(*) = count(o.conference)
ORDER BY name;
