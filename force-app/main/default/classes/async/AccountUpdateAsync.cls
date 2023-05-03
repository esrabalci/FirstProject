public class AccountUpdateAsync implements Queueable {
   
    String description ;
   
   
    public AccountUpdateAsync(String description) {
      
        this.description=description;
    }




    public void execute(QueueableContext context) {
        // awesome code here
        System.debug('Running some awesome code in AccountUpdateAsync'); 
        System.debug('this.description value is : ' + this.description);
        
    }

}