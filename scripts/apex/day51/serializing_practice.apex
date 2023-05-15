//Apex utility class called JSON has a lots of methods
//to turn JSON into Apex Type (De-serialization)
//or to turn Apex Type into JSON (serialization)

//String reqBody = '{"name":"Jon Snow","gender":"Male","phone":1234567890}' ;
Map<String, Object> myBodyMap = new Map<String, Object> ();
myBodyMap.put('name', 'Jon Snow');
myBodyMap.put('gender', 'Male');
myBodyMap.put('phone', 1234567890);

System.debug('myBodyMap value is : ' + myBodyMap);
 
 //Turn this map object into Json String so
 //we can pass as body to the POST request if we want to

 String jsonStr = JSON.serialize(myBodyMap);
 System.debug('jsonStr value is : ' + jsonStr);
 
