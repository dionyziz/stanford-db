CREATE TRIGGER LateRatingmIDUpdate
INSTEAD OF UPDATE OF mID, stars, title ON LateRating
FOR EACH ROW BEGIN
    UPDATE
        Rating
    SET
        mID = NEW.mID
    WHERE
        mID = OLD.mID;
    UPDATE
        Movie
    SET
        mID = NEW.mID
    WHERE
        mID = OLD.mID;
END;
