SELECT name, title, stars, ratingDate FROM Reviewer NATURAL JOIN Movie NATURAL JOIN Rating ORDER BY name, title, stars;
