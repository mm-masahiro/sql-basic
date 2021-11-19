select kickoff as kickoff_time, c1.name as country1, c2.name as country2
from pairings
left join countries c1
on pairings.my_country_id = c1.id
left join countries c2
on pairings.enemy_country_id = c2.id
order by kickoff_time;
