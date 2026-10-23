--to use forein keys constraints
PRAGMA foreign_keys = ON;
--this file creates all tables in our database university_tycoon
--  to store all tokens of game
create table token (
    token_id integer primary key,
    name text not null unique 
);

-- to store board location with clockwise position.
create table location (
    id integer primary key,
    name text not null unique,
    loc_type text not null
        check(loc_type in ('Corner', 'Hearing', 'RAG', 'Building')),
    board_pos integer not null unique check(board_pos between 1 and 20)
);

-- Store players token credits current location and if suspended or not
create table player (
    player_id integer primary key,
    name text not null unique,
    credits integer default 0 not null,
    token_id integer not null unique,
    current_loc_id integer not null,
    suspended integer not null default 0
        CHECK (suspended IN (0, 1)),
    foreign key (token_id) references token(token_id),
    foreign key (current_loc_id) references location(id)
);

-- Store buildings, tuition fees, colours, locations and owners.
create table building (
    building_id integer primary key,
    b_name text not null unique,
    fee int not null check (fee > 0),
    colour text not null
        check (colour IN ('green', 'orange', 'blue', 'black', 'grey', 'brown')),
    id integer not null unique,
    own_id integer,
    foreign key (id) references location (id),
    foreign key (own_id) references player(player_id)
);

-- to store desciption about special spaces
create table special (
    special_id integer primary key,
    special_name text not null unique,
    des text not null,
    id integer not null unique,
    foreign key (id) references location(id)
);

-- to store players turn ,current location, round and credits.
create table audit_log (
    auditid integer primary key,
    player_id integer not null,
    round_no integer not null check (round_no > 0),
    id integer not null,
    credits integer not null,
    foreign key (player_id) references player(player_id),
    foreign key (id) references location(id)
);
