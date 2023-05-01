/**
Map is a collection type along with List and Set
Map is like a dictionary : word --> meaning
unlike List and Set , that store one item per element
Map store key-value pair per element
so instead of having one Data type like list and set
it has 1 data type for key and 1 data type for value
key in the map is unique, value can be anything

 */

 //Create a Map called studentMap to represent 
 //student name(String) and badge count(Integer)
 Map<String,Integer> studentMap = new Map<String,Integer>();

 // and add item into it using 'put' method
studentMap.put('Esra',242);
studentMap.put('Samia', 450);
studentMap.put('Ali', 4700);

//keys in the map are unique so it'll get latest value as an update and will show it
//it cant be duplicate so it'll get latest value as an update version
studentMap.put('Ali', 480);

//keys in the map -case sensitive
//it'll take as a new value because it's case sensitive
studentMap.put('ali', 0);

System.debug('studentMap value is : ' + studentMap); 

// Get the value recording to the key
//Returns the value to which the specified key is mapped, or null if the map contains no value for this key.
//you provide a key it give us value
////using get(keyGoesHere) return =>value
System.debug('studentMap.get(\'Ali\') value is : ' + studentMap.get('Ali')); //480
System.debug('studentMap.get(\'Samia\') value is : ' + studentMap.get('Samia')); //450
System.debug('studentMap.get(\'Esra\') value is : ' + studentMap.get('Esra')); //242

//if you don't have a key -> returns NULL
System.debug('studentMap.get(\'BLA\') value is : ' + studentMap.get('BLA')); // NULL

//how many item we have in the map 
//get the count of key value pair in this map
// size() method using for get the count
System.debug('studentMap.size() : ' + studentMap.size()); //4 ->Ali, Samia, Esra, ali

//check if a key exists in the map
//containsKey(key you want to check) -> return true/false
System.debug('studentMap.containsKey(\'Ali\')value is : ' + studentMap.containsKey('Ali')); //true
System.debug('studentMap.containsKey(\'BLA\')value is : ' + studentMap.containsKey('BLA'));  //false -> we don't have Bla in the map

//isEmpty method check if the Map is empty or not
System.debug('studentMap.isEmpty() value is : ' + studentMap.isEmpty()); //false


//remove (key you want to remove) ->  remove the key-value pair if the exists
studentMap.remove('ali');
System.debug('studentMap.remove() value is : ' + studentMap); //{Ali=480, Esra=242, Samia=450}

//clear() method -> remove all items
studentMap.clear();
System.debug('is Map empty after clear() : ' + studentMap.isEmpty());//true









