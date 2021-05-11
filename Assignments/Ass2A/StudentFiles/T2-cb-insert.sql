--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-cb-insert.sql

--Student ID: 30146224
--Student Name: Nadeem Emadeldin Hamed Hamed Abdelkader
--Tutorial No: 02

/* Comments for your marker:




*/

/*
Task 2 (b):

Load the ANIMAL and BREEDING_EVENT tables with your own test data using the 
supplied T2-cb-insert.sql file script file, and SQL commands which will  
insert as a minimum, the following sample data -
 - 12 animals, some of which must have been captured from the wild, i.e. 
      are not the offspring from a breeding event, and
- 4 breeding events
Your inserted rows must meet the assignment specification requirements
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) BELOW

Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (10,'M',NULL,'SAF30','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (11,'F',NULL,'SAF30','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (12,'M',NULL,'AUS30','Sarcophilus','harrisii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (13,'F',NULL,'AUS30','Sarcophilus','harrisii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (14,'M',NULL,'SAF30','Myrmecobius','fasciatus');

Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values (01,'02-Jan-2020',11,10);
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values (02,'03-Jan-2020',13,12);

Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (15,'M',01,'SAF30','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (16,'F',01,'SAF30','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (17,'M',02,'AUS30','Sarcophilus','harrisii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (18,'F',02,'AUS30','Sarcophilus','harrisii');

Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values (03,'12-Dec-2020',16,14);

Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (19,'M',03,'SAF30','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (20,'F',03,'SAF30','Myrmecobius','fasciatus');

Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values (04,'20-Dec-2020',18,17);

Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (21,'M',04,'AUS30','Sarcophilus','harrisii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values (22,'F',04,'AUS30','Sarcophilus','harrisii');

COMMIT;

