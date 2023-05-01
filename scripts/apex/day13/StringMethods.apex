
/**
String is a Data type to Store text
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods 

 */

////https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_length
// length () method --> return the character count inside the String 
 
 String  message = 'Hello World' ;

 //how many character to get --> .length()
 //we excpect return number so its  public Integer length()
 //including space too
System.debug('message.length() is : ' + message.length()); 

//to check your string is empty or not


/*
isEmpty(yourString) --> returns true if the String is empty('') or null (means nothing, doesn't exist value)
otherwise,return false
return is public static Boolean isEmpty(yourStringVariable)
so we'll use class name: className.isEmpty(yourStringVariable) 
return boolean true or false
*/

System.debug('String.isEmpty(message) is : ' + String.isEmpty(message)); 

System.debug('------------------');

/*
 isBlank() ==> check if there is a white space ('  ') , empty('') or null -->true
  Returns true if the specified String is white space, empty (''), or null; otherwise, returns false.
 */
String msg1= '   '; //false because there is white space
System.debug('String.isEmpty(msg1) is : ' + String.isBlank(msg1)); 

// toUpperCase()  return the UPPERCASE version of the text
System.debug('message.toUpperCase value is : ' + message.toUpperCase()); 


// toLowerCase() return the LOWERCASE version of the text
System.debug('message.toLowerCase() value is : ' + message.toLowerCase()); 

String season='Summer';

//switch statement is CASE SENSETIVE!!!
//so use method of case sensetive check
//  add expression to method : so whatever your value, it will be lowercase/uppercase on value
//It switches the whole string to uppercase or lowercase
//Inside switch all values must be Upper or Lower case to get it work
switch on season.toUpperCase() {
    when 'SPRING' {
        System.debug('value Spring match');
    }
    when 'SUMMER' {
        System.debug('value Summer match');
    }
    when 'FALL' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}

