SELECT DISTINCT name
FROM authors a,
    (SELECT conference, year, count(*) as counto
    FROM authors
    WHERE name = 'Omri Abend') o
WHERE a.conference = o.conference and o.year = a.year
GROUP BY name
HAVING count(*) >= ALL o.counto
ORDER BY name ASC;