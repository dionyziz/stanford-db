CREATE TRIGGER Graduation
AFTER UPDATE ON Highschooler
FOR EACH ROW WHEN NEW.grade > 12 BEGIN
    DELETE FROM
        Highschooler
    WHERE
        ID = NEW.ID;
END
