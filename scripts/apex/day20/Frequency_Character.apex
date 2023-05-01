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

//give us each end every character stored in the List
List<String> charList =message.split('');

//store the character as a key
//store the frequency as a value 
//map storing unique key as a character and  every time key show up
//increase value by 1 
Map<String,Integer> letterFrequencyMap = new Map<String,Integer> ();


//Loop through your list 
for(String eachChar : charList) {

// if the letter/character  doesn't already show up in the map
//it means it's showing up for the first time, count is 1
if( !letterFrequencyMap.containsKey(eachChar) ){

//store each character as key 
//you counted 1, showed up first time means count is 1
    letterFrequencyMap.put(eachChar, 1);

}else{
      
 //store frequency of each character as value into the map
//take existing value of the key and increment by 1
    letterFrequencyMap.put(eachChar, letterFrequencyMap.get(eachChar)+1);
}
}
 //{a=3, b=2, c=5, d=2, h=6, z=4}
System.debug('letterFrequencyMap value is : ' + letterFrequencyMap); 

System.debug('------------------');

//Loop through this Map (using keySet of course)
//keySet() give us setup the all the key = each and every character
for(String eachKey : letterFrequencyMap.keySet() ) {
  
   //print out the characters showed up more than twice 
   
   Integer count = letterFrequencyMap.get(eachKey);
   if(count >2 ){
     System.debug('eachKey value is : ' + eachKey);
   }
  //  if(letterFrequencyMap.get(eachKey) > 2){
  //     System.debug('eachKey value is : ' + eachKey); 
  //  }
}
  System.debug('------------------');
  
  List<String> strList = new List<String>{
  'Happy',
  'Sunny',
  'Pleasant',
  'Breakfast',
  'flower',
  'flower',
  'flower',
  'Sunny',
  'Sunny',
  'Happy',
  'Happy'
};

Map<String,Integer> frequencyMap = new Map<String,Integer> (); 

for(String eachWord : strList) {
    
    if(!frequencyMap.containsKey(eachWord)){
        frequencyMap.put(eachWord,1);
    }
    else{
        frequencyMap.put(eachWord, frequencyMap.get(eachWord) + 1) ;
    }
 }
 System.debug('frequencyMap value is : ' + frequencyMap); 





