SELECT title, MAX( stars ) FROM Movie NATURAL JOIN Rating GROUP BY mID ORDER BY title;
