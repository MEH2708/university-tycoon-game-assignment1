update player
set current_loc_id = 17,
    credits = 290
where name = 'Emma';

--emma moves from position 16 sam alex and rolls 1 so reaches position 17 hearing 2 
--her fine is 100 so 390-100=290

insert into audit_log(player_id, round_no,id, credits)values(3, 2, 17, 290);
--saves emma's round 2 record at position 17 with 290 credits
