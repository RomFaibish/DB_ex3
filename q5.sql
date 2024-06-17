SELECT a.name
FROM authors a
WHERE a.name NOT IN (SELECT ac1.name
                        FROM authors natural join conferences ac1
                       where ac1.year>1980 or ac1.area != 'theory')
ORDER BY name;