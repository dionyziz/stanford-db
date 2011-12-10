CREATE TRIGGER SymmetryConstruct
AFTER INSERT ON Friend
FOR EACH ROW WHEN (
    SELECT
        COUNT(*)
    FROM
        Friend
    WHERE
        ID1 = NEW.ID2
        AND ID2 = NEW.ID1
) = 0 BEGIN
    INSERT INTO
        Friend ( ID1, ID2 )
    VALUES
        ( NEW.ID2, NEW.ID1 );
END
|
CREATE TRIGGER SymmetryDestruct
AFTER DELETE ON Friend
FOR EACH ROW BEGIN
    DELETE FROM
        Friend
    WHERE
        ID1 = OLD.ID2
        AND ID2 = OLD.ID1;
END
