/**
6. Map Practice : MapBully (NO LOOP NEEDED)
   -  Given A Map with key values in it with a.b,c as key and String as values
   -  for example : {'a'=>'candy', 'b'=>'dirt'}
   -  Follow below requirement to update the Map 
   -  if the key a has a value (not null), 
      -  set the key b to have that value
      -  and set the a to have value nothing 
      -  basically b is a bully , taking the value and replacing it with the nothing.
   -  You should get this result {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a' => 'candy'}  should be updated to this when you print 
      -  updated Map : {a=nothing,b=candy}
   -  another example , map with below value should get updated as below
   -  {'a'=>'candy', 'b'=> 'carrot', 'c': 'meh'}
      -  updated map : {a=nothing,b=candy,c=meh} 

 */

 Map<String,String> myMap = new Map<String,String>{
                            'a'=>'candy',
                             'b'=>'dirt' 
 };
System.debug('myMap is '+ myMap); 
 // if the key a has a value (not null),
 System.debug(myMap.get('a')); 

 //set the key b to have that value
 myMap.put('b', 'candy');
 System.debug('the key b has the value : '+myMap.get('b'));

 // and set the a to have value nothing
 myMap.put('a', 'nothing');
 System.debug('a value is '+myMap.get('a'));


System.debug('updatedMAp is '+ myMap); 

System.debug('------------------');


//map with below value should get updated as below
Map<String,String> myMap2 = new Map<String,String>{'a'=>'candy', 'b'=> 'carrot', 'c' => 'meh'};
System.debug('myMap is '+myMap2); 
 //  -  updated map : {a=nothing,b=candy,c=meh} 
myMap2.put('a' , 'nothing' );
myMap2.put('b' , 'candy' );

System.debug('updatedMAp is ' + myMap2); 