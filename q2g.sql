--Garith ROUND 2
update player
set current_loc_id = 6,
    credits = 490
where name = 'Gareth';
--gareth starts at position 2 from kilburn and rolls 4 and goes from Kilburn → IT → Hearing 1 → Uni Place → AMBS 
--AMBS owned by stewart and tution fee is 25 so gareth has to pay 25 credits and his current credit is 515-25=490 and stewart won 25 credits so his credit is now 360+25=385 credits
update player
SET credits = 385
WHERE name = 'Stewart';


insert into audit_log (player_id, round_no, id, credits)values (1, 2, 6, 490);


