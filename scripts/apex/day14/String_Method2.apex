

// method chaining --> call more than 1 method for one string ; str.toUpperCase().left(4).reverse();
// calling one method after another method
//it's possible as long as the method you are calling
//is the method available from the Data type of returned value
//str.toUpperCase().left(4).reverse().length();->you cant because length is Integer
String str='cookie';

// chaining for string
String result = str.toUpperCase().left(4).reverse();
//System.debug('result value is : ' + result); // KOOC

//chaining for Integer;
Integer result1=str.length();
//System.debug('result1 value is : ' + result1); //6

/**

split(regExp)
Returns a list that contains each substring of the String that
 is terminated by either the regular expression regExp or 
 the end of the String.
 */

 //regEx --> string splitting by something
 // splitting by space 
// return a list contains each substring of the String that splited by the given string, ex: if you want to split sentence by space you get list of string containing each words
// split means cut
 
String message = 'VA Weather is beautiful Today';
System.debug(message); 
// split this sentence by space so we can get list of string that contains words 
//always we assign List for split method
List<String> wordList =  message.split(' '); 

System.debug('wordList value is : ' + wordList);

for(String each : wordList) {
    System.debug('how many character we have in the List: '+each +' --> '+each.length()); 
}

System.debug('how many word do we have in the List: ' + wordList.size()); 

System.debug('------------------');

String name ='Mario Cruz';
//to get list of each and every character use empty split
List<String>charList=name.split('');
System.debug('charList value is : ' + charList); 
System.debug('how many character we have in the List including space: '+name.length()); 

 /**
 
 Splitting by space (' '); and splitting by no character ('') (empty String) are different inputs and we get different returns.. 
(Splitting by space)-->message.split(' '); // Va ->2, is->2, etc.. ->  so it doesn't count space.it gets every index number in your string except space because you're cutting the space using by Splitting space -> message.split(' ');
(empty String)-->name.split(''); //m,a,r,i,o, ,c,r,u,z ->it does counting every indexes in your list including space ->split(' ') 
  */

System.debug('------------------');



