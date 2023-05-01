/**
5. Create List of Opportunity 
   - Add 10 items in it with valid Opportunity required fields filled up 
      - Name,  Opp - 1(2,3,4,5..10)
      - ClosedDate (10 days from Today), 
      - StageName ='Prospecting', 
      - Amount  random Integer between 0-100000
   - insert the list into your org 

   - Create an Account with Name = 'Parent of Cool Opps'
   - insert into Salesforce org 

   - Create an empty List of Opportunity called coolOppsList
   // Create an empty List of Opportunity called lowOppsList
      - Loop through your entire List of 10 items 
      - If amount is greater than 60000
         - Update AccountId field to Id of Account you created earlier
         - Add the Opportunity to coolOppsList
      -if it's less than or equals 60000
          add it to lowOppsList

   - Update the coolOppsList in your org 
   - Go to user interface and observe you have filled up Account Name field of all opportunities that has amount field over 60000 to 'Parent of Cool Opp'
 */

//  Create List of Opportunity 
List<Opportunity> fields=new List<Opportunity>();

//    - Add 10 items in it with valid Opportunity required fields filled up 
 for(Integer i=1; i<=10 ;i++) {
    
    //to add 10 items we need to create opp variable
    Opportunity newOpp =new Opportunity();
      // Name,  Opp - 1(2,3,4,5..10)
      newOpp.Name='Opp - '+i;
     // ClosedDate (10 days from Today),
     newOpp.CloseDate =Date.today().addDays(10);
     //StageName ='Prospecting',
     newOpp.StageName='Prospecting';
     //Amount  random Integer between 0-100000
     newOpp.Amount= Math.round(Math.random()*100000);
     //// add it to the list 
     fields.add(newOpp);

 }
 //- insert the list into your org 
 //insert fields;

 //Create an Account with Name = 'Parent of Cool Opps'
 Account accnt=new Account(Name = 'Parent of Cool Opps');

 //insert into Salesforce org 
 //insert accnt;


    // Create an empty List of Opportunity called coolOppsList
    List<Opportunity> coolOppsList = new List<Opportunity>();

    //// Create an empty List of Opportunity called lowOppsList
     List<Opportunity> lowOppsList = new List<Opportunity>();
    
    //Loop through your entire List of 10 items 
    for(Opportunity each : fields) {
        
        // If amount is greater than 60000
        if(each.Amount > 60000){

          //Update AccountId field to Id of Account you created earlier
            each.Id =accnt.Id;
          // Add the Opportunity to coolOppsList
            coolOppsList.add(each);
       
        }else{ //if it's less than or equals 60000
               
               //add it to lowOppsList
               lowOppsList.add(each);
        }
    }
        
 System.debug('coolOppsList value is : ' + coolOppsList); 
System.debug('lowOppsList value is : ' + lowOppsList); 

// Update the coolOppsList in your org
//update coolOppsList;
        