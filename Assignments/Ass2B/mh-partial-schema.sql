--mh-partial-schema.sql

/*Run the script to create and populate CHARTER, CHARTER_LEG,
HELICOPTER, HELICOPTER_TYPE and LOCATION tables for Task 2*/

DROP SEQUENCE charter_charter_nbr_seq;

DROP SEQUENCE helicopter_type_ht_nbr_seq;

DROP SEQUENCE location_location_nbr_seq;

DROP TABLE charter CASCADE CONSTRAINTS;

DROP TABLE charter_leg CASCADE CONSTRAINTS;

DROP TABLE helicopter CASCADE CONSTRAINTS;

DROP TABLE helicopter_type CASCADE CONSTRAINTS;

DROP TABLE location CASCADE CONSTRAINTS;

CREATE TABLE charter (
    charter_nbr              NUMBER(4) NOT NULL,
    charter_cost_per_hour    NUMBER(6, 2) NOT NULL,
    charter_nbr_passengers   NUMBER(2) NOT NULL,
    charter_special_reqs     VARCHAR2(50),
    ctype_nbr                NUMBER(2) NOT NULL,
    heli_callsign            CHAR(6) NOT NULL,
    client_nbr               NUMBER(4) NOT NULL,
    emp_nbr                  NUMBER(4) NOT NULL
);

COMMENT ON COLUMN charter.charter_nbr IS
    'Identifier for a charter';

COMMENT ON COLUMN charter.charter_cost_per_hour IS
    'The charter cost per hour for this charter';

COMMENT ON COLUMN charter.charter_nbr_passengers IS
    'Number of passengers for this charter';

COMMENT ON COLUMN charter.charter_special_reqs IS
    'Special requirements for this charter (simplified as varchar - text attribute)';

COMMENT ON COLUMN charter.ctype_nbr IS
    'Identifier for type of charter';

COMMENT ON COLUMN charter.heli_callsign IS
    'Helicopters call sign - identifies a helicopter';

COMMENT ON COLUMN charter.client_nbr IS
    'Client number';

COMMENT ON COLUMN charter.emp_nbr IS
    'Employee number (identifier)';

ALTER TABLE charter ADD CONSTRAINT charter_pk PRIMARY KEY ( charter_nbr );

CREATE TABLE charter_leg (
    cl_leg_nbr                 NUMBER(2) NOT NULL,
    charter_nbr                NUMBER(4) NOT NULL,
    cl_etd                     DATE NOT NULL,
    cl_eta                     DATE NOT NULL,
    cl_atd                     DATE,
    cl_ata                     DATE,
    location_nbr_origin        NUMBER(3) NOT NULL,
    location_nbr_destination   NUMBER(3) NOT NULL
);

COMMENT ON COLUMN charter_leg.cl_leg_nbr IS
    'The leg number for this charter';

COMMENT ON COLUMN charter_leg.charter_nbr IS
    'Identifier for a charter';

COMMENT ON COLUMN charter_leg.cl_etd IS
    'Charter leg estimated time of departure';

COMMENT ON COLUMN charter_leg.cl_eta IS
    'Charter leg estimated time of arrival';

COMMENT ON COLUMN charter_leg.cl_atd IS
    'Charter leg actual time of departure';

COMMENT ON COLUMN charter_leg.cl_ata IS
    'Charter actual time of arrival';

COMMENT ON COLUMN charter_leg.location_nbr_origin IS
    'Identifier for a location';

COMMENT ON COLUMN charter_leg.location_nbr_destination IS
    'Identifier for a location';

ALTER TABLE charter_leg ADD CONSTRAINT charter_leg_pk PRIMARY KEY ( cl_leg_nbr, charter_nbr
 );
 
CREATE TABLE helicopter (
    heli_callsign    CHAR(6) NOT NULL,
    heli_hrs_flown   NUMBER(6, 2) NOT NULL,
    ht_nbr           NUMBER(3) NOT NULL
);

COMMENT ON COLUMN helicopter.heli_callsign IS
    'Helicopters call sign - identifies a helicopter';

COMMENT ON COLUMN helicopter.heli_hrs_flown IS
    'The number of hours this helicopter has flows';

