public class AccountUpdateAsync implements Queueable {
   
    String description ; 
    List<Account> accLstToProcess ; 


    public AccountUpdateAsync(String description, List<Account> accLstToProcess) {
        this.description = description ; 
        this.accLstToProcess = accLstToProcess ; 
    }


    public void execute(QueueableContext context) {
        // awesome code here
        System.debug('Running some awesome code in AccountUpdateAsync'); 
        // print out value of description field 
        System.debug('description value is : ' + this.description);

        // update the description field of the List of account to 
        // the description provided. 

        for(Account each : accLstToProcess) {
            
            each.Description = this.description ; 

        }
        update accLstToProcess ; 

         //Right after we are done with account update 
         //We want to perform another async code
        //that need to happen right after account update
        // Look at TaskAfterAccountUpdate class
          TaskAfterAccountUpdate tq = new TaskAfterAccountUpdate();
        System.enqueueJob(tq);
        
    }



}