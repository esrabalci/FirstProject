//you can use Database.Batchable<YOUR SPECIFIC sOBJECT>
//instead of Database.Batchable<sObject>
//only if you return Iterable<YourSpecificSObjectType> instead of Database.QueryLocator
// for the start method , otherwise it will not compile 

public class OverdueOppProcessor implements Database.Batchable<sObject> {

  
public Database.QueryLocator start(Database.BatchableContext bc) {

  return Database.getQueryLocator('SELECT Id, StageName FROM Opportunity WHERE CreatedDate=TODAY');


}


public void execute(Database.BatchableContext bc, List<Opportunity> recordsInBatch){

    System.debug('Processing '+ recordsInBatch.size() + ' records here'); 
    

       //create a list, than loop, add to a empty list and update
       List<Opportunity> updatedOpps = new List<Opportunity>();

       for(Opportunity each : recordsInBatch) {
       
           each.StageName = 'Closed Won';
           updatedOpps.add(each);
       }
       //perform dml
       update updatedOpps;


}


public void finish(Database.BatchableContext bc){

    System.debug('Done processing Opps'); 
    }



}

