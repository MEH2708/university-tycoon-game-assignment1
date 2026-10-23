--this helps to create leaderboard view to track players records position credits and location
drop view if exists leaderboard;

--to create leaderboard view
create view leaderboard as
select
    p.name as name,
    
case
    when p.suspended = 1 then 'suspension'
    else lower(replace(replace(l.name, ' ', '_'), '''', ''))
end as location,

    p.credits as credits,
    (
        select group_concat(building_name, ', ')
        from (
            select lower(replace(b.b_name, ' ', '_')) as building_name
            from building as b
            join location as bl on b.id = bl.id
            where b.own_id = p.player_id
            order by bl.board_pos
        )
    ) as buildings
from player as p
join location as l on p.current_loc_id = l.id
order by p.credits DESC;
