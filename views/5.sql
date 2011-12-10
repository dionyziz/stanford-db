CREATE TRIGGER HighlyRatedDelete
INSTEAD OF DELETE ON HighlyRated
FOR EACH ROW BEGIN
    DELETE FROM
        Rating
    WHERE
        mID = OLD.mID
        AND stars > 3;
END;
