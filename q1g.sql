
-- Gareth;s round 1 game starts he moves from museum through welcome week and reach kilburn
-- wins 100 credits but kilburn owned by nadine so gareth gives her 15 credits

update player
set current_loc_id = 2,credits = 515
where name = 'Gareth';

-- nadine's credits increase
update player
set credits = 415
where name = 'Nadine';

--saves gareth's first round results and his location
insert into audit_log (player_id, round_no, id, credits)values (1, 1, 2, 515);
