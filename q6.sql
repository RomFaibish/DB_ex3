SELECT DISTINCT a1.name
FROM authors a1
WHERE NOT EXISTS((SELECT a2.conference, a2.year
                  FROM authors a2
                  WHERE a2.name = 'Omri Abend')
                  EXCEPT
                  (SELECT a3.conference, a3.year
                  FROM authors a3
                  WHERE a1.name = a3.name))
ORDER BY a1.name ASC;