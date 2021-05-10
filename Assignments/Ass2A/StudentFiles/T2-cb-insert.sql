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

DELETE FROM animal;
DELETE FROM breeding_event;
DELETE FROM centre;
DELETE FROM species;

-- INSERTING into SPECIES
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Myrmecobius','fasciatus','Numbat','MYRMECOBIIDAE','Occurs naturally in Dryandra and Perup in south-western Western Australia');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Sarcophilus','harrisii','Tasmanian Devil','DASYURIDAE','Found throughout mainland Tasmania Australia; an area of 64 030 sqkm');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Macrotis','lagotis','Greater Bilby','THYLACOMYIDAE','Formerly over 70% of the mainland Australia now only Tanami; Gibson and the Great Sandy Deserts');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Lasiorhinus','krefftii','Northern Hairy-nosed Wombat','VOMBATIDAE','Currently restricted to Epping Forest National Park; central Queensland');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Setonix','brachyurus','Quokka','MACROPODIDAE','Endemic to the south-west of Western Australia; Australia; including Rottnest and Bald Islands');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Acinonyx','jubatus','Cheetah','FELIDAE','Occur widely but sparsely in Africa; have disappeared from 76% of their historic range');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Diceros','bicornis','Black Rhinoceros','RHINOCEROTIDAE','Four recognized ecotypes/subspecies of Black Rhinoceros occupying different areas of Africa');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Equus','zebra','Mountain Zebra','EQUIDAE','Southern parts of South Africa through Namibia and into extreme south-western Angola');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Panthera','leo','Lion','FELIDAE','Most countries in sub-Saharan Africa.  Most lion range is in eastern and southern Africa (77%)');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Hippopotamus','amphibius','Common Hippopotamus','HIPPOPOTAMIDAE','Many countries of sub-Saharan Africa; disappeared from most of SA except for Kruger National Park');
Insert into SPECIES (SPEC_GENUS,SPEC_NAME,SPEC_POPULAR_NAME,SPEC_FAMILY,SPEC_NATURAL_RANGE) values ('Equus','grevyi','Grevy''s Zebra','EQUIDAE','Grevy''s Zebra is confined to the Horn of Africa, specifically Ethiopia and Kenya.');

-- INSERTING into CENTRE
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('AUS10','Australia Zoo','1638 Steve Irwin Way, Beerwah  QLD  4519, Australia','Terri Irwin','61-7-54362000');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('AUS20','Werribee Open Range Zoo','K Road, Werribee VIC 3030, Australia','Graham Jones','61-3-92859300');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('AUS30','Alice Springs Desert Park','Larapinta Drive, Alice Springs NT 0871, Australia','Mary Darwin','61-8-89518788');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('SAF10','Kruger National Park','Kruger National Park, South Africa','Abe Sibiya','27-13-7354000');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('SAF20','Johannesburg Zoo','Jan Smuts Avenue, PARKVIEW 2122, South Africa','Stephen Van Der Spuy','27-11-6462000');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('SAF30','SanWild Wildlife Sanctuary','LETSITELE 0885, South Africa','Louise Joubert','27-15-3187900');
Insert into CENTRE (CENTRE_ID,CENTRE_NAME,CENTRE_ADDRESS,CENTRE_DIRECTOR,CENTRE_PHONE_NO) values ('AUS40','Taronga Zoo','Bradley Head Rd, Mosman  NSW  2088, Australia','Sydney Major','61-2-54362000');

-- INSERTING into ANIMAL
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('99','M','10','AUS10','Myrmecobius','fasciatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('31','F','77','SAF10','Sarcophilus','harrisii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('11','M',NULL,'AUS10','Macrotis','lagotis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('42','F','55','AUS20','Lasiorhinus','krefftii');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('98','M',NULL,'AUS40','Setonix','brachyurus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('33','F','53','AUS10','Acinonyx','jubatus');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('22','M','99','AUS40','Diceros','bicornis');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('87','F',NULL,'AUS10','Equus','zebra');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('12','M',NULL,'AUS20','Panthera','leo');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('44','F','89','SAF30','Hippopotamus','amphibius');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('34','M','37','SAF30','Equus','grevyi');
Insert into ANIMAL (ANIMAL_ID,ANIMAL_SEX,BREVENT_ID,CENTRE_ID,SPEC_GENUS,SPEC_NAME) values ('67','F',NULL,'AUS10','Equus','kiang');

-- INSERTING into BREEDING_EVENT
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values ('10','02-Jan-2020','31','99');
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values ('77','11-Mar-2020','42','11');
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values ('55','30-Jan-2021','33','34');
Insert into BREEDING_EVENT (BREVENT_ID,BREVENT_DATE,MOTHER_ID,FATHER_ID) values ('53','01-Dec-2020','44','22');


COMMIT;
