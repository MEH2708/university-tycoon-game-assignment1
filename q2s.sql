-- Stewart moves from Ali G to Shopping Precinct
-- Shopping Precinct is unowned, so Stewart buys for two times it fees
-- credits become: 385 - 70 = 315.

update player
set current_loc_id = 12,
    credits = 315
where name = 'Stewart';

update building
set own_id = 2
where b_name = 'Shopping Precinct';

insert into audit_log (player_id, round_no, id, credits)
values (2, 2, 12, 315);
