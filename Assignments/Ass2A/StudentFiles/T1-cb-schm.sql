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

CREATE TABLE centre (
    centre_id               CHAR(6) NOT NULL,
    centre_name             VARCHAR2(40) NOT NULL,
    centre_address          VARCHAR2(100) NOT NULL,
    centre_director         VARCHAR2(30) NOT NULL,
    centre_phone_no         VARCHAR2(20) NOT NULL
);

CREATE TABLE breeding_event (
    brevent_id              NUMBER(6) NOT NULL,
    brevent_date            DATE NOT NULL,
    mother_id               NUMBER(6) NOT NULL,
    father_id               NUMBER(6) NOT NULL
);

CREATE TABLE animal (
    animal_id               NUMBER(6) NOT NULL,
    animal_sex              CHAR(1) NOT NULL,
    brevent_id              NUMBER(6),
    centre_id               CHAR(6) NOT NULL,
    spec_genus              VARCHAR2(20) NOT NULL,
    spec_name               VARCHAR2(20) NOT NULL

);





