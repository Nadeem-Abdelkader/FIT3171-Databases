SPOOL week11_sql_advanced_sol_output.txt

SET ECHO ON

/*
Databases Week 11 Tutorial Sample Solution
week11_sql_advanced_sol.sql

Databases Units
Author: FIT Database Teaching Team
License: Copyright © Monash University, unless otherwise stated. All Rights Reserved.
COPYRIGHT WARNING
Warning
This material is protected by copyright. For use within Monash University only. NOT FOR RESALE.
Do not remove this notice. 
*/

/* 1. Find the number of scheduled classes assigned to each staff member 
for each semester in 2019. If the number of classes is 2 
then this should be labelled as a correct load, 
more than 2 as an overload and less than 2 as an underload. 
Order the list by decreasing order of the number of scheduled classes 
and when the number of classes is the same order by increasing order of staff id. */

SELECT
    to_char(ofyear, 'yyyy') AS year,
    semester,
    s.staffid,
    stafffname,
    stafflname,
    COUNT(*) AS numberclasses,
    CASE
        WHEN COUNT(*) > 2 THEN
            'Overload'
        WHEN COUNT(*) = 2 THEN
            'Correct load'
        ELSE
            'Underload'
    END AS load
FROM
    uni.schedclass   c
    JOIN uni.staff        s ON s.staffid = c.staffid
WHERE
    to_char(ofyear, 'yyyy') = '2019'
GROUP BY
    to_char(ofyear, 'yyyy'),
    semester,
    s.staffid,
    stafffname,
    stafflname
ORDER BY
    numberclasses DESC, staffid;

/* 2. Display the unit code and unit name for units that do not have a prerequisite. 
Order the list in increasing order of unit code. 

There are many approaches that you can take in writing an SQL statement to answer this query. 
You can use the SET OPERATORS, OUTER JOIN and a SUBQUERY. 
Write SQL statements based on all three approaches.*/

/* Using outer join */

SELECT
    u.unitcode,
    u.unitname
FROM
    uni.unit     u
    LEFT OUTER JOIN uni.prereq   p ON u.unitcode = p.unitcode
GROUP BY
    u.unitcode,
    u.unitname
HAVING
    COUNT(has_prereq_of) = 0
ORDER BY
    unitcode;

/* Using set operator MINUS */

SELECT
    u.unitcode,
    unitname
FROM
    uni.unit u
MINUS
SELECT
    u.unitcode,
    unitname
FROM
    uni.unit     u
    JOIN uni.prereq   p ON u.unitcode = p.unitcode
ORDER BY
    unitcode;

/* Using subquery */

SELECT
    unitcode,
    unitname
FROM
    uni.unit
WHERE
    unitcode NOT IN (
        SELECT
            unitcode
        FROM
            uni.prereq
    )
ORDER BY
    unitcode;

/* 3. List all units offered in semester 2 2019 which do not have any enrolment. 
Include the unit code, unit name, and the chief examiner's name in the list. 
Order the list based on the unit code. */

SELECT
    o.unitcode,
    unitname,
    stafffname
    || ' '
    || stafflname AS ce_name
FROM
    ( ( uni.offering    o
    LEFT OUTER JOIN uni.enrolment   e ON o.unitcode = e.unitcode
                                       AND o.ofyear = e.ofyear
                                       AND o.semester = e.semester )
    JOIN uni.staff       s ON s.staffid = o.chiefexam )
    JOIN uni.unit        u ON o.unitcode = u.unitcode
WHERE
    to_char(o.ofyear, 'yyyy') = '2019'
    AND o.semester = 2
GROUP BY
    o.unitcode,
    unitname,
    stafffname
    || ' '
    || stafflname
HAVING
    COUNT(e.studid) = 0
ORDER BY
    unitcode;

/* 4. List the full names of students who are enrolled in both ‘Introduction to databases’ 
and ‘Introduction to computer architecture and networks’ (note: both unit names are unique)
in semester 1 2020. Order the list by the students’ full name.*/

SELECT
    studfname
    || ' '
    || studlname AS student_full_name
FROM
    uni.student
WHERE
    studid IN (
        SELECT
            studid
        FROM
            uni.enrolment
            NATURAL JOIN uni.unit
        WHERE
            lower(unitname) = lower('Introduction to databases')
            AND semester = 1
            AND to_char(ofyear, 'yyyy') = '2020'
        INTERSECT
        SELECT
            studid
        FROM
            uni.enrolment
            NATURAL JOIN uni.unit
        WHERE
            lower(unitname) = lower('Introduction to computer architecture and networks')
            AND semester = 1
            AND to_char(ofyear, 'yyyy') = '2020'
    )
ORDER BY
    student_full_name;

/* 5. Given that the payment rate for a tutorial is $42.85 per hour 
and the payment rate for a lecture is $75.60 per hour, 
calculate the weekly payment per type of class for each staff member in semester 1 2020. 
In the display, include staff id, staff name, type of class (lecture or tutorial), 
number of classes, number of hours (total duration), 
and weekly payment (number of hours * payment rate). 
Order the list by increasing order of staff id and for a given staff id by type of class.*/

SELECT
    staffid,
    stafffname
    || ' '
    || stafflname AS staffname,
    'Lecture' AS type,
    COUNT(*) AS no_of_classes,
    SUM(clduration) AS total_hours,
    lpad(to_char(SUM(clduration) * 75.60, '$999.99'), 14, ' ') AS weekly_payment
