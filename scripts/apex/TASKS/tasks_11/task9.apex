/**
9. Create a List<Opportunity> and add 5 valid opportunity with required fields
   - StageName, Name , ClosedDate , Amount 
   - insert into Salesforce
   - Get a Map<Id, Opportunity> out of this List<Opportunity>
     - either directly putting the list into () while creating the map 
     - or Create an Empty Map and use putAll method 
     - or use Loop to add it one by one
   - Create an empty Map<String,Decimal> 
     - Loop through your List and 
     - Add the Opportunity Name field value as Key
     - Add the Opportinuty Amoung field value as Value
 */

 List<Opportunity> opps =new List<Opportunity> ();

 opps.add(new Opportunity(
    StageName = 'Prospecting', Name = 'Opps1', CloseDate = Date.today()+14 , Amount = 25000));
opps.add(new Opportunity(
    StageName = 'Prospecting', Name = 'Opps2', CloseDate = Date.today()+24 , Amount = 35000));
opps.add(new Opportunity(
    StageName = 'Prospecting', Name = 'Opps3', CloseDate = Date.today()+34 , Amount = 45000));
opps.add(new Opportunity(
    StageName = 'Prospecting', Name = 'Opps4', CloseDate = Date.today()+44 , Amount = 55000));
opps.add(new Opportunity(
    StageName = 'Prospecting', Name = 'Opps5', CloseDate = Date.today()+54 , Amount = 65000));

insert opps;

Map<Id, Opportunity> opps2 = new Map<Id, Opportunity>(opps);

Map<String, Decimal> myNewOpps = new Map<String, Decimal>();

for(Opportunity eachOpps : opps) {
 //Add the Opportunity Name field value as Key
 //Add the Opportunity Amount field value as Value
 myNewOpps.put(eachOpps.Name, eachOpps.Amount);
}
  System.debug('myNewOpps value: '+myNewOpps); 

  