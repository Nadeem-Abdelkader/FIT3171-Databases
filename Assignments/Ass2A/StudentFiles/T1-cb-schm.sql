--****PLEASE ENTER YOUR DETAILS BELOW****
--T1-cb-schm.sql

--Student ID: 30146224
--Student Name: Nadeem Emadeldin Hamed Hamed Abdelkader
--Tutorial No: 02

/* Comments for your marker:




*/

/*
Using the model and details supplied, and the supplied T1-cb-schm.sql
file, create an SQL schema file which can be used to create this database in
Oracle.
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) BELOW

DROP TABLE animal PURGE;

DROP TABLE breeding_event PURGE;

DROP TABLE centre PURGE;

DROP TABLE species PURGE;

CREATE TABLE species (
    spec_genus              VARCHAR2(20) NOT NULL,
    spec_name               VARCHAR2(20) NOT NULL,
    spec_popular_name       VARCHAR2(40) NOT NULL,
    spec_family             VARCHAR2(20) NOT NULL,
    spec_natural_range      VARCHAR2(100) NOT NULL
);

ALTER TABLE species ADD CONSTRAINT species_pk PRIMARY KEY ( spec_genus,spec_name );

ALTER TABLE species ADD CONSTRAINT uq_spec_popular_name UNIQUE ( spec_popular_name );

CREATE TABLE centre (
    centre_id               CHAR(6) NOT NULL,
    centre_name             VARCHAR2(40) NOT NULL,
    centre_address          VARCHAR2(100) NOT NULL,
    centre_director         VARCHAR2(30) NOT NULL,
    centre_phone_no         VARCHAR2(20) NOT NULL
);

ALTER TABLE centre ADD CONSTRAINT centre_pk PRIMARY KEY ( centre_id );

ALTER TABLE centre ADD CONSTRAINT uq_centre_name UNIQUE ( centre_name );

CREATE TABLE breeding_event (
    brevent_id              NUMBER(6) NOT NULL,
    brevent_date            DATE NOT NULL,
    mother_id               NUMBER(6) NOT NULL,
    father_id               NUMBER(6) NOT NULL
);

ALTER TABLE breeding_event ADD CONSTRAINT breeding_event_pk PRIMARY KEY ( brevent_id );

ALTER TABLE breeding_event ADD CONSTRAINT breeding_event_animal_fk FOREIGN KEY ( mother_id ) REFERENCES animal ( animal_id );

ALTER TABLE breeding_event ADD CONSTRAINT breeding_event_animal_fk FOREIGN KEY ( father_id ) REFERENCES animal ( animal_id );

CREATE TABLE animal (
    animal_id               NUMBER(6) NOT NULL,
    animal_sex              CHAR(1) NOT NULL,
    brevent_id              NUMBER(6),
    centre_id               CHAR(6) NOT NULL,
    spec_genus              VARCHAR2(20) NOT NULL,
    spec_name               VARCHAR2(20) NOT NULL

);

ALTER TABLE animal ADD CONSTRAINT animal_pk PRIMARY KEY ( animal_id );

ALTER TABLE animal ADD CONSTRAINT animal_breeding_fk FOREIGN KEY ( brevent_id ) REFERENCES breeding_event ( brevent_id );

ALTER TABLE animal ADD CONSTRAINT animal_centre_fk FOREIGN KEY ( centre_id ) REFERENCES centre ( centre_id );

ALTER TABLE animal ADD CONSTRAINT animal_species_fk FOREIGN KEY ( spec_genus ) REFERENCES species ( spec_genus );

ALTER TABLE animal ADD CONSTRAINT animal_species_fk FOREIGN KEY ( spec_name ) REFERENCES species ( spec_name );
