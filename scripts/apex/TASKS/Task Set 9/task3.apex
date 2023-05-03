/**

3. Create a List of 10 String
   - get the count of String even character count
   - print them out

anagrams words contain the same letters in a different order

 */

 List<String> isAnagram = new List<String>{'listen','Hearth','Lives','Keep',
       'Table','shot','triangle','gram','cydeo','spoon'};

Integer count=0;
 for(String each : isAnagram) {
    if(Math.mod(each.length(), 2)==0)
      count++;

 }
 System.debug('count value is: ' + count ); 
    