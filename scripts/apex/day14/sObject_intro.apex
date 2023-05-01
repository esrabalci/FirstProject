/**

sObject , Salesforce Object Type as Data Type
is the type that represent Salesforce records.

every type you see under object manager 
of setting in your organization that call sObject

 */

 //Creating variable with Account SObject type
 // and assign value
 //dataType variableName = new dataType
    Account a1 = new Account();
    a1.Name ='Cydeo';
    a1.AnnualRevenue=1000000.85;
    a1.BillingCity = 'Vienna';
    a1.BillingState= 'VA';
    a1.Rating ='Hot';

System.debug(a1); 
//Account:{Name=Cydeo, AnnualRevenue=1000000.85, BillingCity=Vienna, BillingState=VA, Rating=Hot}

//how do we read the value of those field
//print out Name and BillingState field value
System.debug('a1.Name  : ' + a1.Name); 
System.debug('a1.BillingState : ' + a1.BillingState); 
        
//change the value of AnnualRevenue to 1000000000.00
a1.AnnualRevenue=1000000000.00;
System.debug('New value of AnnualRevenue: '+a1.AnnualRevenue); 


//here is the shortcut of creating sObject instance with field value

//create 3 account with these name = Apple , Google , Microsoft
Account a2 = new Account(Name='Apple'); //Account:{Name=Apple}
System.debug(a2); 

//create google account with name and AnnualRevenue filled up
Account a3 = new Account(Name='Google' ,AnnualRevenue=234345695);
System.debug(a3);//Account:{Name=Google, AnnualRevenue=234345695}

//
Account a4 = new Account(Name='Microsoft');
System.debug(a4);//Account:{Name=Microsoft}

// insert a1;
// insert a2;
// insert a3;
// insert a4;