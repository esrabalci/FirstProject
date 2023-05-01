/**
We can create a Set by copying the content of another set or list
 */

 List<Integer> numberList1 = new List<Integer>{94,27,65,36,78};
 System.debug('numberList1 value is : ' + numberList1); 
 //numberList1 value is : (94, 27, 65, 36, 78)
 
//Creating a List by copying everything inside another list
List<Integer> numberList2 = new List<Integer>(numberList1);
 System.debug('numberList2 value is : ' + numberList2); 
 //numberList1 value is : (94, 27, 65, 36, 78)





 ////Creating a List by copying everything inside a Set
 Set<Integer> numberSet = new Set<Integer>{78,13,73,55,015};
 System.debug('numberSet value is : ' + numberSet); 
 //numberSet value is : {13, 15, 55, 73, 78}
 
List<Integer> numberList3 = new List<Integer>(numberSet);
System.debug('numberList3 value is : ' + numberList3); 
//numberList3 value is : (78, 13, 73, 55, 15)


//if you already have a list created if you want to add all the elements from another list
//for example numberList1 has 5 items, numberList3 has 5 items
//add everything in numberList1 into numberList3 so it can have 10 items

// .addAll(value)
numberList3.addAll(numberList1);
System.debug('numberList3 value is : ' + numberList3); 
//numberList3 value is : (78, 13, 73, 55, 15, 94, 27, 65, 36, 78)


// add a set into list
// add all either accept another list or set , to add all the element
//into this list that calling addAll method

//add all the elements from numberSet into numberList1;
numberList1.addAll(numberSet);
System.debug('numberList1 value is : ' + numberList1); 
//numberList1 value is : (94, 27, 65, 36, 78, 78, 13, 73, 55, 15)

