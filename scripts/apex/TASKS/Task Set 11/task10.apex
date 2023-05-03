/**
10. Create a List<Contact> and fill up with 5 Contacts with below fields 
   - LastName :  TestContact (1,2,3,4,5)
   - BirthDate:  1987 , 5 , (1,2,3,4,5)
   - insert these contacts into your org
   - Create a Map<ID,Contact> and fill it up with 
     - ID of each Contact in the list as Key
     - each Contact itself as value 
   - Loop through(Iterate over) the Map keys 
     - print out the each Key and Value 
     - print out the Contact  lastName value
 */
 List<Contact> con = new List<Contact>();

 for(Integer i=1; i<=5 ;i++) {
   con.add(new Contact(
                      LastName = 'TestContact'+i ,
                      Birthdate= Date.newInstance(1987,5, i)
    )
  );
 }
 //insert these contacts into your org
 insert con;

 //Create a Map<ID,Contact> and fill it up with 
Map<ID,Contact> con2=new Map<ID,Contact>();

for(Contact eachCon : con) {
  
  //ID of each Contact in the list as Key
  //each Contact itself as value 
 con2.put(eachCon.Id, eachCon);
}
  System.debug(con2); 

System.debug('------------------');

//Loop through(Iterate over) the Map keys 
for(Id eachId : con2.keySet()) {
  
  //print out the each Key and Value 
//print out the Contact  lastName value

System.debug('Id: ' +eachId + ' Last Name: '+ con2.get(eachId).LastName); 
}
  


 