--nadine's round 3 and game's last round
update player
set current_loc_id = 16,
    credits = 355
where name = 'Nadine';
--nadine goes from shopping precinct at position 12 and moves 4 space reaches sam alex
--sam alex is owned by emma so pay double fee 

update player
set credits = credits+ 80
where name = 'Emma';


insert into audit_log(player_id, round_no,id, credits)values(4, 3, 16, 355);
