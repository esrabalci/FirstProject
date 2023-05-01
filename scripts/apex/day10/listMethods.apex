/**

List is a collection type that store element in insertion order
each and every element are stored in a position that start with 0
for example if you have below list

//        human perspective -->    item   1  2  3  4   5  6
 List<Integer> numLst = new List<Integer>{19,1, 23, 7, 11,99};
 //       computer perspective --> index   0  1  2  3  4  5

 */

List<Integer> numLst = new List<Integer>{19,1, 23, 7, 11,99};
  System.debug(numLst.get(2)); //23
  System.debug(numLst.get(0)); //19
  System.debug(numLst.get(5)); //99

Integer fifthIndex =numLst.get(5);
System.debug(fifthIndex); //19

//get the element at certain index using get method
System.debug(numLst.get(1)); //1

//get the first element and store it in variable
Integer item1 =numLst.get(0);
System.debug(item1); //19

Integer item2 =numLst.get(1);
System.debug(item2); //1

System.debug('-------------------------------------------');
//iterate over all the elements in the loop without for each loop

for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}

