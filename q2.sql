SELECT name
FROM authors NATURAL JOIN institutions
WHERE region = 'africa'
ORDER BY institution, name
