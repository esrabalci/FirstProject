trigger LeadTrigger on Lead(before insert, after insert, before delete) {
  // OperationType to get what event caused this code to get executed
  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  /**

Requirement :
  -->When the Lead is created
         -Update the LastName field to UPPERCASE
        - and assign it back to field value

 -->If the firstName was entered, 
          -make it Title Case
--> If the lead source was entered
          -choose Web
THIS CAN BE DONE IN BEFORE_INSERT EVENT

*/

  //Trigger Loop ->to get every item
  //Trigger.new is represent List of Lead records

  
  if (Trigger.isBefore && Trigger.isInsert) {
    LeadTriggerHandler.handleBeforeInsert(Trigger.new); 
}
  /**
 Requirement :
 AW Computing is getting lots their lead from social events
 In order to keep the lead motivated,
    -->anytime new lead is created 
 -a new task should be created for this lead with below detail

    Task subject: Send Apple Air Tag
    Task Due Date (ActivityDate): 2 days after Today
    Task Name (WhoID field) : should be the Id of the lead record
    
THIS CAN BE DONE IN AFTER_INSERT EVENT
 */

  if (Trigger.isAfter && Trigger.isInsert) {
  
     LeadTriggerHandler.handleAfterInsert(Trigger.new);
  }


  if (Trigger.isBefore && Trigger.isDelete) {

   LeadTriggerHandler.handleBeforeDelete(Trigger.old);

  }

}
