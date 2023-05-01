/**
We created a custom Object Vehicle 
                         
        Name field make it auto number 
        In this format V-{000}
   Fields; 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency
          Contact as Lookup to Contact object

Now we need to access here inVSCode
Go to command pallatte and type 
SFDX: Refresh Object Definition
select All object 
now you have access to latest changes you made under Object manager 


 */

 //create a contact with LastName
 //insert into SF
 Contact con =new Contact(LastName='Snow');
 insert con;
 System.debug('con value is : ' + con); 


 //Create a vehicle with all the fields
Vehicle__c v1 = new Vehicle__c( Make__c  = 'Audi' , 
                                 Model__c = 'A8'  , 
                                 Year__c  = 2024  , 
                                 Price__c = 10000000 ) ;  

 //including ContactId field set to the Id from above contact
/**
In short, “c” signifies something custom in Salesforce while “r” signifies a relationship.

When you use “c”, you are telling Salesforce that you need the data that is stored in that particular custom field, whatever it may be.
When you instead use “r”, you are saying you want to access data inside the record that is linked.
 */
// __c --> ID ,   __r -> entire Contact
v1.Contact__c =con.Id;

 //insert this contact
 insert v1;
  System.debug('v1 value is : ' + v1); 




