update player
set current_loc_id = 16,
    credits = 390
where name = 'Emma';
--Emma starts at position 6 and rolls 6 from AMBS since she reaches Shopping Precinct(no effect) she rolls 4 and reaches Sam Alex (no building owner) at position 16
--because of R1 emma must buy it,so she pays 40*2=80 credits 
update building set own_id = 3 where b_name = 'Sam Alex';
insert into audit_log (player_id, round_no, id, credits) values (3, 1, 16, 390);
--so emma rounds saved as 390 credits and current position 16
