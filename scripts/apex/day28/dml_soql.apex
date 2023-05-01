// Get all the books with no price set
// store it into the List
//Set all the price value to 999



//[SELECT Name, Price__c FROM book__c WHERE Price__c = null ]


//anytime when you update something better create empty list and store into those

//Get all the books with no price set
List<Book__c> bookList= [SELECT Name, Price__c FROM book__c WHERE Price__c = null ];

for(Book__c each : bookList) {
    
    //Set all the price value to 999
   //update the price to 999 --> reassign the value
   each.Price__c =999;

}
    
//use DML to update
update bookList;


// use dml to update
  // update bookLst; 
// you can only run this once
// because once you update price to 999 the query will return empty list

// Alternative approach:
// when we updated list of records, we got from SOQL or Trigger
// it's always best to create new Empty list to store updated content
// and do DML operation on that List

List<Book__c> updateLst = new List<Book__c>();

for(Book__c each : bookList) {
    
    each.Price__c= 999;
    //add the record with updated field value into the updateLst
    updateLst.add(each);
}
    //perform DML operation on updateLst
    update updateLst;


//we can delete existing record by SOQL query to get the records
//and delete DML operation
//for example: Delete all the Account record with name 'Acc from Apex'

List<Account>  toBeDeletedAccounts= [SELECT Id, Name
                                          FROM Account
                                          WHERE Name = 'Acc from Apex'];

System.debug('toBeDeletedAccounts.size() value is : ' + toBeDeletedAccounts.size());

//delete toBeDeletedAccounts;
//          or       
// delete [SELECT Id, Name FROM Account WHERE Name = 'Acc from Apex'];

System.debug('-----------------------------');


// result of [SOQL QUERY] is almost always List of sObject type
//if we do not need this list variable we can directly use it [SOQL]
//for example, print out all book name in your SF Organization

for(Book__c each : [SELECT Name FROM Book__c] ) {
    System.debug('Book Name value : ' + each.Name);
}
    