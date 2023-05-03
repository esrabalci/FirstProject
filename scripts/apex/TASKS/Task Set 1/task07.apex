/*
Task 7

Declare 3 Integer variavles and initialize their values. 
Write a code to print out the largest number by comparing them with each other. 

*/


/**

Logic :

If num1 is greater than num2 and num3 --> num1 largest
If num2 is greater than num1 and num3 --> num2 largest
If num3 is greater than num1 and num2 --> num3 largest
 */


Integer num1 = 10 , num2 = 20 , num3 = 30;

if(num1 > num2 && num1 > num3){
     System.debug('num1 =  '+ num1 + ' is the largest');
}else if(num2 > num1 && num2 > num3){
      System.debug('num2 =  '+ num2 + ' is the largest');
}else{
       System.debug('num3 =  '+ num3 + ' is the largest');
}
