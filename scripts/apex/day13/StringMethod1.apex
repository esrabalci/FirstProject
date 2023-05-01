
// ----------Checking for String  contains same substring

/*
contains(substring)

Returns true if and only if the String that called the method contains the specified sequence of
characters in substring.

Example :
'abcd' contains 'ab'  true
'abcd' contains 'ac'  false
*/

 String  message = 'Hello World' ;
//it's case sensitive
System.debug('message.contains(\'Hello\') value is : ' + message.contains('Hello'));//true
System.debug('message.contains(\'Hello\') value is : ' + message.contains('hello'));//false
System.debug('message.contains(\'Jon\') value is : ' + message.contains('Jon'));//false


/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello')); 

System.debug('-----------------------------');


/**
containsNone(inputString)
Returns true if the current String doesn't contain any of the characters in the specified
String; otherwise, returns false.
 */
 
 //IT'S CASE SENSITIVE CHECK!!
 //it you don't have whatever you provide it , return TRUE
 //as long as one character found , it'll be false
System.debug('message.containsNone(\'LO\') value is : ' + message.containsNone('LO')); //true--> it's case sensitive
System.debug('message.containsNone(\'hlo\') value is : ' + message.containsNone('hlo')); //false
System.debug('message.containsNone(\'hloA\') value is : ' + message.containsNone('hloA')); //false
System.debug('message.containsNone(\'HloA\') value is : ' + message.containsNone('HloA')); //false
System.debug('message.containsNone(\'AB\') value is : ' + message.containsNone('AB')); //true

//check if you have any number in your text
//Number contains none of those so it's true

System.debug('message.containsNone(\'LO\') value is : ' 
             + message.containsNone('LO')   ); 

 String  message1 = 'Hello World1' ;
 //Number contains so it's false
 System.debug('message has no Number : ' +
           message1.containsNone('0123456789')   ) ; 

System.debug('-------------------------');

/**

containsOnly(inputString)
Returns true if the current String contains characters only 
from the specified sequence of characters and not any other characters;
 otherwise, returns false

 -->it's looking for whole characters of this text or not
--> it's Space sensitive but order doesn't matter you can put space at the end of the characters too
 */
//Hello World is made of these characters  :  Helo Wrd 
 System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); //false
 System.debug('message.containsOnly(\'he\') value is : ' + message.containsOnly('He')); //false
 System.debug('message.containsOnly(\'Helo Wrd \') value is : ' + message.containsOnly('Helo Wrd ')); //true

System.debug('------ContainsOnly------------');


String text ='aaaaoooeee';

//check if this text only contains vowel : a e o u i
//text is made out aoe so it's true
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')); //true


System.debug('--------Equality----------');
System.debug('is message == Hello World' + (message == 'Hello World')); //true 
System.debug('is message == hello world' + (message == 'hello world')); //true --> Not Case Sensitive

// case sensitive check--> equal()

System.debug('message.equals(Hello World) value is : ' + message.equals('Hello World')); //true
System.debug('message.equals(Hello World) value is : ' + message.equals('hello world')); //false

System.debug('------------------');

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence 
of characters as the String that called the method, ignoring case. 
This is literally the method version of ==
*/
System.debug('message.equalsIgnoreCase(\'hello world\') value is : ' + message.equalsIgnoreCase('hello world')); //true



System.debug('------------------');
/*
7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'
*/
/**
join(iterableObj, separator)
Joins the elements of the specified iterable object, such as a List, 
into a single String separated by the specified separator.'-''
 */

 List<String> strList = new List<String>{'This','is','The','Way','Student'};


// join(iterableObject,separator)
//className.join(iterableObject,separator)

String joinedText =String.join(strList, '-');
System.debug('joinedText value is : ' + joinedText); 

System.debug('------------------');

//removeEnd(substring)
//remove(substring)
//removeEndIgnoreCase(substring)
//removeStart(substring)
//removeStartIgnoreCase(substring)


/**
Remove(substring)
Removes all occurrences of the specified substring and returns 
the String result. 
*/

//remove a
String str ='abcabc';
System.debug('str.remove(a) value is : ' + str.remove('a')); //bcbc

// str =str.remove('a');
// System.debug('str value is : ' + str); //bcb
