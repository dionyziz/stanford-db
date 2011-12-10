INSERT INTO Rating
(rID, mID, stars)
SELECT
(
    SELECT
        rID
    FROM
        Reviewer
    WHERE
        name = 'James Cameron'
) AS rID, mID, 5 FROM Movie;
