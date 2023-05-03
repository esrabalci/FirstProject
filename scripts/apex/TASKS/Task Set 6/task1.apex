/**
1. Write an Apex code to create an empty List of Strings 
and add 3 names to it using add() method. then insert 3 more items at index number 1
 - print them out using both for loop or for each loop
 */

 List<String> names = new List <String>();
 names.add('ugur ');
 names.add('esra ');
 names.add('mel ');

 names.add(1, 'derya');
 names.add(1, 'mamac');
 names.add(1, 'jasmin');

 for(String each : names) {
    System.debug('Current value : ' + each);
 }

 System.debug('------------------');
 

 for(Integer i=0; i< names.size() ;i++) {
    System.debug('names value is : ' + names.get(i)); 
    
 }
    