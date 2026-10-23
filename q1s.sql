update player
set current_loc_id = 11
where name = 'Stewart';
--if stewart moves 6 space from kilburn->he is at 8 where there is visitor(no effect here) but when he rolls 3->he goes from 8 to  11 which is Ali G free-resting place no credits change
insert into audit_log (player_id, round_no, id, credits)
values (2, 1, 11, 360);