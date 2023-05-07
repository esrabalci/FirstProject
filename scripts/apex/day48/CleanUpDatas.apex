//Cleanup the 500 Opportunities we created 
delete [Select Id from Opportunity Where Name like 'Batch Opp%'] ; 

//Cleanup the 1000 Leads we created 
delete [Select Id from Lead Where Name like 'JON SNOW%'] ; 