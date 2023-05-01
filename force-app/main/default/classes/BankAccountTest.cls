@isTest
private class BankAccountTest {

@TestSetup
static void makeData(){
    System.debug('Message from @TestSetUp method');    
}

@isTest
static void testGetBalance(){
   
   // Arrange -> Prepare your test data
   // test GetBalance method so i need to have an object
   // because getBalance method is created to get the balance of
   //bank account object.
   //so 1--> create a bank account with some detail --> prepare the data
   BankAccount b1 = new BankAccount('Sean',123456789,8000000); 
        
   Decimal expected = 8000000; 

   // Act -> taking action by calling the method
   Decimal actual = b1.getBalance(); 

   // Assert -> is checking the expectation and reality(actual/existing data)
   System.assertEquals(expected,actual);


   // call the no param constructor and show details method for test coverage 
   //to be able to use method for test coverage we need to create an object of bank account
   BankAccount b2 = new BankAccount(); 
   b2.showDetails(); 
   //you don't need to assert because there is nothing to test
   //showDetails() method just show information about the above sean , 123456789 ,8000000


}

    @isTest
    static void testDeposit(){
    
        // Arrange -> Prepare your test data
        BankAccount b1 = new BankAccount('Sean',123456789,8000000); 
        
        // act -> taking action by calling the method
        // deposit() method that doe not return a value 
        //you deposit something, your balance is increase
        b1.deposit(1000); 

        // Assert -> is checking the expectation and reality(actual/existing data)
        //to get your balance, you're expecting the balance is increase to new number
        // 8000000 + 1000 = 8001000
        // assert the balance is now 8001000
        Decimal expected = 8001000 ; 
        Decimal actual = b1.getBalance() ; // actual balance
        
        System.assertEquals(expected,actual);
        // do not mix different scenarios in same test 
        // ideally put it in it's own test method 
        b1.deposit(-1000);// nothing happen , whatever the previous value is and the balance should be exactly the same as before
        System.assertEquals(expected ,actual ); 

    }

    @isTest
    static void testWithdraw(){
             
        // Arrange -> Prepare your test data
        BankAccount b1 = new BankAccount('Sean',123456789,8000000); 
        
        // Act -> taking action by calling the method
        b1.withdraw(1000000) ; 

        // Assert -> is checking the expectation and reality(actual/existing data)
        //aae for the shortcut
        // withdraw 1 million we should expect balance to be 7 million
        //Assert is a class that coming from Salesforce
        //Assert.areEqual(1st condition , 2nda condition);-> check first two arguments are the same
        // b1.balance --> it's actual value->the current balance
        Assert.areEqual(7000000  , b1.balance   );
        
        //Assert.areEqual(expected,actual);
    }

    @isTest
    static void testSetUpAccount(){
                       
        // Arrange -> Prepare your test data
        BankAccount b1 = new BankAccount('Sean',123456789,8000000); 

        // Act -> taking action by calling the method 
        //updating the values
        b1.setupAccount('Test', 123456, 1000); 

        // Assert -> is checking the expectation and reality(actual/existing data)
        //  accountHolder is Test, accountNumber is 123456 , balance is 1000
              
        Assert.areEqual('Test' , b1.accountHolder   );
        Assert.areEqual(123456,  b1.accountNumber   );
        Assert.areEqual(1000,    b1.balance         );
         
    }


    @isTest
    static void testChangeName(){
                           
        // Arrange-> Prepare your test data
        BankAccount b1 = new BankAccount('Sean',123456789,8000000); 

        // Act -> taking action by calling the method
        b1.changeName('Leke') ; 

        // Assert -> is checking the expectation and reality(actual/existing data)
        Assert.areEqual('Leke',  b1.accountHolder  );
    }




}