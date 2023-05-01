/**
Create a List of Contact and add 3 Contacts
2 contacts with all required fields filled : LastName
1 contact only provide firstName field value
now try to insert this and see what you get
    - will it insert 2 and fail 1
    - will it fail all of them
 */

 //Create a List of Contact and add 3 Contacts
 List<Contact> contactList =new  List<Contact> ();
 contactList.add( new Contact(LastName=' TDX Contact1') );
 contactList.add( new Contact(LastName=' TDX Contact2')  );
 //this is one is missing required field !!!
 contactList.add( new Contact(FirstName=' Bad Apple WITHOUT REQUIRED LASTNAME FILLED UP ')  );

 System.debug('contactList value is : ' + contactList); 
 //This will fail because one of the item has no required field filled up

 //insert contactList;

 //how do we actually get the result  of insert 2 and fail 1
  
  //     ----------DATABASE METHOD ---------------

  // Database.insert() , Database.update() , Database.insert()
  //this is how tou call the insert method with the allOfNone set to FFalse
  //Database.insert (recordList , false);

//Use Database class method that mirror DML operation
//with some additional options

//Bad data is already filtered, but we want to let the good data get in by using Database methods.

//Database.insert (The List you want to insert , specify you want All or Nothing in boolean);
Database.insert(contactList, false);
// False --> means get the good one , don't get to fail one
// if true --> either all get inserted or none get inserted if any items can not be inserted will not
// if false -->> items that successfully can be inserted.
 // it will not fail the whole insert operation 

//get information about how many fail or which one is pass
//Database.SaveResult[] results = Database.insert(recordList, false);

