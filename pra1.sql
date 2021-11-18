select group_name, min(ranking) as best,max(ranking) as worst
from countries
group by group_name;
