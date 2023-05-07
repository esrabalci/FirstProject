public class TaskAfterAccountUpdate implements Queueable{
    
    //Right after we are done with account update 
    //We want to perform another async code
    //that need to happen right after account update

    public void execute(QueueableContext context) {

       System.debug('Things that I need to do right '+ 
                   +'after Account Update Async Code') ; 

       
    }


}