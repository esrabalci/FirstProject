/***

4. Create a Lead with required Fields filled up 
   - insert it into your org 
   - Create a variable with Task sObject type and assign the value 
   - fill up the below fields for this task
      - WhoId with the Id of the lead created above 
      - Priority 'High'
      - ActivityDate  Date 7 days from now 

 */

 //Create a Lead with required Fields filled up 
Lead fields=new Lead(LastName='Mamac', Company='Fig & Lily Garden');

//insert it into your org 
//insert fields;

//Create a variable with Task sObject type and assign the value 
Task myTask = new Task ();

// fill up ;  WhoId with the Id of the lead created above

myTask.WhoId =fields.Id;

//fill up ; Priority 'High'
 myTask.Priority = 'High';

//fill up ; ActivityDate  Date 7 days from now 
myTask.ActivityDate =Date.today(7);

// insert this task into Salesforce 
 //insert myTask ; 