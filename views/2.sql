CREATE TRIGGER LateRatingStarUpdate
INSTEAD OF UPDATE OF stars ON LateRating
FOR EACH ROW BEGIN
    UPDATE
        Rating
    SET
        stars = NEW.stars
    WHERE
        mID = OLD.mID AND mID = NEW.mID
        AND ratingDate = OLD.ratingDate AND ratingDate = NEW.ratingDate;
END;
