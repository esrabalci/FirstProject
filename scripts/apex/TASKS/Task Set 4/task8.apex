/**


8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 

  4. Print out the first List 
  5. Print out the second List and it's size

 */

 //task8
 List<Integer>elements=new  List<Integer>{1,3,5,6,7,2,4,9,8};
 List<Integer>emptyList=new List<Integer>();

 for(Integer eachElements :elements){
    if(eachElements >= 5 && eachElements <= 10){
        emptyList.add(eachElements);
    }
 }
 System.debug('Elements: ' +elements);
 System.debug('Empty list: '+ emptyList);
 System.debug('Size of the Empty List: '+emptyList.size());
