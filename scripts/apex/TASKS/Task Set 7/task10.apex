/*
Refer Day 12 Code Extras at the end for this
10.  Write an Apex code that create 2 Set of Integer with 5 values
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
