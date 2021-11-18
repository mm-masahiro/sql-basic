-- 各国の平均身長を高い方から順に表示してください。ただし、FROM句はcountriesテーブルとしてください。
select countries.name as country_name, avg(players.height) as height
from countries
join players
on countries.id = players.country_id
group by countries.name
order by height desc;
