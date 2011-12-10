SELECT title FROM Movie m LEFT JOIN Rating r ON m.mID = r.mID WHERE rID IS NULL;
