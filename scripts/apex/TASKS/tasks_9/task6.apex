/**
6. Create a String variable with value 
   - print out the length of the String 
   - print out the last character index
   - print out index of second character from the last
   - split the string by empty String to get List of all characters
   - loop through each item and get the count of 'a'
   - now read the doc and try out countMatch meth

 */

 String word= 'grandfather';
System.debug(' the length of the String : ' + word.length()); 
System.debug('the last character index : ' + (word.length()-1)); 
System.debug('index of second character from the last : ' + (word.length()-2)); 

List<String> wordList =  word.split(''); 

Integer count=0;
for(String each : wordList) {
   if(!(each.contains('a')))
      continue;
      count++;
}

    System.debug('count of letter a : ' + count);
