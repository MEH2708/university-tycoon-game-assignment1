--Gareth round 3
update player
set current_loc_id = 10,
 credits = 490
where name = 'Gareth';
--gareth starts from AMBS at position 6 and rolls 4 and reaches position 10 going from AMBS → RAG 1 →Visitor or  Suspension → Crawford → Sugden
--Sugden owned by gareth so no tuttion fee credit remain same
insert into audit_log (player_id, round_no, id, credits) values(1, 3, 10, 490);
--gareth round 3 moves from position 6 goes to position 10 and his credits remain 490