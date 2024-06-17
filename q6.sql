SELECT DISTINCT name
FROM(
SELECT name
FROM authors NATURAL JOIN conferences
EXCEPT
SELECT name
FROM authors NATURAL JOIN conferences
WHERE year <= 1980 OR area = 'theory'
) T
ORDER BY name