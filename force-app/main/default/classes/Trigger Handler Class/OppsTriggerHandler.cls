public class OppsTriggerHandler {
//a static variable to keep track of whether this is the first time
// handleAfterUpdate is being called in this execution
//so we can prevent recursion
public static Boolean firstRun = true ;


    public static void handleAfterUpdate(List<Opportunity> opps) {

       // if this is not the first time
       //We will get out of the method
        if( !firstRun ){
        // we can use return keyword to get out of the method early
        // this is a void method it does not return value
        //we are simply using it to exit the method early
        System.debug('You have already ran this code@=!!!'); 
        return ;
        
        }

        // set the firstRun flag to false to prevent recursion
                firstRun = false;

         // perform the logic for the trigger
        List<Opportunity> updatedOpps = new List<Opportunity>();
    
        for (Opportunity each : opps) {
           // can not update anything
            //  inside Trigger.new directly  in after update 
            // below line will make a copy of opp entered the trigger
            // and we can update the cloned one
            // we can not edit the record within tne context of Trigger.new
            // because it's locked in afterUpdate event to prevent recursion
            //However, we can clone the record into new variable including record Id
            // we can do update on that cloned record
            // then do update DML for the List that contains new updates
            Opportunity oppNew = each.clone(true);
          if (oppNew.Amount > 100000) {
            oppNew.Description = 'high amount';
          } else {
            oppNew.Description = 'low amount';
          }
    
          updatedOpps.add(oppNew);
        }
       //once we are done with 
       //update the Opportunity 
        update updatedOpps;

       

      }
    




}