/**
Working with related records : 

Every look up field in Salesforce 
actually store the record Id of parent record '
for example 
account name field in contact stores account Id of parent account 

 */

 // create an account with Name value 'Account From Apex' 
  Account a1 = new Account(Name = 'Account From Apex 1');
 // insert that into SF 
  insert a1 ; // account name will be Account From Apex 1
 // print that out 
  System.debug('a1 value is : ' + a1); // Account:{Name=Account From Apex 1, Id=0018W00002BKeR0QAL}
 
 // store the Id field to variable with proper data type 
  ID accId =  a1.Id ; 
  System.debug('accId value is : ' + accId); //0018W00002BKeR0QAL

 // Create a contact variable and assign it's value 
      Contact c1 = new Contact(); 
 
 // fill up the FirstName, LastName
 c1.FirstName = 'Gurkan' ; 
 c1.LastName  = 'D' ; 
 
 // and fill up AccountId field with the value you stored in first step 
   c1.AccountId = accId ; // account name will be Account From Apex 1
 
 // insert this into SF 
    insert c1 ; 

//create another contact under this account
Contact c2 = new Contact(FirstName='AB', LastName='CD', AccountId = accId ); 
insert c2 ;

// create a case under c2 with subject 'Case under Apex Contact 2'
// contactId field should be filled up with Contact c2 record Id above
// insert this case into SF and observe the result
Case myCase = new Case( Subject = 'Case under Apex Contact 2', ContactId = c2.Id);
insert myCase;

