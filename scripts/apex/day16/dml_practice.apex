/**
DML : Data Manipulation Language 
 allow you to interact with Salesforce Database of your org 
    insert
    update
    upsert
    delete
    undelete
    merge

    https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_dml
 */

// Create a variable with sObject type of Account
// assign the Name field value

Account a1 = new Account(Name = 'Acc from Apex'); 
 // when you create record by Account a1 = new Account(); you will not see ID, 
System.debug('a1 value is : ' + a1); // Account:{Name=Acc from Apex}
 
 // insert the account into Salesforce org
 insert a1 ; 
  System.debug('a1 value after insert is : ' + a1); 
  //Account:{Name=Acc from Apex, Id=0018W00002BKdOFQA1}

  // print out the Id of the a1 

 //but after insert a1 you will see ID because you will connect with your org 
 //  because you will connect with your org by inserting new record
 //we inserted a1 that means a1 will be already in Salesforce -->line 22
     System.debug('a1.Id value is : ' + a1.Id);   // 0018W00002BKdOFQA1
    

  // change the name of a1 to -> Updated Name from Apex
  //update  only for if you have already a record in the salesforce
  //and you need that variable whatever you use , already have an ID.
  a1.Name = 'Account_Inserted_Updated_Deleted_Undeleted';

// use update DML operation to update the record that already in Salesforce
  update a1;
 System.debug('a1 value is : ' + a1);//Account:{Name=Updated Name from Apex, Id=0018W00002BKdOFQA1}

 // update the Billing State field 
 a1.BillingState = 'VA' ; 

 // use update DML operation to update the record that already in Salesforce
 update a1 ; 
 System.debug('a1 value is : ' + a1); 
//a1 value is : Account:{Name=Updated Name from Apex, Id=0018W00002BKdRTQA1, BillingState=VA}

 /**
 you need to create sObject by giving name and then you are updating name 
 and all existing fields which before BillingState value was empty or null whatever,
  by updating you just putting 'VA' instead of null or empty
  */

 // delete this record from salesforce
 // you can find deleted record under Recycle Bin
 delete a1 ; 
 System.debug('a1 value after delete is : ' + a1);
 //Account:{Name=Account_Inserted_Updated_Deleted_Undeleted, Id=0018W00002BKdVGQA1, BillingState=VA}


  // restore this deleted record from Recycle bin 
 undelete a1 ;  
 System.debug('a1 value after undelete is : ' + a1);
 //Account:{Name=Account_Inserted_Updated_Deleted_Undeleted, Id=0018W00002BKdYyQAL, BillingState=VA}

