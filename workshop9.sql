-- 1

select 
count(*) as serbia_players_count 
from player 
where country = 'Serbia';

-- 2
/*
select 
country, count(*) as players_count 
from player 
group by country 
order by players_count desc 
limit 1;
*/

-- 3
/*
select 
distinct player_name 
from goalscore gs, assist ast, player pl
where match_id = 41 
and ast.player_id = pl.player_id 
and gs.assist_id = ast.assist_id;
*/

-- 4
/*
select 
distinct player_name
from player p
join assist ast using(player_id)
join goalscore gs on gs.assist_id = ast.assist_id
where match_id = 41 
*/

-- 5
/*
select 
player_name 
from player pl 
left join goalscore gs on pl.player_id = gs.player_id
where gs.goal_id is null 
and pl.position = 'Attacker'
*/

-- 6
/*
explain select 
player_name 
from player pl 
left join goalscore gs on pl.player_id = gs.player_id
where gs.goal_id is null 
and pl.position = 'Attacker'
*/

-- 7 activate the next line, run and de activate again, afer that run 8
-- alter table player add index (position)

-- 8
/*
explain select 
player_name 
from player pl 
left join goalscore gs on pl.player_id = gs.player_id
where gs.goal_id is null 
and pl.position = 'Attacker'
*/

-- 9 --invalid syntax
/*
BEGIN TRANSACTION;
-- .... find the youngest manager and update his club in managerclub

select manager_name from manager order by age asc limit 1
-- update
COMMIT;
*/