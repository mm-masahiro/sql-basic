SELECT p.name as name, p.position as position, p.club as club, COUNT(g.id) as goals
FROM players as p
LEFT JOIN goals as g
ON p.id = g.player_id
GROUP BY p.id, p.name, p.position, p.club
ORDER BY goals DESC;
