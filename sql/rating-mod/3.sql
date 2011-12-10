UPDATE Movie SET year = year + 25 WHERE
mID IN (SELECT mID FROM Rating GROUP BY mID HAVING AVG(stars) >= 4)
