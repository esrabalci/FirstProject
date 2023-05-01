Lead ld1 = Utils.getLead('Mamac','Nightwatch LLC', true);
System.debug('ld1 value is : ' + ld1);

System.debug('------------------');

Lead ld2 = Utils.getLead('EZZ','Stark Industry', false);
System.debug('ld2 value is : ' + ld2);

System.debug('------------------');


List<Lead> myLeads1 = Utils.getLeads('Lannister', 'Westro', true, 4);
System.debug('myLeads1 value is : ' + myLeads1);

System.debug('------------------');

List<Lead> myLeads2 = Utils.getLeads('Smith', 'IBM', false, 4);
System.debug('myLeads2 value is : ' + myLeads2);

