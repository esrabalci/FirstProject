/**
# String methods: 

## equals(stringOrId)
Returns true if the passed-in object is not null and represents the same binary sequence of characters as the current string. Use this method to compare a string to an object that represents a string or an ID.

## equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, ignoring case.

## reverse()
Returns a String with all the characters reversed.

## indexOf(substring)
Returns the index of the first occurrence of the specified substring. If the substring does not occur, this method returns -1.

## indexOf(substring, index)
Returns the zero-based index of the first occurrence of the specified substring from the point of the given index. If the substring does not occur, this method returns -1.

## indexOfIgnoreCase(substring)
Returns the zero-based index of the first occurrence of the specified substring without regard to case. If the substring does not occur, this method returns -1.

## left(length)
Returns the leftmost characters of the current String of the specified length.

## right(length)
Returns the rightmost characters of the current String of the specified length.

## mid(startIndex, length)
Returns a new String that begins with the character at the specified zero-based startIndex with the number of characters specified by length.

## split(regExp)
Returns a list that contains each substring of the String that is terminated by either the regular expression regExp or the end of the String.
 */


//  .reverse()
// Returns a String with all the characters reversed.
String message = 'You can do it';
String reverse=message.reverse();
System.debug('reverse value is : ' + reverse); 

//A palindrome is a wod,number,phrase or other sequence of symbols that reads the same backwards as forwards
//such as the words: mom,dad,level,lol,kayak,hannah

// Write an Apex code to check if a String a palindrome or not
//the logic to solve this : reverse and compare two strings

String word = 'aha';
String reverseWord = word.reverse();
Boolean isPalindrome =word.equalsIgnoreCase(reverseWord);
System.debug('isPalindrome value is : ' + isPalindrome); 

if( word == reverseWord ){
    System.debug('Palindrome!!!!'); 
 }else{
     System.debug('NOT Palindrome!!!!'); 
 }

System.debug('------------------');

//you have to assign back 
word = word.toUpperCase();
System.debug('word value is : ' +word); 

System.debug('------------------');

/**
## indexOf(substring, index)
Returns the zero-based index of the first occurrence of the specified substring from the point of the given index. If the substring does not occur, 
this method returns -1.
 */
            //0123456 78910
 String str1 ='Hello world';

System.debug('str1 value is : ' + str1); 

System.debug('str1.indexOf(\'o\') value is : ' + str1.indexOf('o')); //4
System.debug('str1.indexOf(\'wor\') value is : ' + str1.indexOf('wor'));// 6
System.debug('str1.indexOf(\'wor\') value is : ' + str1.indexOf('worX')); //-1 means we don't have this value in out string

System.debug('------------------');

/**
 indexOf(substring, index)
Returns the zero-based index of the first occurrence of the specified substring from 
the point of the given index. If the substring does not occur, this method returns -1.
 */

            //0123456 78910
 //           'Hello world';

 System.debug('str1.indexOf(\'o\' , 5) value is : ' + str1.indexOf('o' , 5)); //7
 System.debug('str1.indexOf(\'o\' , 5) value is : ' + str1.indexOf('o' , 9)); //-1 -->we don't have 'o' location of index 9

 System.debug('------------------');
 
 /**
 left(length)
Returns the leftmost characters of the current String of the specified length.
  */
//how many character you want to get
//length means how many do you need 
  String str2= 'abcdefg';
  System.debug('str2 value is : ' + str2); 
  System.debug('First character : ' + str2.left(1)); //a
  System.debug('Third character : ' + str2.left(3)); //abc
  System.debug('Go Above the range character : ' + str2.left(300)); //abcdefg --> if we go over the range, its gonna give you what you have

  System.debug('------------------');
  
  /**
  right(length)
Returns the rightmost characters of the current String of the specified length.
   */
                 // 'abcdefg'
 System.debug('Last character value is : ' + str2.right(1));// g
 System.debug('Last Forth character value is : ' + str2.right(4));//defg

 System.debug('------------------');

 /**
 mid(startIndex, length)
Returns a new String that begins with the character at the specified zero-based 
   startIndex with the number of characters specified by length.
  */
                 //  0 1 2 3 4 5 6
                 // 'a b c d e f g'                       starIndex,Length
  System.debug('2 characters starting from index 3 '+   str2.mid(3 , 2));// de
  System.debug('start from index 100 and get 2 characters '+str2.mid(100, 2));// nothing print --> null because we don't have start index from 100

System.debug('------------------');

//quick task: print out first and last character of string
System.debug ('first and last character : ' +str2.left(1) + ' and ' + str2.right(1));// a g


System.debug('------------------');


//print the character second to the last

//solution1
//get last two character then get the first one of that
//for example : abcdefg => fg => f
String secondFromLast=str2.right(2).left(1);
System.debug('the character second to the last value is : ' + secondFromLast); 


System.debug('------------------');

//solution2
//find the index of 2nd character from the end
//use to mid to start from that index and get character

                 //  0 1 2 3 4 5 6
                 // 'a b c d e f g' 

System.debug('index of last character from the last : ' + ( str2.length()-1) ); //6
System.debug('index of second character from the last : ' + ( str2.length()-2) ); //5

//mid (startingIndex, characterCountYouWant)
String secondFromLastCharacter = str2.mid( str2.length()-2 , 1 );
System.debug('secondFromLastChar value is : ' + secondFromLastCharacter); 


