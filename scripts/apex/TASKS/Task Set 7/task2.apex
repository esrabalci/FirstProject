/**


2. Write an Apex code that create List or Array of unknown numberss(more than 3) of Integer values.
   - Store last 3 items into Integer Array
   - print out the Integer Array

 */

 List<Integer> numbers = new List<Integer>();
numbers.add(5);
numbers.add(12);
numbers.add(99);
numbers.add(7);
numbers.add(41);
numbers.add(6);
Integer[] intArray = new Integer[3];
for (Integer i = 0; i < 3; i++) {
  intArray[i] = numbers.get(numbers.size() - 3 + i);
}
System.debug('New Integer Array value is : ' + intArray);


/*
in order to get the item at certain location , we need index 
in order to get last 3 item , we need index of those 3 
   last item: numberList.size - 1  ==> 9
   second item from the last : numberList.size - 2  ==> 8
   third item from the last : numberList.size - 3  ==> 7

*/
Integer[] last3Items = new Integer[3];

last3Items[0] =   numberList.get( numberList.size() - 3  )     ; 
last3Items[1] =   numberList.get( numberList.size() - 2  )     ; 
last3Items[2] =   numberList.get( numberList.size() - 1  )     ; 


 System.debug('last3Items value is : ' + last3Items); 
*/
