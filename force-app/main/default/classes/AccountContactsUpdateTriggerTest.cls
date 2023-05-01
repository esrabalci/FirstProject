@isTest
private class AccountContactsUpdateTriggerTest {


@isTest
static void testContactPhoneUpdateIfAccountPhoneUpdated(){

     //Arrange
     //create 2 accounts with 3 contacts using the method
     List<Account> accList = Utils.createAccountsWithContacts(2, 3);


     //Act
     //when the account(Parent) phone is updated , contact's(Child) phone must also updated
     accList[0].Phone ='3459998877';
     accList[1].Phone ='8765554433';

     //reset Governor Limit
     Test.startTest();
     update accList;
     Test.stopTest();

     //Assert
     //write a soql to get the contacts under accList
     List<Contact> allContacts = [SELECT Phone , Account.Phone 
                                FROM Contact 
                                WHERE AccountId = :accList  ];


    for( Contact each : allContacts) {
          
        // assert      Account.Phone Field  = Contact Phone
        Assert.areEqual( each.Account.Phone  , each.Phone);
        
    }
     
}


















}