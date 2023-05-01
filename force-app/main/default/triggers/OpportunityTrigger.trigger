trigger OpportunityTrigger on Opportunity(
  before insert,
  after insert,
  before update,
  after update,
  before delete
) {
  // OperationType to get what event caused this code to get executed
  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  System.debug('------------------');

  /**
Requirement:
When the opportunity is updated
if the stageName has CHANGED to Closed Won
Create a new task with below detail
  - Subject : Follow up with renewal
  - ActivityDate: 1 day from Today
  - WhatId : opp Id
 */

  if (Trigger.isAfter && Trigger.isUpdate) {
    // create an empty list of task to store the list of items
    List<Task> taskList = new List<Task>();

    // trigger loop
    for (Opportunity each : Trigger.new) {
      //Trigger.oldMap => Map<Id,Opportunity> with old fields value
      //access the 1 item/value inside this map: provide a key
      Opportunity oldOp = Trigger.oldMap.get(each.Id);
       
      //if the stageName has CHANGED to Closed Won
      if(each.StageName  != oldOp.StageName && each.StageName=='Closed Won'){
        
        Task t =new Task();
        t.Subject     ='Follow up with renewal' +each.Name;
        t.ActivityDate= Date.today()+1;
        t.WhatId      =each.Id;
       //add into the list
        taskList.add(t);

      }
    }
    //outside the loop, add insert one time
    insert  taskList;
  }

  System.debug('------------------');

  /**
 Requirement :
 if the opportunity is in Closed Won stage 
           -It should not be deleted
 Throw error message : 'You can not delete Op in Closed Won stage'
add the before delete event for this action!!!
 */

  if (Trigger.isBefore && Trigger.isDelete) {
    //Trigger Loop
    //in delete event we get the record that entered the trigger
    //using Trigger.old because Trigger.new is not available in delete
    for (Opportunity each : Trigger.old) {
      //if the opportunity is in Closed Won stage
      if (each.StageName == 'Closed Won') {
        //-It should not be deleted --> Throw error message
        each.addError('You can not delete Op in Closed Won stage');
      }
    }
  }

  System.debug('------------------');
  /**
 Requirement
Anytime new Opportunity is created
If Amount field is negative
Populate error message 'You cannot save this Opp. Amount is negative'
add the before update event for this action!!!
 */

  if (Trigger.isBefore && Trigger.isUpdate) {
    //trigger loop
    for (Opportunity each : Trigger.new) {
      //if the opp amount is negative
      if (each.Amount < 0) {
        //throw error 'Amount can not be negative'
        // each.addError('You cannot save this Opp. Amount is negative');
        each.Amount.addError('You cannot save this Opp. Amount is negative');
      }
    }
  }

  System.debug('------------------');

  /**
 * requirement:
  
Anytime new opportunity created ,
  ==>if the Amount field is empty - >filled up with 10000
THIS ONE WE USE BEFORE INSERT
 */

  if (Trigger.isBefore && Trigger.isInsert) {
    for (Opportunity each : Trigger.new) {
      if (each.Amount == null) {
        each.Amount = 10000;
      }
    }
  }

  System.debug('------------------');

  /**
 
Requirement:
Anytime new Opportunity is created
if the Amount field is empty
Create a follow up tasks with below detail
Task Subject: Follow up with high value op
Task ActivityDate: 1 day from now
Task RelatedTo (WhatId) : Your Opportunity (Id)

THIS CASE WE USE AFTER INSERT because we need ID
Because first we need to know the record to update, Id is unique, 
that's why we need to get the ID of the record first
to update task related to opp - you need the opp's id
 in the second task you are updating record related to opportunity


 */

  if (Trigger.isAfter && Trigger.isInsert) {
    //we need a place to store all the tasks that about to be entered
    //list of task
    List<Task> taskList = new List<Task>();
    //trigger loop
    for (Opportunity each : Trigger.new) {
      if (each.Amount > 50000) {
        //Create a follow up tasks with below detail
        Task t = new Task();
        t.Subject = 'Follow up high value Task ' + each.Name;
        t.ActivityDate = Date.today() + 1;
        t.WhatId = each.Id;

        //add it to the task list to be inserted
        taskList.add(t);
      }
    }
    //insert outside the loop
    insert taskList;
  }

}
