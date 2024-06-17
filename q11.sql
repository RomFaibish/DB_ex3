WITH conference_amount AS (
    SELECT conference, count(DISTINCT year) AS conferenceCount
    FROM authors
    GROUP BY conference
)
SELECT DISTINCT name
FROM authors
EXCEPT
SELECT DISTINCT a.name
FROM authors a, conference_amount ca
WHERE a.conference = ca.conference AND ca.conferenceCount > 15;
