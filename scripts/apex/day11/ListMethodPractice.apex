 List<Integer> numberList = new List<Integer>{17,69,22,66,31};

 System.debug('numberList value is : ' + numberList); 
 
 // add(value) --> it goes at the end of the list
 numberList.add(100);
 System.debug('numberList .add(value: 100) is : ' + numberList); 

 //add(index, value);
 //add value 999 into index location 0
 numberList.add(0, 999);
System.debug('numberList .add(index:0,value:999) is : ' + numberList); 

//add value 888 into index location 2
numberList.add(2, 888);
System.debug('numberList .add(index:2,value:888) is : ' + numberList); 

//set(index, newValueYouWantToUpdate)
/**
index: where do you want to update the value (which index location)
newValueYouWantToUpdate : what's the value
 */
//  {17,69,22,66,31};
 //update 999 to 777
numberList.set(0, 777);
System.debug('numberList .set(index:0, newValue:777) is : ' + numberList); 

//remove item : remove (index) --> remove the value at that index
//remove the item at index number 2
numberList.remove(2);
System.debug('numberList .remove(index:2) is : ' + numberList); 


//check if the list is empty or not --> .isEmpty()
// Empty List means if the list of size is 0
/**
return FALSE if the size > 0, return TRUE if the size is 0
 */
Boolean listHasNumber=numberList.isEmpty();
System.debug('numberList size is .isEmpty() : ' + listHasNumber); 


//Remove all items in the list --> .clear();
//numberList.clear();


// .contains(value to check) -->return true if the value exists,If not false
System.debug('numberList.contains(31) value is : ' + numberList.contains(31)); 

//numberList value is : (777, 17, 69, 22, 66, 31, 100)
//how to find the location index of certain element in the list
// we use indexOf(valueToBeChecked)

 //{777,17,69,22,66,31};
Integer indexOf22 = numberList.indexOf(22);
System.debug('indexOf22 value is : ' + indexOf22); //3 -->index number

//remove 22 from the list
numberList.remove(indexOf22);
System.debug('removeIndexOf22 value is : ' + numberList); 
//removeIndexOf22 value is : (777, 17, 69, 66, 31, 100)



//print out FOUND IT, if you see 66 in the list
//store the result into a Boolean variable
//and print it out at the end

Boolean has66 = false;

for(Integer each : numberList) {

    if( each == 66 ){
       System.debug('FOUND IT'); 
       has66= true;
        break;
    }
   
}
  System.debug('has66 value is : ' + has66); 