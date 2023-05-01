/**
3 data types that related to Date and Time in Apex

Date--> className/dataTpe.today();  --> give you today

DateTime--> className/dataType.newInstance(year, month,day); -->give you exactly specified date


Time-->
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_datetime.htm#apex_System_Datetime_methods

 */


 //creating a Data variable and assigning the value to Today's date
 //today method of date class will return Today's date
 Date d1=Date.today(); 
 System.debug('Today() date : ' + d1); 

/**
newInstance(year, month, day)
Constructs a Date from Integer representations of
            the year, month (1=Jan), and day.
 */
 //Creating a date with any year, month,day
 //newInstance(year, month,day) 
 // --> className/dataType.newInstance(year, month,day);

Date d2 =Date.newInstance(1999, 9,17 );
System.debug('d2 value is : ' + d2); 

/**
addDays(Integer additionalDays)
->add the specified number of additional days to Date
--> First ou have have date in the first place than you have use 
this method
 */

//Date d2 =Date.newInstance(1999, 9,17 );
 Date weekAfterD2 = d2.addDays(7) ; 
 System.debug('weekAfterD2 value is : ' + weekAfterD2); 

 Date weekBeforeD2=d2.addDays(-7);
 System.debug('weekBeforeD2 value is : ' + weekBeforeD2); 


