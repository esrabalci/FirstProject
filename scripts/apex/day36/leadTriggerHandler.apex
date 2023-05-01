// List<Lead> myLeads2 = Utils.getLeads('Smith', 'IBM', false, 4);
// System.debug('myLeads2 value is : ' + myLeads2);


// System.debug('------------------');


// LeadTriggerHandler.handleBeforeInsert(myLeads2);
// System.debug('myLeads2 value after calling the method is : ' + myLeads2 );


// System.debug('------------------');


//Create a list of lead with FirstName, LastName , Company with 2 elements
//call the method above to see your result

List<Lead> myLead3 = new List<Lead>();
myLead3.add(new Lead ( FirstName= 'clark', LastName= 'Kent', Company= 'Justice League'));
myLead3.add(new Lead ( FirstName= 'bruce', LastName= 'Wayne', Company= ' Wayne Enterprise'));
myLead3.add(new Lead ( FirstName= 'diana', LastName= 'Prince', Company= 'Amazon'));

//System.debug('myLead3 value is : ' + myLead3);
//LeadTriggerHandler.handleBeforeInsert(myLead3);
//System.debug('myLeads3 value after calling the method is : ' + myLead3 );

     //insert myLead3 ; 


System.debug('------------------');


