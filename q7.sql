SELECT DISTINCT name
FROM authors a,
    (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') o
WHERE a.conference EXISTS (SELECT conference FROM o)  AND a.year EXISTS (SELECT year FROM o)
GROUP BY a.name
HAVING count(*) = count(o.conference)
ORDER BY name;
