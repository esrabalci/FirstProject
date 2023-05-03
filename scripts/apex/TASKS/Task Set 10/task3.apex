/**
3. Create an empty List of Lead
   - use for loop to go through 10 iteration 
   - add lead with FirstName, LastName, Company fields filled up as below
     
   'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
   'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
   ....
   'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
   insert the list into your org
 */

 //Create an empty List of Lead
List<Lead> leadList = new List<Lead>(); 

 //use for loop to go through 10 iteration 
 for(Integer i=1; i<=10 ;i++) {

   Lead lead = new Lead(FirstName='Test Lead FN '+i , 
                        LastName='Test Lead LN '+i ,
                        Company='Company '+i);

    // add it to the list
    leadList.add(lead);
 }
System.debug(leadList); 

 //insert the list into your org