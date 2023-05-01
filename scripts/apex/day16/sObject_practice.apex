// sObject type practice


// create a variable of sObject Case
// and assign the value
// assign couple common fields value
// Subject, Description, Status


//create a variable and create an instant of the type
//means using new keyword to create a instance of the type
// case is type and you want to create one thing out of that type
//thats known as instance.

Case c1 = new Case(); 
c1.Subject     = 'Apex is not working' ; 
c1.Description = 'Not enough coffee,apex does not work';
c1.Status      = 'New'; 

System.debug('c1 value is : ' + c1); 

/**
 -> We have a picklist , we have multi selected picklist,
 Whats the result of users selection whatever that users on that?
 it's TEXT ~ String ! picklist you will get always a Text(String).
-> Number field -> you'll get decimal 
-> Date field -> you'll get a date
 */

//access to ID use  variableName.Id 
//Each and every record or Salesforce object type has always a ID FIELD
// we are gonna get NULL because we didn't assign the ID value
System.debug(c1.Id) ;  //null



// use DML (Data Manipulation Language) statement insert to add the record to Salesforce
 //insert c1 ;  
 // we're gonna get some id value because 
 //id generated every time record if it insert it
 //System.debug(c1.Id) ;  //5008W000012XP7DQAW

 // create another case variable and assign its value and Subject value in one shot
 //in one shot use ()  ,  ( Field Name = 'value' ); --> this is for empty list
Case c2 = new Case(Subject='In one shot Case Subject');
System.debug('c2 value is : ' + c2); 

// create another case variable and assign its value and Subject,Priority values in one shot 
Case c3 = new Case(Subject='apex subject', Priority='High');
System.debug('c3 value is : ' + c3); 

// create a List of Case and add above 3 cases
//in order to item in the list you have to use {}
List<Case> caseList = new List<Case>{c1,c2,c3};

// add one more item to the list with subject of Apex Subject2
// Case cBla = new Case(Subject='Apex Subject2');
 // if you have list of case , you need to  provide to more item, you need to provide more case
 //created a variable that represent a case.I want to add this to my list
 //that already has 3 items in it(c1,c2,c3)
 //to add item to the list use .add() method
// caseList.add(cBla);

//  IN ONE SHOT AS BELOW
// add() method expect one item but one item what?
// you're gonna provide a case
// to create one case-> can create variable or you can do one shot
caseList.add(new Case(Subject='Apex Subject2'));

   System.debug('--------Before Inserting List----------');
// insert this list of Case into Salesforce using insert
 System.debug(caseList) ; 
insert caseList;


System.debug('--------After Inserting List----------');
System.debug(caseList); //You'll see ID ~ 
 //will see ID for all of them. because you inserted the record as salesforce record. 
 //so all of them will auto generated ID. you'll never provide ID because
 // the record did not exist in your SF before !Every time you hit insert , it generated record ID 
 //when record is not inserted,it does Not have ID
 //When record is inserted , ID is out to auto-generated.


