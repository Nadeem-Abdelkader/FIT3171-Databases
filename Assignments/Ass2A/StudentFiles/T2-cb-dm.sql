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


update animal set centre_id = (select centre_id from centre where centre_name = 'Kruger National Park' ) where centre_id = (select centre_id from centre where centre_name = 'SanWild Wildlife Sanctuary');
commit;

delete from centre where centre_id = (select centre_id from centre where centre_name = 'SanWild Wildlife Sanctuary');
commit;
-- (iii)




-- (iv)



