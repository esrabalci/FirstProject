/**

10. Create a List of 5 String values 
   - create a Boolean variable called isAllPalindrome and set to true
   - loop through each item in the list 
      - check if the word is palindrome or not 
      - if it's not set isAllPalindrome to false
      - else take no action (so no else)

 */

 List<String> values = 
        new List<String>{'anna','mom','level','abba','racecar'};
    
Boolean isAllPalindrome=true;
for(String each : values) {
    if(each !=each.reverse() )
    isAllPalindrome=false;
    break;

}

    System.debug('isAllPalindrome value is : ' + isAllPalindrome);   