
// System.debug('Drink Coffee'); 
// System.debug('clean up');

//AsyncUtil.boilWater();

// System.debug('Chop the onion'); 
// System.debug('Sit back and relax'); 
// System.debug('Continue to cook');


System.debug('------------------');

//turn off your lead trigger now!

//Have some data to work on to simulate large data volume situation
//prepare lead data, insert 1000 Leads

// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'Night Watch Inc', true, 1000);
// System.debug('myLeads.size() value is : ' + myLeads.size());

System.debug('------------------');

myLeadsBatchProcessor mlp = new myLeadsBatchProcessor();
Database.executeBatch(mlp, 100);



