/**
1. Create a variable contains your full name
   - print it out in uppercase
   - print it out in lowercase
   - find the index of space and print
   - print first char of first and last name together :initials
 */

 String myName = 'Esra Balci';
 System.debug('myName value is : ' + myName.toUpperCase()); 
 System.debug('myName value is : ' + myName.toLowerCase()); 
 System.debug('index of space: '+myName.indexOf(' '));
 System.debug('My Initial: '+myName.left(1) +
 myName.mid(myName.length()-5, 1)); 