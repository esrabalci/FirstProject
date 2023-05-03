/**
4. Write an Apex code that create 2 Random Integer variables 
   - use Math.random()*100 to assign random values to both of them
     - (make sure to convert the double value to Integer)
   - print both variable values 
   - print the larger number value

 */

//random number is double number so we need to convert them
Integer var1 = (Math.random()*100).intValue();
Integer var2 = (Math.random()*100).intValue();

System.debug('First Integer Variable is : ' + var1);
System.debug('Second Integer Variable is : ' + var2);

System.debug('Largest number is ' + Math.max(var1, var2)); 

