
-- Emma goes from Hearing 2 (location 17) to Kilburn (location 2).
-- she wins 100 credits through welcome week
-- Kilburn owned by Nadine, so Emma pays 15 credits
-- Emma: 290 + 100 - 15 = 375.
-- Nadine: 420 + 15 = 435.

update player
set current_loc_id = 2,
    credits = 375
where name = 'Emma';

update player
set credits = 435
where name = 'Nadine';
insert into audit_log (player_id, round_no, id, credits)
values (3, 3, 2, 375);
