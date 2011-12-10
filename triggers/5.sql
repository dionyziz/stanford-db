CREATE TRIGGER Graduation
AFTER UPDATE ON Highschooler
FOR EACH ROW WHEN NEW.grade > 12 BEGIN
    DELETE FROM
        Highschooler
    WHERE
        ID = NEW.ID;
END
|
CREATE TRIGGER Advance
AFTER UPDATE ON Highschooler
FOR EACH ROW WHEN NEW.grade = OLD.grade + 1 BEGIN
    UPDATE
        Highschooler
    SET
        grade = grade + 1
    WHERE
        ID IN (
            SELECT
                ID1
            FROM
                Friend
            WHERE
                ID2 = NEW.ID
        );
END
