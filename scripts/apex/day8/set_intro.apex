// declaring and initializing an empty set
Set<Integer> targets = new Set<Integer>() ;
// adding items into the set using .add method

targets.add(100); 
 targets.add(200); 
 targets.add(200); 
 targets.add(200); 
 targets.add(100); 
 targets.add(100); 

 System.debug(targets);
 System.debug('count of items is : ' + targets.size());


 //Create a set of String to store 10 items with, single letter for each item

 Set<String> letters =new Set < String > {'A','A','A','B','B','B','C','C','C','D'}; 

 //Print out entire Set
 //print out the size

 System.debug(letters);
 System.debug('unique letter counts : '+letters.size());


 //use for each loop to print out each items

 for(String eachLetters :letters){
       System.debug(eachLetters);
 }

