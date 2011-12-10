SELECT
    ( SELECT
        AVG( average )
    FROM
        (
            SELECT
                mID,
                AVG( stars ) average
            FROM
                Rating
                NATURAL JOIN
                Movie
            WHERE
                year < 1980
            GROUP BY mID
        ) old )
    -
    ( SELECT
        AVG( average )
    FROM
        (
            SELECT
                mID,
                AVG( stars ) average
            FROM
                Rating
                NATURAL JOIN
                Movie
            WHERE
                year > 1980
            GROUP BY mID
        ) new );

