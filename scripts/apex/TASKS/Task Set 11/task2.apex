/**
2. Given a String variable message contains long string 
   - for example :  'aaabbcccccddhhhhhhzzzz'
   - Get a List<String> out of this String containing each characters 
   - Create an empty Map<String,Integer> called letterFrequencyMap
   - Loop through your list 
     - store each character as key 
     - store frequency of each character as value into the map
     - result should be {a=3, b=2, c=5, d=2, h=6, z=4}
   - Loop through this Map (using keySet of course)
     - print out the characters showed up more than twice 
     - the result should be c , h , a , z 
 */

 String message= 'aaabbcccccddhhhhhhzzzz';

 List<String> eachCharacters =message.split('');

Map<String,Integer> letterFrequencyMap = new Map<String,Integer> ();

//Loop through your list 

for(String eachLetter : eachCharacters) {
  // store each character as key 

  if(!letterFrequencyMap.containsKey(eachLetter)){

     //store frequency of each character as value into the map
    letterFrequencyMap.put(eachLetter, 1);

  }else {
        letterFrequencyMap.put(eachLetter, letterFrequencyMap.get(eachLetter) +1);

  }
}
System.debug('letterFrequencyMap value is : ' + letterFrequencyMap); 
// {a=3, b=2, c=5, d=2, h=6, z=4}

List<String> letterOfShowedOfMoreThanTwice = new List<String>();

// Loop through this Map (using keySet of course)
for(String eachKey : letterFrequencyMap.keySet()) {
  
//print out the characters showed up more than twice 
if(letterFrequencyMap.get(eachKey) >2){
   letterOfShowedOfMoreThanTwice.add(eachKey);
}
}
  
  System.debug('the characters showed up more than twice: ' + letterOfShowedOfMoreThanTwice); 
  //(a, c, h, z)
