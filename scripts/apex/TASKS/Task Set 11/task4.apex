/**
4. Create a Map<Integer, String> and fill it up with 5 key-value pairs
   -  Get the sum of All the Keys 
   -  Join all the values by , and print it out 

 */

 Map<Integer, String> school = new  Map<Integer, String>{
              1 => 'c',
              2 => 'y',
              3 => 'd',
              4 => 'e',
              5 => 'o'
 };

 
Integer sum =0;

//Get the sum of All the Keys
for(Integer eachKey : school.keySet() ) {
 
    sum+=eachKey;
}
System.debug('the sum of All the Keys: '+sum); //15

  //  Join all the values by , and print it out 

String myLetter ='';
for(String each : school.values()) {
  
       myLetter+=each;
}

System.debug('all the values: '+myLetter); 
  