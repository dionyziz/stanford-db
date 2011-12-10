CREATE TRIGGER Freshman
AFTER INSERT ON Highschooler
FOR EACH ROW WHEN NEW.grade IS NULL BEGIN
    UPDATE
        Highschooler
    SET
        grade = 9
    WHERE
        ID = NEW.ID;
END;
|
CREATE TRIGGER InvalidGrade
AFTER INSERT ON Highschooler
FOR EACH ROW WHEN NEW.grade < 9 OR NEW.grade > 12 BEGIN
    UPDATE
        Highschooler
    SET
        grade = NULL
    WHERE
        ID = NEW.ID;
END
