/**
// Homework : inspired by above 
// Given a long string 
// find out frequency of each Character
// Hint : get a list of all character using split 
// use a map to store character and frequency of that character

 */

 String sentence = 'NJ weather is cold today';
 List<String> wordList =sentence.split(' ');
 
 for(String eachWord : wordList) {
    System.debug(eachWord + ' = ' + eachWord.length());
 }

    System.debug('-----JUST CHARACTER-------------');

   List<String> stringList = new List<String>{'apple', 'banana', 'orange', 'grape', 'kiwi'};

Map<String, Integer> wordCountMap = new Map<String, Integer>();
for (String word : stringList) {
    wordCountMap.put(word, word.length());
}

System.debug(wordCountMap);
    

    System.debug('-----JUST CHARACTER-------------');
    
String substr = 'ABC';
String str = 'ABCZZZABCYABCABCXXABC';
Integer substrLen = substr.length();
Integer count = 0;
Integer index = str.indexOf(substr);
while (index >= 0) {
    count++;
    str = str.substring(index+substrLen);
    index = str.indexOf(substr);
}
System.debug('Count String : '+count);

   System.debug('-----JUST CHARACTER-------------');

 