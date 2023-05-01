/**

8.  Map Practice : MapShare (NO LOOP NEEDED)
   -  Given A Map with key values in it with a.b,c as key and String as values
   -  for example : {'a'=>'candy', 'b'=>'dirt','c'=>'cccc'}
   -  if the key a has a value 
      -  set the key b to have the same value
   -  in all cases remove key c leaving the rest of the map unchanged 
   -  so final print result according to this logic will be
   -  updated Map : {a=candy, b=candy}
   -  for example : {'b'=>'dirt','c'=>'cccc'} , print the result will be
      -  updated Map : {b=candy}
   -  for example : {'a'=>'aaa', 'c'=>'meh','d'=>'hi'} , print result
      -  updated Map : {a=aaa, b=aaa, d=hi}

 */

 Map<String,String> myMap = new Map<String,String>{'a'=>'candy', 'b'=>'dirt','c'=>'cccc'};

 //if the key a has a value 

 if(myMap.containsKey('a')){
   //set the key b to have the same value
   myMap.put('b',myMap.get('a') );
   myMap.remove('c');
 }

 //so final print result according to this logic will be
 System.debug('updated Map : '+myMap);  //{a=candy, b=candy}

 System.debug('------------------');
 

 Map<String,String> myMap2 = new  Map<String,String> {'b'=>'dirt','c'=>'cccc'};

 System.debug('myMap : '+myMap2); 

 //  -  updated Map : {b=candy}
 myMap2.put('b', myMap.get('b'));
 System.debug('updated Map : ' + myMap2); 

 System.debug('------------------');
 
 Map<String,String> myMap3 = new Map<String,String>{'a'=>'aaa', 'c'=>'meh','d'=>'hi'};

 //updated Map : {a=aaa, b=aaa, d=hi}

 myMap3.put('b', 'aaa');
 myMap3.remove('c');

 System.debug('updated Map : '+ myMap3); //{a=aaa, b=aaa, d=hi}