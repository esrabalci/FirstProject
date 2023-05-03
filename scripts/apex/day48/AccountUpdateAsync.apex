
//Just like @future methods
//we can put a code into Class that implements Queueable interface 
//and provide detail of execute
//in order to run the code; 
//we use System.enqueueJob(queueable);

System.debug('Running apex-anon'); 

List<Account> myAccList = AccountController.getAccountWithAnnualRevenue();


Queueable q = new AccountUpdateAsync( ' AWESOME ' );
System.enqueueJob(q);