COMMENT ON COLUMN helicopter.ht_nbr IS
    'Type of helicopter identifier';

ALTER TABLE helicopter ADD CONSTRAINT helicopter_pk PRIMARY KEY ( heli_callsign );

CREATE TABLE helicopter_type (
    ht_nbr             NUMBER(3) NOT NULL,
    ht_name            VARCHAR2(20) NOT NULL,
    ht_nbr_seats       NUMBER(2) NOT NULL,
    ht_cost_per_hour   NUMBER(6, 2) NOT NULL
);

COMMENT ON COLUMN helicopter_type.ht_nbr IS
    'Type of helicopter identifier';

COMMENT ON COLUMN helicopter_type.ht_name IS
    'Description for this type of helicopter';

COMMENT ON COLUMN helicopter_type.ht_nbr_seats IS
    'Number of seats available in this type of helicopter';

COMMENT ON COLUMN helicopter_type.ht_cost_per_hour IS
    'The standard charter cost for this type of helicopter';

ALTER TABLE helicopter_type ADD CONSTRAINT helicopter_type_pk PRIMARY KEY ( ht_nbr );

CREATE TABLE location (
    location_nbr    NUMBER(3) NOT NULL,
    location_name   VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN location.location_nbr IS
    'Identifier for a location';

COMMENT ON COLUMN location.location_name IS
    'The name of this location';

ALTER TABLE location ADD CONSTRAINT location_pk PRIMARY KEY ( location_nbr );

ALTER TABLE charter_leg ADD CONSTRAINT charter_cleg FOREIGN KEY ( charter_nbr )
    REFERENCES charter ( charter_nbr );

ALTER TABLE charter ADD CONSTRAINT helicopter_charter FOREIGN KEY ( heli_callsign )
    REFERENCES helicopter ( heli_callsign );

ALTER TABLE helicopter ADD CONSTRAINT helitype_helicopter FOREIGN KEY ( ht_nbr )
    REFERENCES helicopter_type ( ht_nbr );

ALTER TABLE charter_leg ADD CONSTRAINT location_cleg_dest FOREIGN KEY ( location_nbr_destination
 )
    REFERENCES location ( location_nbr );

ALTER TABLE charter_leg ADD CONSTRAINT location_cleg_origin FOREIGN KEY ( location_nbr_origin
 )
    REFERENCES location ( location_nbr );


CREATE SEQUENCE charter_charter_nbr_seq START WITH 100 NOCACHE ORDER;

CREATE SEQUENCE helicopter_type_ht_nbr_seq START WITH 100 NOCACHE ORDER;

CREATE SEQUENCE location_location_nbr_seq START WITH 100 NOCACHE ORDER;

--Partial Data
insert into location values (location_location_nbr_seq.nextval,'Rivendell');
insert into location values (location_location_nbr_seq.nextval,'Mount Doom');
insert into location values (location_location_nbr_seq.nextval,'Gondor Airport');
insert into location values (location_location_nbr_seq.nextval,'Prancing Pony Bree');

insert into helicopter_type values(helicopter_type_ht_nbr_seq.nextval,'Bell 47G2',2,350.00);

insert into helicopter values ('BI-BAC',0,helicopter_type_ht_nbr_seq.currval);
insert into helicopter values ('BI-BDE',0,helicopter_type_ht_nbr_seq.currval);

insert into helicopter_type values(helicopter_type_ht_nbr_seq.nextval,'JetRanger',4,750.00);

insert into helicopter values ('BI-JRA',0,helicopter_type_ht_nbr_seq.currval);
insert into helicopter values ('BI-JRB',0,helicopter_type_ht_nbr_seq.currval);

insert into CHARTER values (1,350,2,null,10,'BI-BAC',1,100);

insert into CHARTER_LEG values (1, 1,to_date('01/06/2020 09:00','dd/mm/yyyy hh24:mi'),to_date('01/06/2020 09:50','dd/mm/yyyy hh24:mi'),null,null,100,101);
insert into CHARTER_LEG values (2, 1,to_date('01/06/2020 16:00','dd/mm/yyyy hh24:mi'),to_date('01/06/2020 17:00','dd/mm/yyyy hh24:mi'),null,null,101,100);

commit;