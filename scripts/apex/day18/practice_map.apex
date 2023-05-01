Map<String,Integer> nameNumber = new Map<String,Integer>{'Josh' => 1, 'Ben' => 2, 'Mary' => 3};

System.debug(nameNumber); 


//get all the keys
Set<String> allKeys = nameNumber.keySet();


           //without using set method
// for(String eachKey : nameNumber.keySet()) {

//     System.debug('Key is : ' + eachKey); // key
//     System.debug('Value is : ' + nameNumber.get(eachKey) ); //values
//     System.debug('===================='); 
// }
    


//get all the values
List<Integer> allValues = nameNumber.values();

System.debug('allKeys value is : ' + allKeys); 
System.debug('allValues value is : ' + allValues); 

System.debug('------------------');


for(String eachKey : nameNumber.keySet()) {

    System.debug('Key is : ' + eachKey); // key
    System.debug('Value is : ' + nameNumber.get(eachKey) ); //values
    System.debug('===================='); 
}
    