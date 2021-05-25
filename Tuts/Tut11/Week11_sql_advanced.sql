--add set echo and spool command here

/*
Databases Week 11 Tutorial
week11_sql_advanced.sql

student id: 
student name:
last modified date:

*/

/* 1. Find the number of scheduled classes assigned to each staff member 
for each semester in 2019. If the number of classes is 2 
then this should be labelled as a correct load, 
more than 2 as an overload and less than 2 as an underload. 
Order the list by decreasing order of the number of scheduled classes 
and when the number of classes is the same order by increasing order of staff id. */


/* 2. Display the unit code and unit name for units that do not have a prerequisite. 
Order the list in increasing order of unit code. 

There are many approaches that you can take in writing an SQL statement to answer this query. 
You can use the SET OPERATORS, OUTER JOIN and a SUBQUERY. 
Write SQL statements based on all three approaches.*/

/* Using outer join */



/* Using set operator MINUS */



/* Using subquery */



/* 3. List all units offered in semester 2 2019 which do not have any enrolment. 
Include the unit code, unit name, and the chief examiner's name in the list. 
Order the list based on the unit code. */



/* 4. List the full names of students who are enrolled in both ‘Introduction to databases’ 
and ‘Introduction to computer architecture and networks’ (note: both unit names are unique)
in semester 1 2020. Order the list by the students’ full name.*/



/* 5. Given that the payment rate for a tutorial is $42.85 per hour 
and the payment rate for a lecture is $75.60 per hour, 
calculate the weekly payment per type of class for each staff member in semester 1 2020. 
In the display, include staff id, staff name, type of class (lecture or tutorial), 
number of classes, number of hours (total duration), 
and weekly payment (number of hours * payment rate). 
Order the list by increasing order of staff id and for a given staff id by type of class.*/


    
/* 6. Given that the payment rate for a tutorial is $42.85 per hour 
and the payment rate for a lecture is $75.60 per hour, 
calculate the total weekly payment (the sum of both tutorial and lecture payments) 
for each staff member in semester 1 2020. 
In the display, include staff id, staff name, total weekly payment for tutorials, 
total weekly payment for lectures and the total weekly payment. 
If the payment is null, show it as $0.00. 
Order the list by increasing order of staff id.*/


/* 7. Assume that all units are worth 6 credit points each, 
calculate each student’s Weighted Average Mark (WAM) and GPA. 
Please refer to these Monash websites: https://www.monash.edu/exams/results/wam 
and https://www.monash.edu/exams/results/gpa for more information about WAM and GPA respectively. 
Do not include NULL, WH or DEF grade in the calculation.


Include student id, student full name (in a 40 characters wide column headed “Student Full Name”), 
WAM and GPA in the display. Order the list by descending order of WAM then descending order of GPA.
*/




