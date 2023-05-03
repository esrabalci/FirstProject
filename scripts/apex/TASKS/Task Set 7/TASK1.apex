/**

1. Write an Apex code that create List or Array of 10 Integer values. 
   - remove duplicate and print it out 
   - print out the unique item count and difference between total list item count
 */


Integer[]numbers= new List <Integer>{5, 7, 10, 10, 61, 3, 10, 42, 8, 10 };

Set<Integer> nonDuplicateNum = new Set<Integer>(numbers);
System.debug('nonDuplicate number is : ' + nonDuplicateNum); 

System.debug('The unique item count is: ' + nonDuplicateNum.size());
System.debug('difference between total list item count: ' + (numbers.size() - nonDuplicateNum.size()) ); 
