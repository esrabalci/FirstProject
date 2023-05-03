/**
1. Create a Map<String, Integer> to store group name and member count
   -  Add 5 items into this Map 
   -  Check if there is a group called Apex Soldiers 
      -  print out the result in boolean 
   -  Check if there is a group called Winterfell Vacation
      -  if so , store the value into a Variable called vMemberCount
         -  remove this group from the map 
         -  add new item to the map with below key-value pair
            -  Winterfell Coders as key , value of vMemberCount as value
   -  Check if there is a group with 10 members
      -  if so , decrease the value to 9 
 */


Map<String,Integer> groupNames = new Map<String,Integer>();

 groupNames.put('group name1 ', 10);
 groupNames.put('group name2 ' , 20 );
 groupNames.put('Winterfell Vacation ' , 30 );
 groupNames.put('Apex Soldiers ' ,40 );
 groupNames.put('group name5 ', 50 );

 System.debug('groupNames value is : ' + groupNames); 

 System.debug('There is a group called Apex Soldiers: ' +groupNames.containsKey('Apex Soldiers')); 

 System.debug('There is a group called Winterfell Vacation: ' +groupNames.containsKey('Winterfell Vacation')); 

 Integer vMemberCount=groupNames.get('Winterfell Vacation');
 groupNames.remove('Winterfell Vacation');

 groupNames.put('Winterfell Coders', vMemberCount);

 /**
 Check if there is a group with 10 members
      -  if so , decrease the value to 9 
  */

for(String eachNames : groupNames.keySet() ) {
  if(groupNames.get(eachNames) == 10){
       groupNames.put(eachNames, 9);
  }
}
   System.debug('My group name map values: '+ groupNames); 