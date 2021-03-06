CREATE TRIGGER Enemies
AFTER UPDATE ON Likes
FOR EACH ROW WHEN
    NEW.ID1 = OLD.ID1
    AND NEW.ID2 != OLD.ID2
BEGIN
    DELETE FROM
        Friend
    WHERE
        ( ID1 = OLD.ID2 AND ID2 = NEW.ID2 )
        OR ( ID1 = NEW.ID2 AND ID2 = OLD.ID2 );
END
