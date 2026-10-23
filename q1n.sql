update player
set current_loc_id = 7,
    credits = 490
where name = 'Nadine';

--nadine starts at position 4 at Hearing(1) since no effect she rolls 3 and reaches at position 7- RAG(1) and get 75 credits->400+75=475 credits
--she also won 15 credits from Garith so her total credits now= 475+15=490 credits
insert into audit_log
(player_id, round_no, id, credits)
values
(4, 1, 7, 490);
-- so save rounds of Nadine as she is at position 7 from 4 and has won 490 credits
