/**
3. Given below Map 
   
   Map<Integer, String> romanNumerals = new Map<Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'
    };
    

    - Create a new Map<String, Integer> 
      - store the key into the value of above Map
      - store the value into the key of above map
      - print result should be {I=1,II=2,III=3,IV=5,V=5}

 */


 Map<Integer, String> romanNumerals = new Map<Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'
    };

//- Create a new Map<String, Integer> 
Map<String, Integer> romanNumerals2 = new Map<String,Integer>();

 //store the key into the value of above Map
for(Integer eachKey : romanNumerals.keySet()) {
  
  // store the value into the key of above map
     romanNumerals2.put(romanNumerals.get(eachKey), eachKey);
}
     
//print result should be {I=1,II=2,III=3,IV=5,V=5}
System.debug(romanNumerals2); 