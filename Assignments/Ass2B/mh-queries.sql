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
    MH.EMPLOYEE E JOIN MH.ENDORSEMENT D ON E.EMP_NBR = D.EMP_NBR
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
    MH.CLIENT C JOIN MH.CHARTER H ON C.CLIENT_NBR = H.CLIENT_NBR
WHERE
    CHARTER_SPECIAL_REQS IS NOT NULL
ORDER BY
    CHARTER_NBR ASC;
 
/*
    Q3
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

SELECT
    TRIM(CLIENT_FNAME|| ' ' || CLIENT_LNAME) AS FULLNAME,
    C.CHARTER_NBR,
    CHARTER_COST_PER_HOUR
FROM
    MH.CHARTER_LEG L JOIN MH.CHARTER C ON L.CHARTER_NBR = C.CHARTER_NBR JOIN MH.CLIENT L ON C.CLIENT_NBR = L.CLIENT_NBR
WHERE
    LOCATION_NBR_DESTINATION LIKE (SELECT LOCATION_NBR FROM MH.LOCATION WHERE LOCATION_NAME LIKE 'Mount Doom') AND (CHARTER_COST_PER_HOUR < 1000 OR CHARTER_SPECIAL_REQS IS NULL)
ORDER BY
    FULLNAME DESC;

/*
    Q4
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

SELECT
    T.HT_NBR,
    T.HT_NAME,
    COUNT(T.HT_NBR) AS NUM_OF_HELI_OWNED
FROM
    MH.HELICOPTER H JOIN MH.HELICOPTER_TYPE T ON T.HT_NBR = H.HT_NBR GROUP BY  T.HT_NBR, T.HT_NAME
HAVING 
    COUNT(T.HT_NBR) >=2
ORDER BY
    NUM_OF_HELI_OWNED DESC;

/*
    Q5
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

SELECT
    L.LOCATION_NBR, 
    LOCATION_NAME,
    COUNT(C.LOCATION_NBR_ORIGIN) AS NUM_USED_AS_ORIGIN
FROM
    MH.CHARTER_LEG C JOIN MH.LOCATION L ON C.LOCATION_NBR_ORIGIN = L.LOCATION_NBR GROUP BY LOCATION_NBR, LOCATION_NAME
HAVING 
    COUNT (C.LOCATION_NBR_ORIGIN) > 1
ORDER BY
    COUNT (C.LOCATION_NBR_ORIGIN) ASC;

/*
    Q6
*/
-- PLEASE PLACE REQUIRED SQL STATEMENT FOR THIS PART HERE
-- ENSURE your query has a semicolon (;) at the end of this answer

SELECT
    T.HT_NBR,
    T.HT_NAME,
    NVL(SUM(HELI_HRS_FLOWN),0) AS TOTAL_NBR_HRS_FLOWN
FROM
    MH.HELICOPTER_TYPE  T LEFT JOIN MH.HELICOPTER  H ON T.HT_NBR = H.HT_NBR
GROUP BY 
    T.HT_NBR, T.HT_NAME
ORDER BY 
    TOTAL_NBR_HRS_FLOWN ASC;

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
