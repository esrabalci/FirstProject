/**

map is not an iterable type,so we can not directly iterate over a map
like we did for list and set in for each loop
however we can get all the keys and iterate over those keys 
if we have the key, we can get the value using get method
that's how we can go through each and every items 
 */


 //create a map of employeeId (Integer) and PhoneNumber(String)
//empIdPhoneMap
Map<Integer,String> empIdPhoneMap = new Map<Integer,String>();
 empIdPhoneMap.put(101 , '571-765-5665');
 empIdPhoneMap.put(102 , '571-765-5322');
 empIdPhoneMap.put(103 , '571-761-2435');
 empIdPhoneMap.put(104 , '571-764-3211');
 empIdPhoneMap.put(105 , '571-111-2222');

System.debug('empIdPhoneMap value is : ' + empIdPhoneMap);

System.debug('------------------');


Integer myKey= 103;
//get the value of 103 key in the map using myKey as a key
System.debug('The value of myKey is : ' + empIdPhoneMap.get(myKey)); //571-761-2435

myKey =104;
System.debug('The value of myKey is : ' + empIdPhoneMap.get(myKey)); //571-764-3211
System.debug('------------------');

//all the value
System.debug('All the keys value is : ' + empIdPhoneMap.values()); 

//print out all the key
System.debug('All the key : ' + empIdPhoneMap.keySet()); 

//empIdPhoneMap.keySet() -> it give you back key set

//iterate each the key 
//use 1st data type in the map list for loop
for(Integer eachKey : empIdPhoneMap.keySet() ) {
  
   //if you have one key inside of all key how to get value
 System.debug('Key is '+ eachKey + ' => '+' Value is ' +empIdPhoneMap.get(eachKey)     ); 
 System.debug('---------------------------');
 
}



//check if the key is exists in the map
//use contain() method or 
//Check if this map contains '571-765-5322' in value

//get the list
System.debug('Do we have 571-765-5322 in the values part of the Map');

//List<String> allPhoneList=empIdPhoneMap.values();//true

System.debug(empIdPhoneMap.values().contains('571-765-5322')); //true

