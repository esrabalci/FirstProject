/**

8. Write an Apex code that create List or Array of 7 String values
   - store the the index of item in the middle in to variable mid1
   - now imagine you unknown (odd) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 7 items : number 4 item is in the middle
     - if you have 17 items : number 9 item is in the middle and so on
     - no loop needed here
   - print out the value of item in the middle


   ----------------------------------------

*/
List<String> strList = new List<String>{'item1','item2','item3','middle','item5', 'item6','item7'};

Integer size = strList.size();
Integer mid = (size + 1) / 2 ;

System.debug('the value in the middle is ' + mid); 




/*
Refer Day 12 Code Extras at the end for this
8.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method

      ----------------------------------------------

 */

Set<Integer> numberSet1 = new Set<Integer>{95,44,98,96,42};
Set<Integer> numberSet2 = new Set<Integer>{43,79,15,79,40};

System.debug('numberSet1 contains all the values in numberSet2 : ' 
            + numberSet1.containsAll(numberSet2));
System.debug('numberSet2 contains all the values in numberSet2 : ' 
            + numberSet2.containsAll(numberSet1)); 
 

numberSet2.addAll(numberSet1);
System.debug('numberSet1 value is : ' + numberSet1); 
System.debug('numberSet2 value is : ' + numberSet2); 

System.debug('All items in set 2 exists in set 1  : ' + numberSet1.containsAll(numberSet2) ); 
System.debug('All items in set 1 exists in set 2  : ' + numberSet2.containsAll(numberSet1) ); 

numberSet2.removeAll(numberSet1);
System.debug('numberSet2 value is : ' + numberSet2);  


 
System.debug('------------------');

/**

8.  Write an Apex code that create 2 Set of String with 5 values
   - update set1 to only retain the elements exists in both set1 and set2
      -  HINT : retainAll method
 */




Set<String> strSet1 = new Set<String>{'item1','item2','item3','item4','item5'};
Set<String> strSet2 = new Set<String>{'item6','item7','item3','item4','item5'};

strSet1.retainAll(strSet2);
System.debug('strSet1 value is : ' + strSet1);