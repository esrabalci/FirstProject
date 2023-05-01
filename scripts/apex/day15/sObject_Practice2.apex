// Create an opportunity variable and assign its value
// fill up below fields

// Name, CloseDate, StageName
Opportunity o1 =new Opportunity();
o1.Name='Opp 1 from Apex';
o1.StageName='Close Won';
o1.CloseDate= Date.today();

System.debug('o1 value is : ' + o1); 
//{Name=Opp 1 from Apex, StageName=Close Won, CloseDate=2023-03-01 00:00:00}

System.debug('------------------');


Opportunity o2 =new Opportunity();
o2.Name='Opp 2 from Apex';
o2.StageName='Close Won';
o2.CloseDate= Date.today();

//create aList of opportunity and add above 2 items
List<Opportunity> opps =new List<Opportunity>{o1,o2};
System.debug('opps value is : ' + opps); 
//{Name=Opp 1 from Apex, StageName=Close Won, CloseDate=2023-03-01 00:00:00}, Opportunity:{Name=Opp 2 from Apex, StageName=Close Won, CloseDate=2023-03-01 00:00:00}

//insert this opps into Salesforce
insert opps;


