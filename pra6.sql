select p.name, p.position, p.club, (
select count(id)
from goals g
where g.player_id = p.id
) as goal_count
from players as p
ORDER BY goal_count DESC
limit 100;
