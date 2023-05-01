/**

2. Create a String variable called message that contains a sentence with mixed case. 
for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
   - split to get List of String containing each words
   - use for loop to go though each items
      - make each item TitleCase (lookup capitalize method from String class)
      - make sure to assign it back to yourList[i] so it actually update your list item
   - outside your loop , print out to see latest change
   - join the list items with space 
      => re-assign back to the String variable message
      => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 


 */

 String message ='APEX mAde iT Easy to wOrk With SAlesforce DAtabase';

//split to get List of String containing each words

List<String> messageList = message.split(' ');
System.debug('Each words in the List: '+messageList); 

// use for loop to go though each items
for(Integer i=0; i<messageList.size()-1 ;i++) {           
               //make each item TitleCase
    String each= messageList.get(i).toLowerCase().capitalize();
  //to assign it back to yourList[i] so it actually update your list item
        messageList.set(i, each);
    
}
//outside your loop , print out to see latest change
System.debug('Title case version with split method: '+messageList);

//join the list items with space 
System.debug('Latest version of the list: '+String.join(messageList, ' '));