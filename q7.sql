SELECT DISTINCT name
FROM authors a,
    (SELECT conference, year
    FROM authors
    WHERE name = 'Omri Abend') o
WHERE a.conference = o.conference and o.year = a.year
GROUP BY name
HAVING count(*) >= ALL(SELECT count(*)
                            FROM authors
                            WHERE name = 'Omri Abend')
ORDER BY name ASC;