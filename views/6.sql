CREATE TRIGGER HighlyRatedDelete
INSTEAD OF DELETE ON HighlyRated
FOR EACH ROW BEGIN
    UPDATE
        Rating
    SET
        stars = 3
    WHERE
        mID = OLD.mID
        AND stars > 3;
END;
