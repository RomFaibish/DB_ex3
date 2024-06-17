SELECT ac1.name
FROM authors natural join conferences ac1
WHERE ac1.name NOT IN (SELECT ac1.name
                       where ac1.year>1980 or ac1.area != 'theory')
ORDER BY name;