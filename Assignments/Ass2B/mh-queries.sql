--****PLEASE ENTER YOUR DETAILS BELOW****
--mh-queries.sql

--Student ID: 30146224
--Student Name: Nadeem Emadeldin Hamed Hamed Abdelkader
--Tutorial No: 02

/* Comments for your marker:




*/


/*
    Q1
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

SELECT
    HT_NBR,
    E.EMP_NBR,
    E.EMP_LNAME,
    E.EMP_FNAME,
    END_LAST_ANNUAL_REVIEW AS REVIEW_DATE
FROM
    MH.EMPLOYEE E
    JOIN MH.ENDORSEMENT D ON E.EMP_NBR = D.EMP_NBR
WHERE
    END_LAST_ANNUAL_REVIEW > TO_DATE('31/03/2020', 'dd/mm/yyyy')
ORDER BY
    REVIEW_DATE ASC;

/*
    Q2
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

SELECT
    CHARTER_NBR,
    C.CLIENT_NBR,
    C.CLIENT_LNAME,
    C.CLIENT_FNAME,
    CHARTER_SPECIAL_REQS
FROM
    MH.CLIENT C
    JOIN MH.CHARTER H ON C.CLIENT_NBR = H.CLIENT_NBR
WHERE
    CHARTER_SPECIAL_REQS IS NOT NULL
ORDER BY
    CHARTER_NBR ASC;
 
/*
    Q3
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q4
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q5
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q6
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q7
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q8
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q9
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer


/*
    Q10
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

