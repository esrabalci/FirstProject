/**

Given  2 Integer values : 
Integer num1 = 10 ; 
Integer num2 = 20 ;

Swap the value of num1 , num2 
so num1 become 20 and num2 become 10.

 */
 Integer number1 = 10 ; 
Integer number2 = 20 ;
number1 = number1+number2;//num1=30
number2 = number1-number2; //num2=10
number1 = number1-number2; 
System.debug('num1 value is : ' + number1); 
System.debug('num1 value is : ' + number2); 

System.debug('-----------------------------');


Integer num1 = 10;
Integer num2 = 20;
Integer num1Temp = num1;
num1 = num2;
num2 = num1Temp;
System.debug('num1 value is : ' + num1); 
System.debug('num2 value is : ' + num2); 