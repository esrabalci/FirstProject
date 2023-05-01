trigger AccountTrigger on Account (before insert,after insert,before update,after update, after undelete) {

    
    
     // Trigger context variable : OperationType to get what event
     // caused this code to get executed
    System.debug('Trigger event is : ' + Trigger.operationType);
   
        //how many record / item enter the trigger
    // size is variable so we don't use ()
System.debug('Count of Record entered the Trigger : ' + Trigger.size); 
    
System.debug('------------------');


   //Trigger.new Context variable , hold the list<Account> that entered the Trigger
   //it hold list of sObject
  System.debug('Trigger.new value is : ' + Trigger.new ); 
   
// Trigger.new  is list of account that entered the trigger
// for(Account each :  Trigger.new  ) { // list<Account>
//     System.debug('Current value : ' + each.Name);
// }

    System.debug('------------------');
    

    //Requirement 1: When the record is created , 
    //if the AnnualRevenue is greater than 500000, update the rating to Hot
    // BEFORE insert event is good for this requirement

    //CHECK IF THE CURRENT RUN OF TRIGGER IS BECAUSE OF BEFORE INSERT EVENT
    if(Trigger.isBefore && Trigger.isInsert){
    System.debug('I am inside Before Insert Code : ');         
  
     //Trigger loop --> to see all the triggers for all the records
     for(Account each : Trigger.new) {
       

       if(each.AnnualRevenue > 500000){

       //new requirement , simply update the rating to Hot
         each.Rating ='Hot';
          //No DML Needed in BeforeInsert, because the next thing
          //after before insert is (Salesforce Save ) !!!
       }
     }

     
    }
    
    //Requirement 2: When the record is created , 
    //if the AnnualRevenue is greater than 100000, 
    //Create a Sample Contact for this Account
    //AFTER insert event is good for this requirement
    if( Trigger.isAfter && Trigger.isInsert ){
        System.debug('I am inside After Insert Code : ');
    }


    //We are about to insert contacts for each Account entered the trigger,
    //so we need a List<Contact> to store it and eventually
    // insert this using DML outside the loop

    List <Contact> contactList = new List<Contact>();
    
    //Start with Trigger Loop because we get the record that
    //entered the trigger in List stored inside Trigger.new

      //trigger.new -> returns a list of sObject
      for(Account each : Trigger.new) {
        // if the AnnualRevenue is greater than 1000000,
        if(each.AnnualRevenue>1000000){
  
        //create Contact instance using new keyword
        //fill up the field value and add it to the list
        contactList.add( new Contact(AccountId = each.Id ,LastName = 'Snow') ) ;

        }
      }
      // you have prepared your list, now it's time to insert
      insert contactList;




      
    if( Trigger.isBefore && Trigger.isUpdate ){
        System.debug('I am inside Before Update Code : ');
    }
    
    if( Trigger.isAfter && Trigger.isUpdate ){
        System.debug('I am inside After Update Code : ');
    }
    
    // if( Trigger.isBefore && Trigger.isDelete ){
    //     System.debug('I am inside Before Delete Code : ');
    // }
    
    // if( Trigger.isAfter && Trigger.isDelete ){
    //     System.debug('I am inside After Delete Code : ');
    // }
    
    // if( Trigger.isAfter && Trigger.isUndelete ){
    //     System.debug('I am inside After Undelete Code : ');
    // }
    
}