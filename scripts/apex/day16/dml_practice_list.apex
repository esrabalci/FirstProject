/**
 DML Practice

Create List of Account 
add 5 items with below Name 
Apex Acc 1 
Apex Acc 2 
Apex Acc 3 
Apex Acc 4 
Apex Acc 5 

insert this List 

update the annual revenue field with
 random number between 0, 10000

 Let this update reflect in salesforce
 update using the list in one shot

 optionally delete them all

 */

 List<Account> accList = new List<Account>();
 
//  for(Integer i=1; i<=5 ;i++)    {
//     // Apex Acc--> i
//     // create account instance
//     Account a = new Account();
//     a.Name = 'Apex Acc ' + i ;
//     // add that to the List
//     accList.add(a);
//  }
//  System.debug('accList value is : ' + accList); 
//(Account:{Name=Apex Acc 1}, Account:{Name=Apex Acc 2}, Account:{Name=Apex Acc 3}, Account:{Name=Apex Acc 4})


          //--------in one shot-------------
 for(Integer i=1; i<=5 ;i++)    {
    //add that to the list      i-->represent the numbers 
    accList.add(new Account(Name = 'Apex Acc ' + i));

 }
 System.debug('accList value is : ' + accList); 


 //insert this List 

System.debug('accList value BEFORE is : ' + accList); 
 insert accList ; 
 System.debug('accList value AFTER is : ' + accList); 



// 1. update the annual revenue field with 100000
// 2. update the annual revenue field with random number 0--100000 and round it up

//to update annual revenue , we're dealing with 5 record in the list
//thats why we need to use each loop
//we're going to through each and every item in the list
// simply updating all of them into 1000,000 
for(Account each : accList) {
        // each.AnnualRevenue = 100000 ; 
       
     each.AnnualRevenue = Math.round(Math.random()*100000 ); 

}
System.debug('accList value after update is : ' + accList); 


// update it in Salesforce org using update dml statement 
 update accList ; 


// Create a new empty List of Account called vipAccounts 
// loop through each item in your accList  
//      if the annual revenue is greater than 50000
//      update Description field to IMPORTANT ACCOUNT 
//      add this account to vipAccounts List 



// Create a new empty List of Account called vipAccounts 
  List<Account> vipAccountList = new List<Account>() ; 

// loop through each item in your accList  
for(Account each : accList) {
    //  if the annual revenue is greater than 50000
    if( each.AnnualRevenue > 50000 ){

    //   update Description field to IMPORTANT ACCOUNT 
        each.Description = 'IMPORTANT ACCOUNT' ;
    //   add this account to vipAccounts List 
        vipAccountList.add( each ); 
    }
}
System.debug('------------------');
  System.debug('vipAccountList value is : ' + vipAccountList); 

// eventually update vipAccounts to reflect this change 
   update vipAccountList ; 

// delete them all 
delete accList ; 

//restore them all
undelete accList;