trigger OppUpdateTrigger on Opportunity (after update) {

/**
 * If Opportunity amount is updated to greater than 100000
 * update the description field to high amount
 * if not update it to low amount
 * 
 * his is a scenario good for before update 
     * In this situation, we are using after update to demonstrate
     * this will cause recursive trigger execution that eventually fail
     * and Salesforce will prevent this from happening by throwing 
     * System.FinalException record is locked error in the UI 
     * 
     * To fix this, we can use a static variable in handler class
     * to keep track of whether this trigger already been executed or not
     * if so stop the execution 
     * else it means it's running for the first time execute the code
 */

//create an empty list store all the update fields inside

OppsTriggerHandler.handleAfterUpdate(Trigger.new);
 // In after update event, Trigger prevent updating anything
// inside Trigger.new directly 
// below line will make a copy of opp entered the trigger
// and we can update the cloned one



}