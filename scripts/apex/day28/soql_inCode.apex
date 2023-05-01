// Get 1 Account Record (Name, AnnualRevenue, Rating)
//SELECT Name,AnnualRevenue, Rating FROM Account LIMIT 1

//and store it into Account variable 

//Apex and SOQL work seamlessly together
//We can use SOQL to get data and store it into
//sObject type or  list of sObject type
//[YOUR SOQL GOES HERE]

//store it into Account variable 
Account a1 = [SELECT Name,AnnualRevenue, Rating, Phone 
                  FROM Account LIMIT 1];
System.debug('a1 value is : ' + a1);

System.debug('a1.AnnualRevenue value is : ' + a1.AnnualRevenue);

System.debug('a1.Phone value is : ' + a1.Phone);

System.debug('-------------------------------------');



//Get All account record with Rating field not null
//include, Id,Name, Rating , AnnualRevenue
//Store it into List<Account>

List<Account> accList = [SELECT Id, Name, Rating , AnnualRevenue 
                         FROM Account 
                         WHERE Rating != NULL];

//print out the size of the list
System.debug('accList.size() value is : ' + accList.size());


//print out the Name, Rating in the Loop

for(Account each : accList) {
    System.debug('Name value : ' + each.Name +' Rating value : ' +each.Rating);
}


System.debug('------------------');

//get the all the Lead Name and Status if the Status 'Working - Contacted' 
//Store it into the List 
//and Loop through each item
//print the name and Status

// [SELECT Name, Status FROM LEAD WHERE Status = 'Working - Contacted' ]

//get the all the Lead Name and Status if the Status 'Working - Contacted' Store it into the List 
List<Lead> leadLst =[SELECT Name, Status FROM LEAD WHERE Status = 'Working - Contacted' ];

//Loop through each item
for(Lead each : leadLst) {
   
    //print the name and Status
    System.debug(each.Name + ' --> ' + each.Status  );
   
}
 
 