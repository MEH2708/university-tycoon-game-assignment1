-- Stewart round 3
--stewart rolls 6 and moves from shpopping precinct
-- He gets You're Suspended (location 18).
-- He goes to Visitor/Suspension (location 8).
-- His turn ends, and his credits remain 385.


update player
set current_loc_id = 8,
    suspended = 1,
    credits = 385
where name = 'Stewart';
insert into audit_log (player_id, round_no, id, credits)
values (2, 3, 8, 385);
