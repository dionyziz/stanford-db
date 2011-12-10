CREATE TRIGGER NoRatingInsert
INSTEAD OF INSERT ON NoRating
FOR EACH ROW BEGIN
    DELETE FROM
        Rating
    WHERE
        mID IN
        (
            SELECT
                mID
            FROM
                Movie
            WHERE
                mID = NEW.mID
                AND title = NEW.title
        );
END;
