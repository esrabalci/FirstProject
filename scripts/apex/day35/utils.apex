// Contact c1= utils.getContact('Snow');
// System.debug('c1 value is : ' + c1);
// //insert c1;

// System.debug('------------------');

// System.debug('Utils.getContact(Balci) value is : ' + Utils.getContact('Balci') );

// System.debug('------------------');

// List<Contact> myContacts= Utils.getContacts('Snow', 10);
// //size of myContacts should be 10

// System.debug('myContacts value is : ' + myContacts);

// System.debug('------------------');

// Account newAcc = Utils.insertNewAccount('Acc from Method');
// System.debug('n value is : ' + newAcc);

// System.debug('------------------');

//provide how many child we want to have
Account myAcc = Utils.getAccountAndContacts('Acc with Contact', 4);
//System.debug('myAcc value is : ' + myAcc);

//get all the child contact that belong to above an account 
// we'll get from soql

System.debug('------------------');


List<Contact> childContacts = [SELECT LastName from Contact 
                                WHERE AccountId =  :myAcc.Id  ]; 
System.debug('childContacts value is : ' + childContacts);

System.debug('------------------');

Account acc = [SELECT Name, Id, (SELECT LastName from Contacts)
                FROM Account
                WHERE Name = 'Acc with Contact'
                LIMIT 1 ] ; 

// Print account name 
System.debug('acc.Name value is : ' + acc.Name);
// how do we access subquery part of parent to child query 
System.debug('acc.Contacts value is : ' + acc.Contacts);

List<Contact> accChildContacts  =  acc.contacts ; 
// print the contact lastname
for(Contact each : accChildContacts) {
    System.debug('Contact name value : ' + each.LastName);
}