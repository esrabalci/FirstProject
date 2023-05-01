//Alias for aggregate columns
/*
SELECT COUNT(ID) MyOppsCount, SUM(Amount) TotalAmount,  
 MAX(Amount) HighestAmount,  MIN(Amount) LowestAmount, AVG(Amount) AverageAmount
     FROM Opportunity
*/

// --------Aggregate Result ----------------

//SELECT COUNT(ID) FROM Account

AggregateResult result = [SELECT COUNT(ID), MAX(AnnualRevenue) FROM Account];
System.debug('result value is : ' + result); //{expr0=61} --> default name-->expr0
// Max(AnnualRevenue) --> expr1=5600000000

// get the count value out of AggregateResult--> get() method
//we have get method that accept the column name name and return the value
System.debug('Count of Account is '+ result.get('expr0')); // 61
System.debug('Count of Account is '+ result.get('expr1')); //5600000000

System.debug('------------------');

//SELECT COUNT() of Opportunity and MIN() Opps amount for all opportunities
//store the result into a variable and print it out
//give alias to your aggregate function as CountOfOpps, LowestAmount

AggregateResult oppResult = [SELECT COUNT(Id) CountOfOpps, MIN(Amount)LowestAmount
                            FROM OPPORTUNITY];
System.debug('oppResult.get() value is : ' + oppResult.get('CountOfOpps'));
System.debug('oppResult.get() value is : ' + oppResult.get('LowestAmount'));

System.debug('------------------');


//if the SOQL Query return single row, we can store into 1 AggregateResult variable
//When we have multiple row, as a result of GROUP BY 
// Then we will get one AggregateResult for every row
//and we can store it in  a List or Array
//List<AggregateResult> or just AggregateResult[]

//List<AggregateResult> allResult =[];

AggregateResult[] allResult =[SELECT StageName ,COUNT(Id) CountOfOpps
FROM OPPORTUNITY
GROUP BY StageName];

for(AggregateResult each : allResult) {
   // System.debug('Current value : ' + each);
   //print StageName-->CountOfOpps
    System.debug(each.get('StageName')  +' ---> ' +each.get('CountOfOpps'));
}

System.debug('------------------');

// TASK :  Store the result of below query and print each item out 
/**
 SELECT isClosed, COUNT(Id)
FROM Opportunity
 GROUP BY IsClosed
 */

AggregateResult[] caseResult=[SELECT isClosed, COUNT(Id) FROM Opportunity
 GROUP BY IsClosed];


for(AggregateResult each : caseResult) {
  
       System.debug(each.get('isClosed')+ '-->'  + each.get('expr0'));
}

System.debug('------------------');

