// let's get started 
/*
 This is how we can write 
  multiline comment
*/


/*
 In Apex we wrap up text, also known as String
 insite single quote  
*/

System.debug('Hello World');

// APEX is Case Insensitive language
sYsTeM.dEbUg('More Hello') ; 


// If the single quote need to be used inside String
// It will accidentally end the string 
// you can add backslash right in front of it 
// to instruct computer not to treat it as ending of the string
// just treat it as part of the text
System.debug('Let\'s learn variable');

// Creating and string variable
//DataType variableName = someValueHere
String name = 'SF User';

//print the value of the variable in the log 
System.debug(name);


// Concatenation is
// combining one or more String together
// print  My Name is : theValueOfNameVariable
System.debug('My Name is : ' + name );

// give a new value to variable you alreay created earlier
name = 'Esra'; 
System.debug('My new name is ' + name );


// variables Data type that can store whole Number  
Integer score = 66 ;


// print passing score is theValueOfTheScoreVariable
System.debug('Passing score is ' + score);

//score = 86 ; 

System.debug('The result is '  +   score + 20  ); // 6620 
System.debug('The result is '  +   (score + 20)  );  // 86


Long distanceToMars = 10000000000000L; 
System.debug('Distance to Mars long value ' + distanceToMars);



// variables Data type that can store fractional Number  
Decimal pi = 3.14 ; 
System.debug('The value of pi: '  + pi  );

Double price = 199.99D ; 
System.debug('The price value is ' + price);



// variables Data type that can store true or false 
Boolean passed = true ; 
System.debug('Value of passed boolean variable ' + passed);

// change the value to false and print it out 
passed = false ; 
System.debug('Value of passed boolean variable ' + passed);


// variable Data type that can store Salesforce Record Id
// It's almost like specialized String variable 
// that only store string with valid record Id format
// if anything else is stored, it will throw an error
ID myLeadId = '00Q8W00000gDbIyUAK';
System.debug(myLeadId);

-------------------------------------------------------------------------


// Quick explanation on some Technical Jargons
// Declaring variable 
Integer age  ; 

// Assigning the value of the variable
age = 20 ; 

// Declaring variable and initilizing it's value 
Integer amount = 100 ; 
// re-assigning value 
amount = 200 ; 


// Quick explanation on some Technical Jargons
// Declaring variable 
Integer age  ; 

// Assigning the value of the variable
age = 20 ; 

// Declaring variable and initilizing it's value 
Integer amount = 100 ; 
// re-assigning value 
amount = 200 ; 

// Operator  + - * / 
Integer num1 = 200 ; 
Integer num2 = 20 ; 
Integer result ; 
// Use these 2 variables to print out below result 


/*
 The addition result between num1 and num2 is resultGoesHere
 The subtraction result between num1 and num2 is resultGoesHere
 The multiplication result between num1 and num2 is resultGoesHere
 The division result between num1 and num2 is resultGoesHere
*/


// addition 
result = num1+ num2 ; 
System.debug('The addition result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// subtraction 
result = num1 - num2 ; 
System.debug('The subtraction result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// multiplication 
result = num1 * num2 ; 
System.debug('The multiplication result between ' + num1 + ' and ' + num2 + ' is ' +  result );

// division 
result = num1 / num2 ; 
System.debug('The division result between ' + num1 + ' and ' + num2 + ' is ' +  result );


String each = 'Admin';

// if the value is Admin or Developer print skip the iteration

// if the value is NOT Admin or Developer print COUNT THIS!!