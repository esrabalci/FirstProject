/**

7. Create a String with a long sentence
   - print out the word count in sentence
   - loop through each item and reverse it 
   - outside your loop , print to see the result

 */

 String myLongSentence = 'This is the last long sentence I can make tonight';

 List<String> wordList =myLongSentence.split(' ');
 System.debug(wordList); 


List<String> reverseList = new List<String>();

for(String each : WordList) {
    reverseList.add(each.reverse()); 
}
System.debug('reversed words of my sentence : ' + reverseList);