/**

Set is a collection of unique elements
It's unordered collection meaning there is no index
order is not guaranteed 

 */

 Set<Integer> numberSet = new Set<Integer>();
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 
 System.debug('numberSet value is : ' + numberSet); 

//size() method

System.debug('numberSet.size(); value is : ' + numberSet.size()); 

 //clear method : delete all items in the set
 numberSet.clear(); 
 System.debug('numberSet value is : ' + numberSet); 

//isEmpty() : return true if size is 0

 numberSet.add(10); 
 numberSet.add(40); 
 numberSet.add(5); 
 numberSet.add(30); 
 numberSet.add(1); 
 
System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty()); 

//contains(valueToCheck)-->return true if the item exists

System.debug('numberSet.contains(10) value is : ' + numberSet.contains(10)); //true 
System.debug('numberSet.contains(10) value is : ' + numberSet.contains(15));  //false

//remove(valueToDelete)
numberSet.remove(30);
System.debug('numberSet value is : ' + numberSet); //{10,20}

// you cannot loop through set using for loop
//because there is no Index !!
//UNLIKE LIST, IT EXPECTS A VALUE NOT INDEX
// Code snippet : ForEach
// update the collection name
// hit tab to select data type if needed 

for(Integer each : numberSet) {
    System.debug('Current value : ' + each);
}


    









