CREATE TRIGGER Friendly
AFTER INSERT ON Highschooler
FOR EACH ROW WHEN NEW.name = 'Friendly' BEGIN
    INSERT INTO Likes
    ( ID1, ID2 )
    SELECT
        NEW.ID, h.ID
    FROM
        Highschooler h
    WHERE
        h.grade = NEW.grade
        AND NEW.ID != h.ID;
END;
