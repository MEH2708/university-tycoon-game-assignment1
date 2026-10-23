-- nadine's round 2 records
update player
set current_loc_id = 12,
    credits = 420
where name = 'Nadine';
--nadine starts  RAG 1 → Visitor → Crawford → Sugden → Ali G → Shopping Precinct at position 12
--stewart owns both brown buildings so nadine pays double tution fee of 70 and stewart win 70 credits
update player
set credits = credits + 70
where name = 'Stewart';

insert into audit_log (player_id, round_no,id, credits)values (4, 2, 12, 420);
