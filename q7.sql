SELECT DISTINCT M.name
froM (SELECT name, CONFERENCE, YEAR
FROM authors a,
    (SELECT a2.conference, a2.year
    FROM authors a2
    WHERE a2.name = 'Omri Abend') o
WHERE a.conference = o.conference and o.year = a.year) M
GROUP BY M.name
HAVING count(a.conference) = count(o.conference)
ORDER BY M.name;
