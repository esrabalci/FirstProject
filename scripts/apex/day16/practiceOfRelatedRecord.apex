// create an account with name
Account myAcc =new Account(Name='test');

//insert it into SF
insert myAcc;

//store the Id field to variable 
Id accntId=myAcc.Id;

System.debug(accntId); //001Dn00000LTXTPIA5

//Create a contact variable and assign its value
Contact c1 = new Contact();
c1.FirstName='testing';
c1.LastName ='test for Contact';

//fill upp accountId field with the value you stored in teh first step(myAcc)
c1.AccountId = accntId;
//now i filled up the information(LastName) into accountId so i can see the related list under account

//insert it to SF
insert c1;

//Create another contact under the account
Contact test2 =new Contact(LastName='My second contact under the account',AccountId=accntId);

insert test2;

//Create a case under contact(test2)
Case myCase = new Case(Status='New' ,Description='My first Case under contact(test2)',ContactId=test2.Id);
insert myCase;