/**
5. Create a string variable containing an email address, 
   - for example jonsnow@nightwatch.com
   - store the index of the '@' character in the email address.
   - print out the part before '@' in uppercase
   - print out whatever is after '@' 
   - print out last 3 characters

 */

 String email='esrambalci@hotmail.com';
Integer index =email.indexOf('@'); 
System.debug('index of \'@\' is : ' + index); 
System.debug('part before \'@\' ->' +email.left(index).toUpperCase()); 
System.debug('after \'@\'  characters: ' + email.right(email.length()-index -1)); 
System.debug('last 3 characters: ' +email.right(3)); 

/**

