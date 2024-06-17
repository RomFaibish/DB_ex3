SELECT name
FROM authors natural join conferences ac1
WHERE name NOT IN (SELECT name
                       FROM
                       where ac1.year>1980 or ac1.area != 'theory')
ORDER BY name