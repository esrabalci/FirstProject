/**

1. Write an Apex code that store two numbers in Integer variables 
   - Print out the bigger number 

 */


Integer num1 = 10;
Integer num2 =200;


//Integer biggerNum= (num1 > num2)?num1:num2;
//System.debug('The bigger number is: '+ biggerNum);


if(num1 > num2){

   System.debug(num1 + ' is the bigger number'); 
   
}else{
    System.debug(num2 + ' is bigger number');
}


/**
Integer biggerNum= (num1>num2)?num1:num2;
System.debug('The bigger number is: '+ biggerNum);
 */

System.debug('------------------------------------------------');

 /**
 
 2. Write an Apex code that store 3 numbers in Integer variables
   - Print out the smallest number 
 
  */

  Integer number1 = 20;
  Integer number2 = 30;
  integer number3 = 5;

  if( number1 < number2 && number1 < number3 ){
      
      System.debug(number1 + ' is the smallest number');

  }else if( number2 < number1 && number2 < number3 ){

            System.debug(number2 + ' is the smallest number');

  }else{

    System.debug(number3 + ' is the smallest number');
  }

  