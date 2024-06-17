--SELECT DISTINCT name
--FROM authors a,
--    (SELECT conference, year
--    FROM authors
--    WHERE name = 'Omri Abend') o
--WHERE a.conference = o.conference and o.year = a.year
--GROUP BY name
--HAVING count(*) >= ALL(SELECT count(*)
--                       FROM authors
--                       WHERE name = 'Omri Abend')
--ORDER BY name ASC;
SELECT DISTINCT name
FROM authors a1
WHERE NOT EXISTS((SELECT a2.conference, a2.year
                  FROM author a2)
                  EXCEPT
                  (SELECT a3.conference, a3.year
                  FROM author a3
                  WHERE a1.name = a3.name and a1.year = a3.year))
ORDER BY name ASC;