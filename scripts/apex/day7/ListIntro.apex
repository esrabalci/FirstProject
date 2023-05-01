/**

Collection : for storing more than one values
There are 3 types of collection

1-List :  ordered collection to store multiple values of same type 
2-Set  : unordered collection to store multiple unique values of same type removing
3-Map  : store key value pair in each element (more on that later)
 

 
 */

 //Syntax for Creating a list variable
 //and initializing it's value

 //List < DataType > nameOfYourVariable = new List < DataType >();

List < String > studentNames = new List < String > ();

// we can use yourListVariable.add (what you want to add here) ;
//to add elements into the list

studentNames.add('Esra');
studentNames.add('Mel');
studentNames.add('Ali');


System.debug (studentNames);



System.debug('------------------------------------');

/**
Create a List of Integer with name scores
and add 5 items in it
 */

 List < Integer > scores = new List < Integer > ();

 scores.add(10);
 scores.add(20);
 scores.add(30);
 scores.add(40);
 scores.add(50);

 System.debug(scores);



system.debug('-------------------------------------');

/**

Declare a List of Decimal variable called prices and
//initialize it's value

 */


List < Decimal > prices = new List < Decimal > ();

prices.add(34.5);
prices.add(40.1);
prices.add(50.5);
prices.add(73.9);

System.debug(prices);

System.debug('----------------------------------------');














