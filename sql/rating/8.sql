SELECT title, MAX( stars ) - MIN( stars ) AS spread FROM Movie NATURAL JOIN Rating GROUP BY mID ORDER BY spread DESC, title;
