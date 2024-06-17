SELECT a.name
FROM authors a
WHERE a.name NOT IN (SELECT ac.name FROM authors natural join conferences ac
where ac.year>1980 or ac.area != 'theory') T
ORDER BY a.name;