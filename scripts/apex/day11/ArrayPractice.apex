/**
 Array, just like a List, ordered collection 
 can store multiple item of same type 
 can have duplicate  
 and it use [] 
 syntax for creating as below 
    // creating empty array with pre-defined size
    DataType[] varName = new DataType[sizeOfArray];

    // creating empty array with pre-defined size
    DataType[] varName = new DataType[]{item1,item2,item3...};

    we can access the individual items as below using index 
    first item  yourArrayName[0]
    second item  yourArrayName[1]
    third item  yourArrayName[2]
    
 */
//declare a list Array that can store for String
 String[] groceries = new String[4]; 
groceries[0]='Bread';
groceries[1]='Egg';
groceries[2]='Beef';
groceries[3]='Banana';

//add more item into an Array
groceries.add('Arugula');

System.debug('groceries value is : ' + groceries); 


//using array syntax, print out the item and index 2
System.debug('item at index 2 is '+ groceries[2]); 

//using List syntax, print out the item at index 2
System.debug('item at index 2 is '+ groceries.get(2)); 

//change the value of item at index 1 to 'cream Cheese'
groceries[1]='Cream Cheese';
System.debug('groceries value is : ' + groceries); 

// groceries.set(1, 'Cream Cheese');
// System.debug(groceries); 
//groceries value is : (Bread, Cream Cheese, Beef, Banana, Arugula)

System.debug('------------------');
 
 //in Apex compiler we can use Array and List at the same time
 //because they are same thing
//Integer[]numbers= new List <Integer>();




//declare and initialize a list of Array
// String[] groceries2 = new String[]{'Milk','oat','Blueberry','Cocoa'};
// System.debug('groceries2 value is : ' + groceries2); 


System.debug('------------------');

//Array ~ For Each Loop 

for(String each : groceries) {
    System.debug('Current value : ' + each);
}

System.debug('------------------');

//Array ~  Without Using For Loop 
System.debug('value is : '+ groceries[0]); 
System.debug('value is : '+ groceries[1]); 
System.debug('value is : '+ groceries[2]); 
System.debug('value is : '+ groceries[3]); 


System.debug('------------------');
//Array ~ For Loop
for(Integer index=0; index<groceries.size() ;index++) {
    System.debug('groceries[' + index +'], value is : ' + groceries[index] ); 
}



    


