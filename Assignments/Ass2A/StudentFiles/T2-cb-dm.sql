--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-cb-dm.sql

--Student ID: 30146224
--Student Name: Nadeem Emadeldin Hamed Hamed Abdelkader
--Tutorial No: 02

/* Comments for your marker:




*/

/*
Task 2 (c):

Complete the listed DML actions
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) BELOW

-- (i)

DROP SEQUENCE animal_seq;

CREATE SEQUENCE animal_seq START WITH 500 INCREMENT BY 1;

DROP SEQUENCE breeding_event_seq;

CREATE SEQUENCE breeding_event_seq START WITH 500 INCREMENT BY 1;


-- (ii)


UPDATE animal SET centre_id = (SELECT centre_id FROM centre WHERE centre_name = 'Kruger National Park' ) WHERE centre_id = (SELECT centre_id FROM centre WHERE centre_name = 'SanWild Wildlife Sanctuary');

DELETE FROM centre WHERE centre_id = (SELECT centre_id FROM centre WHERE centre_name = 'SanWild Wildlife Sanctuary');

-- (iii)

INSERT INTO animal VALUES (
    animal_seq.NEXTVAL,
    'F',
    NULL,
    (SELECT centre_id FROM centre WHERE centre_name = 'Australia Zoo'),
    (SELECT spec_genus FROM species WHERE spec_popular_name = 'Tasmanian Devil'),
    (SELECT spec_name FROM species WHERE spec_popular_name = 'Tasmanian Devil')
);

INSERT INTO animal VALUES (
    animal_seq.NEXTVAL,
    'M',
    NULL,
    (SELECT centre_id FROM centre WHERE centre_name = 'Werribee Open Range Zoo'),
    (SELECT spec_genus FROM species WHERE spec_popular_name = 'Tasmanian Devil'),
    (SELECT spec_name FROM species WHERE spec_popular_name = 'Tasmanian Devil')
);




-- (iv)

INSERT INTO breeding_event VALUES (
    breeding_event_seq.NEXTVAL,
    '10-Feb-2021',
    (SELECT animal_id from animal WHERE centre_id  = (SELECT centre_id FROM centre WHERE centre_name = 'Australia Zoo') AND spec_genus = (SELECT spec_genus FROM species WHERE spec_popular_name = 'Tasmanian Devil')),
    (SELECT animal_id from animal WHERE centre_id  = (SELECT centre_id FROM centre WHERE centre_name = 'Werribee Open Range Zoo') AND spec_genus = (SELECT spec_genus FROM species WHERE spec_popular_name = 'Tasmanian Devil'))
);

INSERT INTO animal VALUES (
    animal_seq.NEXTVAL,
    'F',
    breeding_event_seq.CURRVAL,
    (SELECT centre_id FROM centre WHERE centre_name = 'Australia Zoo'),
    (SELECT spec_genus FROM species WHERE spec_popular_name = 'Tasmanian Devil'),
    (SELECT spec_name FROM species WHERE spec_popular_name = 'Tasmanian Devil')
);

INSERT INTO animal VALUES (
    animal_seq.NEXTVAL,
    'M',
    breeding_event_seq.CURRVAL,
    (SELECT centre_id FROM centre WHERE centre_name = 'Australia Zoo'),
    (SELECT spec_genus FROM species WHERE spec_popular_name = 'Tasmanian Devil'),
    (SELECT spec_name FROM species WHERE spec_popular_name = 'Tasmanian Devil')
);



COMMIT;



