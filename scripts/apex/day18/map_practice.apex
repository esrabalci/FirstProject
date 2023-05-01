//Create a priceMap, productName ,price
//Map<String,Decimal> priceMap = new Map<String,Decimal>();
//add 5 items
// priceMap.put('Apple', 5.75);
// priceMap.put('Orange', 4.99);
// priceMap.put('Grape', 8.00);
// priceMap.put('Strawberry', 10.99);
// priceMap.put('Banana', 2.5);

////Create a Map with value filled up already -> priceMap, productName ,price
////add 5 items
Map<String, Decimal> priceMap = new Map<String, Decimal>{    
                                      'Apple'  => 5.75 ,
                                      'Orange' =>4.99 ,
                                      'Grape'  => 8.99 ,
                                      'Strawberry' => 10.59,
                                      'Banana' => 2.5
                                     };


System.debug('priceMap value is : ' + priceMap);

//check it this map contains 'Mango' , if not add Mango =>6.99
    if(! priceMap.containsKey('Mango') ){
       priceMap.put('Mango', 6.99);
    }

System.debug('priceMap value is : ' + priceMap);

System.debug('-------------------'); 

//if banana price is greater than 2 => update it to 1.99
//first get to banana price so use get mthod
if(priceMap.get('Banana') > 2){
    priceMap.put('banana', 1.99);
}

System.debug('priceMap value is : ' + priceMap);

System.debug('------------------');

//map doesn't have index so get the all value , we use keySet()
// keySet() method , return all the keys in Set<YourKeyDataType>
// keySet()create new set and grab every item in your map and put it into set all your item
 Set<String> allKeys = priceMap.keySet() ;
System.debug('allKeys value is : ' + allKeys); 

System.debug('-------------------------'); 

//go every item in the list get separately
//Iterate over each key of the map and print it out

for(String eachKey : allKeys) {
   
   System.debug('Current key : ' + eachKey);
   //if you have one key inside of all key how to get value
 System.debug('Value of this key: '+ priceMap.get(eachKey)     ); 
 System.debug('---------------------------');
 
}

System.debug('-------------------------'); 
//values() method , return all the values in List<YourValueDataType>
//it gives you all values in the list
List<Decimal> priceList =priceMap.values();
System.debug('All value of the map : ' + priceList); 


