// Get 1 Account Record (Name, AnnualRevenue, Rating)
//SELECT Name,AnnualRevenue, Rating FROM Account LIMIT 1

//and store it into Account variable 

//Apex and SOQL work seamlessly together
//We can use SOQL to get data and store it into
//sObject type or  list of sObject type
//[YOUR SOQL GOES HERE]

//this will throw an error since we are tru=ing to store many Account
//into a variable that hold single account
//System.QueryException: List has more than 1 row for assignment to SObject
 //AnonymousBlock: line 14, column 1
 //Account a = [Select Name from Account];
 //System.debug('a value is : ' + a);


System.debug('------------BIND   VARIABLE--> Variable inside the Query---------------------------');

// SOQL Query inside [] is not a String
// If we want to use a variable, we must add : in front of the variable -> :str
// This is called bind variable: simply a variable inside SOQL

 String str ='Green' ;

 // get all the Contact FirstName, LastName
 //if the lastName field value is whatever variable str has

 //[SELECT FirstName, LastName FROM Contact WHERE LastName ='Green']

List<Contact> contactList = [SELECT FirstName, LastName FROM Contact WHERE LastName = :str];

System.debug('contactList value is : ' + contactList);

System.debug('------------------');

//Get 2 String variables for caseStatus and casePriority
// Get all the Cases with Status of caseStatus and Priority of casePriority
// Store the result in List of Case

//[SELECT Subject, Status,Priority FROM Case WHERE Status= 'Closed' AND Priority ='High']


String caseStatus = 'Closed' , casePriority ='High';

List<Case> caseList = [SELECT Subject, Status,Priority FROM Case 
             WHERE Status= :caseStatus AND Priority = :casePriority];


//Print out Subject, Status, Priority for each case

for(Case eachCase : caseList) {
    
    System.debug(eachCase.Subject+ ' - ' + eachCase.Status +' - ' + eachCase.Priority);
}
    

