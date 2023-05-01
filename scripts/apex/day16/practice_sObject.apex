//create an account and related contact
//create a task on account

Account acc1 =new Account(Name='Hero Company');
acc1.Industry= 'Technology';

//System.debug(acc1); 

insert acc1;

Contact con =new Contact(LastName='Will', AccountId= acc1.Id);

insert con;


Task taskOfAcc1 =new Task();
taskOfAcc1.WhatId = acc1.Id;
taskOfAcc1.Priority ='High';
taskOfAcc1.ActivityDate = Date.today();
taskOfAcc1.Subject = 'Follow up ' + acc1.Name;


insert taskOfAcc1;


