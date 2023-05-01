/**

Declare and initialize variables as below 
annualRevenue as Long 
numberOfEmployees as Integer

checks if an Account's Annual Revenue is greater than $1,000,000 or
 if its Number of Employees is greater than 500. 
 If either of these conditions are met, display a message that says "High Potential Account".
else display "Not a High Potential Account"

 */

 Long annualRevenue= 100000 ;
 Integer numberOfEmployees = 300 ;

 if(annualRevenue > 1000000 || numberOfEmployees >500){

           system.debug('High Potential Account');

 }else{
           system.debug('Not a High Potential Account');

 }

