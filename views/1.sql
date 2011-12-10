CREATE TRIGGER LateRatingUpdate
INSTEAD OF UPDATE OF title ON LateRating
FOR EACH ROW BEGIN
    UPDATE
        Movie
    SET
        title = NEW.title
    WHERE
        mID = OLD.mID AND mID = NEW.mID;
END;