FROM
    uni.schedclass
    NATURAL JOIN uni.staff
WHERE
    cltype = 'L'
    AND semester = 1
    AND to_char(ofyear, 'yyyy') = '2020'
GROUP BY
    staffid,
    stafffname
    || ' '
    || stafflname,
    cltype
UNION
SELECT
    staffid,
    stafffname
    || ' '
    || stafflname AS staffname,
    'Tutorial' AS type,
    COUNT(*) AS no_of_classes,
    SUM(clduration) AS total_hours,
    lpad(to_char(SUM(clduration) * 42.85, '$999.99'), 14, ' ') AS weekly_payment
FROM
    uni.schedclass
    NATURAL JOIN uni.staff
WHERE
    cltype = 'T'
    AND semester = 1
    AND to_char(ofyear, 'yyyy') = '2020'
GROUP BY
    staffid,
    stafffname
    || ' '
    || stafflname,
    cltype
ORDER BY
    staffid, type;
    
/* 6. Given that the payment rate for a tutorial is $42.85 per hour 
and the payment rate for a lecture is $75.60 per hour, 
calculate the total weekly payment (the sum of both tutorial and lecture payments) 
for each staff member in semester 1 2020. 
In the display, include staff id, staff name, total weekly payment for tutorials, 
total weekly payment for lectures and the total weekly payment. 
If the payment is null, show it as $0.00. 
Order the list by increasing order of staff id.*/

SELECT DISTINCT
    s.staffid,
    stafffname
    || ' '
    || stafflname AS staffname,
    lpad(to_char(nvl((
        SELECT
            SUM(clduration) * 42.85
        FROM
            uni.schedclass sc1
        WHERE
            sc1.staffid = sc.staffid
            AND cltype = 'T'
            AND semester = 1
            AND to_char(ofyear, 'yyyy') = '2020'
    ), 0), '$990.99'), 16, ' ') AS tutorial_payment,
    lpad(to_char(nvl((
        SELECT
            SUM(clduration) * 75.60
        FROM
            uni.schedclass sc1
        WHERE
            sc1.staffid = sc.staffid
            AND cltype = 'L'
            AND semester = 1
            AND to_char(ofyear, 'yyyy') = '2020'
    ), 0), '$990.99'), 16, ' ') AS lecture_payment,
    lpad(to_char(nvl((
        SELECT
            SUM(clduration) * 75.60
        FROM
            uni.schedclass sc1
        WHERE
            sc1.staffid = sc.staffid
            AND cltype = 'L'
            AND semester = 1
            AND to_char(ofyear, 'yyyy') = '2020'
    ), 0) + nvl((
        SELECT
            SUM(clduration) * 42.85
        FROM
            uni.schedclass sc1
        WHERE
            sc1.staffid = sc.staffid
            AND cltype = 'T'
            AND semester = 1
            AND to_char(ofyear, 'yyyy') = '2020'
    ), 0), '$990.99'), 20, ' ') AS total_weekly_payment
FROM
    uni.schedclass   sc
    JOIN uni.staff        s ON sc.staffid = s.staffid
ORDER BY
    staffid;
    
/* 7. Assume that all units are worth 6 credit points each, 
calculate each student’s Weighted Average Mark (WAM) and GPA. 
Please refer to these Monash websites: https://www.monash.edu/exams/results/wam 
and https://www.monash.edu/exams/results/gpa for more information about WAM and GPA respectively. 
Do not include NULL, WH or DEF grade in the calculation.


Include student id, student full name (in a 40 characters wide column headed “Student Full Name”), 
WAM and GPA in the display. Order the list by descending order of WAM then descending order of GPA.
*/

SELECT
    studid,
    rpad(studfname
         || ' '
         || studlname, 40, ' ') AS "Student Full Name",
    to_char(SUM(
        CASE
            WHEN mark IS NOT NULL
                 AND substr(unitcode, 4, 1) = '1' THEN
                mark * 3
            WHEN mark IS NOT NULL
                 AND substr(unitcode, 4, 1) <> '1' THEN
                mark * 6
        END
    ) / SUM(
        CASE
            WHEN mark IS NOT NULL
                 AND substr(unitcode, 4, 1) = '1' THEN
                3
            WHEN mark IS NOT NULL
                 AND substr(unitcode, 4, 1) <> '1' THEN
                6
        END
    ), '990.99') AS wam,
    to_char(SUM(
        CASE
            WHEN mark IS NOT NULL
                 AND grade = 'N' THEN
                0.3
            WHEN mark IS NOT NULL
                 AND grade = 'P' THEN
                1
            WHEN mark IS NOT NULL
                 AND grade = 'C' THEN
                2
            WHEN mark IS NOT NULL
                 AND grade = 'D' THEN
                3
            WHEN mark IS NOT NULL
                 AND grade = 'HD' THEN
                4
        END
        * 6) /(COUNT(mark) * 6), '990.99') AS gpa
FROM
    uni.enrolment
    NATURAL JOIN uni.student
GROUP BY
    studid,
    rpad(studfname
         || ' '
         || studlname, 40, ' ')
ORDER BY
    wam DESC,
    gpa DESC;

SET ECHO OFF

SPOOL OFF