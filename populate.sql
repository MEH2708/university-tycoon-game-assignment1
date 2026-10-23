--populate.sql has all values added to all tables in db
-- in table token , all six tokens get added 
insert into token
values (1, 'Mortarboard'),(2, 'Book'),(3, 'Certificate'),(4, 'Gown'),(5, 'Laptop'),(6, 'Pen');


-- to insert 20 board location values arranged in clockwise
insert into location values
(1,'Welcome Week','Corner',1),
(2,'Kilburn','Building',2),
(3,'IT','Building',3),
(4,'Hearing 1','Hearing',4),
(5,'Uni Place','Building',5),
(6,'AMBS','Building',6),
(7,'RAG 1','RAG',7),
(8,'Visitor','Corner',8),
(9,'Crawford','Building',9),
(10,'Sugden','Building',10),
(11,'Ali G','Corner',11),
(12,'Shopping Precinct','Building',12),
(13,'MECD','Building',13),
(14,'RAG 2','RAG',14),
(15,'Library','Building',15),
(16,'Sam Alex','Building',16),
(17,'Hearing 2','Hearing',17),
(18,'You''re Suspended','Corner',18),
(19,'Museum','Building',19),
(20,'Whitworth Hall','Building',20);



-- to insert description about corners,RAB and Hearing spaces


insert into special values
(1,'Welcome Week','Passing or landing on Welcome Week awards 100 credits.',1),
(2,'Hearing 1','Academic malpractice: the player pays a fine of 30 credits.',4),
(3,'RAG 1','Fancy dress contest: the player gains 75 credits.',7),
(4,'Visitor','Visiting players take no special action here. Suspended players are held here.',8),
(5,'You''re Suspended','A player landing here is sent to Visitor/Suspension and is marked suspended.',18),
(6,'Hearing 2','Rent arrears: the player pays a fine of 100 credits.',17),
(7,'RAG 2','Bursary: every player receives 50 credits.',14),
(8,'Ali G','No additional effect is specified for this corner in the assumed initial state.',11);



-- to insert player's credits,tokens, current location and credit score
insert into player
values(1,'Gareth',430,3,19,0),(2,'Stewart',360,1,2,0),(3,'Emma',470,2,6,0),(4,'Nadine',400,6,4,0);

-- insert 12 buildings color,fees , locations on board and owner names

insert into building values
(1,'Kilburn',15,'green',2,4),
(2,'IT',15,'green',3,1),
(3,'Uni Place',25,'orange',5,1),
(4,'AMBS',25,'orange',6,2),
(5,'Crawford',30,'blue',9,3),
(6,'Sugden',30,'blue',10,1),
(7,'Whitworth Hall',50,'black',20,4),
(8,'Museum',50,'black',19,3),
(9,'Sam Alex',40,'grey',16,NULL),
(10,'Library',40,'grey',15,3),
(11,'MECD',35,'brown',13,2),
(12,'Shopping Precinct',35,'brown',12,NULL);
