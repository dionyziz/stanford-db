CREATE TRIGGER HighlyRatedInsert
INSTEAD OF INSERT ON HighlyRated
FOR EACH ROW BEGIN
    INSERT INTO
        Rating
    SELECT
        201, mID, 5, NULL
    FROM
        Movie
    WHERE
        mID = NEW.mID
        AND title = NEW.title;
END;
