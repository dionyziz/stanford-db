SELECT
    COUNT(*) AS submissions, sID
FROM
    Scores
GROUP BY 
    sID, aID
HAVING
    submissions > 10;
