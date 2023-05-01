/**
11. Create List<Case> with 4 Items with name oldList 
     - with below fields
       - Subject set to Sample Case (1,2,3,4)
     - insert into Salesforce
   - Create a Map<ID, Case> from above List call it oldMap
     - It should contain ID of case as key, the Case itself as value
   - Print out the oldList variable 
     - Observe It should be the List with ID generated
   - Print out the oldMap  variable 
     - Observe key is ID and value is Record itself

   - Create a new List<Case> called newList
     - Copy everything from oldList into newList in one shot
   - Now Iterate over your newList with 4 copied Items above
     - Update the Subject field value to 
       - Whatever is the current Value followed by string  New
       - So it will Sample Case (1,2,3,4) New
     - Issue a DML statement to reflect the changes in Salesforce
   - Create a Map<ID, Case> from above List call it newMap
      - It should contain ID of case as key, the Case itself as value

   - Print out the newList variable 
     - Observe It should be the List after the update
   - Print out the newMap  variable 
     - Observe It should be the Map after the update
 */

 List<Case> oldList =new  List<Case>();

 for(Integer i=1; i<=4 ;i++) {
  oldList.add(new Case(Subject='Sample Case '+i) );
 }
 System.debug('oldList '+ oldList); 

 insert oldList;

 //Create a Map<ID, Case> from above List call it oldMap
 Map<ID, Case> oldMap = new Map<ID, Case>();

// It should contain ID of case as key, the Case itself as value
for(Case eachCase : oldList) {
 
    oldMap.put(eachCase.Id, eachCase);
}
System.debug('Old Map: '+ oldMap); 

System.debug('------------------');

// Create a new List<Case> called newList
//Copy everything from oldList into newList in one shot
List<Case> newList = new List<Case>(oldList);

// Now Iterate over your newList with 4 copied Items above
// Update the Subject field value to 
//- Whatever is the current Value followed by string  New 
// So it will Sample Case (1,2,3,4) New
//Issue a DML statement to reflect the changes in Salesforce

for(Case eachCopied : newList) {
 // Update the Subject field value to 
//- Whatever is the current Value followed by string  New 
  eachCopied.Subject= eachCopied.Subject + ' New' ;
  //So it will Sample Case (1,2,3,4) New
}
////Issue a DML statement to reflect the changes in Salesforce
update newList;
  //Print out the newList variable 
  System.debug('the newList values: '+ newList); 

System.debug('------------------');


  Map<ID, Case> newMap = new Map<ID, Case>();
  for(Case eachCase : newList) {
   newMap.put(eachCase.Id, eachCase);
  }
    
  
  // Print out the newMap  variable 
  System.debug('the newMap values: '+ newMap); 