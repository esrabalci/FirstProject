/**
## Task 3 Apex SOQL : 

Get the Id of Account with name Super Parent.
Get all the Opportunities with no Parent Account association (AccountId is empty)
and store it in the list called orphanOpps. 
Add All the orphanOpps under Account with name Super Parent.

 */

 //Get the Id of Account with name Super Parent.
 //Account superAcc =[SELECT Id  FROM Account WHERE Name = 'Super Parent' LIMIT 1];
 //Id superAccId=superAcc.Id;

Id superAccId =[SELECT Id  FROM Account WHERE Name = 'Super Parent' LIMIT 1].Id;


 //Get all the Opportunities with no Parent Account association (AccountId is empty)
//and store it in the list called orphanOpps. 

List<Opportunity> orphanOpps = [SELECT Name, Amount FROM Opportunity WHERE AccountId = null];

//Add All the orphanOpps under Account with name Super Parent.

for(Opportunity each : orphanOpps) {
   
   each.AccountId = superAccId;

}
//DML operation to save it
    update orphanOpps;