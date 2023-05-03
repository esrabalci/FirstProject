/**
Create a Contact called Super Jon under Account with name Super Parent in UI. 
Now in Apex
Get the Id of Contact with name Super Jon.
Get all the Cases with no Contact association (ContactId is empty)
and store it in the list called orphanCases. 
Add All the orphanCases under Contact with name Super Jon.

 */

//Get the Id of Contact with name Super Jon.
 Id contactJonId=[SELECT Id,Name  FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;

 //Get all the Cases with no Contact association 
 //and store it in the list called orphanCases. 
 List<Case> orphanCases =[SELECT Id,Account.Name FROM Case WHERE ContactId = null];

 //Add All the orphanCases under Contact with name Super Jon.

 for(Case each : orphanCases ) {
    
    each.ContactId = contactJonId;
 }
    //DML operation to save it
    update orphanCases;