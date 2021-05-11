--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-cb-alter.sql

--Student ID: 30146224
--Student Name: Nadeem Emadeldin Hamed Hamed Abdelkader
--Tutorial No: 02

/* Comments for your marker:




*/

/*
Task 3:

Make the listed changes to the "live" database
*/
--PLEASE PLACE REQUIRED SQL STATEMENT(S) BELOW

-- (a)

ALTER TABLE centre ADD (
    num_of_offspring_born NUMBER(6) DEFAULT 0
);

COMMENT ON COLUMN centre.num_of_offspring_born IS
    'The total number of offspring which are born at each centre';
    
-- (b)
/*
******* Explain here your selected approach and its advantage/s *********
I chose to add a new column "deceased" in the animal table, which will either be 'Y' if the animal died or 'N' if the animal is alive.
The default value is 'N' because all animals are alive to begin with.
This column can be checked for any animal when necessary using the animals id (because its the primary key).
For example, if we want to include animals in a breeding event, we have to first make sure they are both alive (deceased column = 'N').
Here i assumed that animal with the id 10 has died, so i changed his deceased column to 'Y' instead of 'N'
This approached is benficial because it includes the indicator for the animal status within the animal table.
This makes it easier to obtain the animals status (using its id) anytime its required.
*/

ALTER TABLE animal ADD (deceased CHAR(1) DEFAULT 'N');

COMMENT ON COLUMN animal.deceased IS 'The status of the animal (alive or deceased)';

UPDATE animal SET deceased = 'Y' WHERE animal_id = 10;

-- (c)

COMMIT;
