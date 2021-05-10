-- Database Teaching Team
-- Student partial insert Assignment 2A 2021 S1
-- This script must not be altered in ANY WAY

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

commit;
