//to turn JSON into Apex Type (De-serialization)

String myJsonStr = '{"id":1,"name":"Meade","gender":"Male","phone":3584128232}';
Map<String,Object> myMap = (Map<String,Object>) JSON.deserializeUntyped(myJsonStr);
System.debug('myMap value is : ' + myMap);


