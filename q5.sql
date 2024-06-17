SELECT a.name
FROM authors a
WHERE a.name NOT IN (SELECT a2.name FROM authors a2 natural join conferences ac
where ac.year>1980 or ac.area != 'theory')
ORDER BY a.name;