SELECT DISTINCT name
FROM authors a
WHERE (a.conference,a.year) IN (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') AS o
GROUP BY a.name
HAVING count(*) = count(o.conference)
ORDER BY name;
