/**
6. Write a program that create a Map<String, Integer>  with 9 values
   - Create a new map that contains only the keys and values 
          where the value is greater than 10 from first Map.

 */

 Map<String, Integer> fruits = new Map<String, Integer> {
                    'Strawberry' => 1,
                    'Banana' => 3,
                    'Blueberry' => 5,
                    'Kiwi' => 10,
                    'Watermelon' => 13,
                    'Melon' => 12,
                    'Blueberry' => 4,
                    'Fig' => 1,
                    'Grape' => 2
 };

Map<String,Integer> fruitsGreaterThan10 = new Map<String,Integer> ();

for(String eachFruits : fruits.keySet() ) {
     
     if(fruits.get(eachFruits) > 10 ){
        fruitsGreaterThan10.put(eachFruits, fruits.get(eachFruits));

     }
}
  
  System.debug('the value is greater than 10: ' +fruitsGreaterThan10); 