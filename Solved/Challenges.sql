SELECT a.hacker_id, a.name, b.total
FROM Hackers a
INNER JOIN (
    SELECT hacker_id, COUNT(challenge_id) as total
    FROM Challenges
    GROUP BY hacker_id
) b ON a.hacker_id = b.hacker_id
WHERE 
    b.total = (SELECT MAX(c.total)
               FROM
                    (SELECT COUNT(challenge_id) as total
                    FROM Challenges
                    GROUP BY hacker_id) c)
    OR
    b.total IN (SELECT d.count
                FROM
                    (SELECT hacker_id, COUNT(*) as count
                    FROM Challenges
                    GROUP BY hacker_id) d
                GROUP BY d.count
                HAVING COUNT(*) = 1)
ORDER BY b.total DESC, a.hacker_id;
    