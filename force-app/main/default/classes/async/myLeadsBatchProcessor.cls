public class myLeadsBatchProcessor implements Database.Batchable<sObject>{


//List and Set is a Iterable, so you can return List<sObject> or Set<sObject>
//if you choose to make start method return Iterable<sObject>
//you can have up to 50K record if you choose



/**
Start method that return all records to be processed
@param bc (Mostly we don't do anything with it)
@return `Database.QueryLocator` this will allow us to provide query in String
and support query that return up to 50 millions records
we get it using Database.getQueryLocator('YOUR QUERY GOES HERE');

 */
public Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
     
     String query = 'SELECT Id,LastName,AnnualRevenue FROM Lead WHERE CreatedDate = TODAY';
     return Database.getQueryLocator(query);


    }

/** 
    public Iterable<sObject> start(Database.BatchableContext bc) {
      
      System.debug('This is the start method that supposed to gather all data that need to be processed'); 
      

        // collect the batches of records or objects to be passed to execute
        //return List of Leads created Today here
       return[SELECT Id,LastName,AnnualRevenue FROM Lead WHERE CreatedDate = TODAY];
    }

*/
    /**
    
     * @param bc to get more info about each batch, we dont do anything with it mostly 
     * @param records This parameter will be filled up with each set of record 
                       for each batches , for example 
                       if you got 1000 records from start method query 
                       when this class is used to run batch process and 
                       if you decided to chop it up to 5 batches 
                       records variable will have 200 record filled up for you 
                       in each batches  
     */

    public void execute(Database.BatchableContext bc, List<Lead> records){
        // process each batch of records
    System.debug('records.size() value is : ' + records.size());
        //write a logic to update list of leads
        //lastName to uppercase and AnnualRevenue to 1000000

        //go each and every loop and update them
        //create a list, than loop, add to a empty list and update
        List<Lead> updatedLeads = new List<Lead>();
        
        //        // loop through the records in this batch, do the update,
        // add it to the list     
        for(Lead each : records) {
            
            each.LastName = each.LastName.toUpperCase();
            each.AnnualRevenue =1000000;
            updatedLeads.add(each);
         
        }
        //use DML to update
       update updatedLeads;
        
        
    }




    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
        System.debug('We have done processing all te Leads '); 
        EmailManager.sendMail(UserInfo.getUserEmail(), 'Batch Apex Completed', 'All leads done processing');
        
    }










 
}