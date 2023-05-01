trigger AccountOppsUpdate on Account (after update) {

//if Account updated to be inactive(Active__c set to NO)
// update all the 'Open' opportunities StageName to 'Closed Lost'

//1.create a Set<Id> to STORE only those Accounts ID that entered the Trigger
//with active field updated to NO

Set<Id> accId =new Set<Id>();
//to filter out only those account that stage Name change
for(Account each : Trigger.new) {
       
       Account eachOld =  Trigger.oldMap.get(each.Id) ; 
       // check if Active__c fields has changed and changed to No
       if(each.Active__c != eachOld.Active__c && each.Active__c == 'No' ){
          accId.add(each.Id) ; 
       }
    }

//if no account that entered the trigger has Active__c fields changed to NO
// the set is empty, get out of the trigger , do not proceed

if(accId.isEmpty()){
    System.debug('no account that entered the trigger has Active__c fields changed to NO'); 
    return;
}


//2. Get all the Open Opps belong to those Account

List<Opportunity> toBeUpdatedOpps = [SELECT Name, AccountId, StageName FROM Opportunity Where IsClosed = false AND AccountId IN :accId];


//3- Update all the open Opps above StageName to ClosedLost

for(Opportunity each : toBeUpdatedOpps) {

   each.StageName= 'Closed Lost';

}
    

//4- Perform DML to update in Salesforce

if( ! toBeUpdatedOpps.isEmpty() ){

update toBeUpdatedOpps ; 

}


















}