/**
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod

 
  Math class is a class coming from Apex itself
  It has lof of pre-written code about math that we can just use directly

  Mod operator in math allow you to get the remainder of division

  10 / 3 = 3   1 remain
 
 
 */

Integer num1 = 10 ;
Integer num2 = 3 ;

Integer result =  num1 / num2 ; 
System.debug('result value is : ' + result); 

//Math.mod(num1, num2 ) --> Remainder of the division
Integer remainder = Math.mod(num1, num2) ;
System.debug('remainder value is : ' + remainder); 


System.debug('------------------');


/**
Odd or Even in Math

Odd number is a number that will have remainder of 1 when divided by 2
Even number is a number that will have remainder of 0 when divided by 2

 */

 Integer score = 48 ;
 //store the result of checking the number is even or odd into a Boolean variable
 Boolean isEven = Math.mod(score, 2)==0;
 System.debug('isEven value is : ' + isEven); 

 
 // print odd number if num3 is odd, and print even number if its even

if( isEven ){
    System.debug('isEven number '); 
    
}else{
    System.debug('isOdd number ' ); 
}

// what if we do not want to create a variable to store the result of even or odd
if( Math.mod(score, 2)==0 ){
     System.debug('isEven number '); 
}else{
      System.debug('isOdd number ' ); 
}

System.debug('------------------');

//Math.max(number1 , number2) --> return the bigger number 
System.debug('which number is bigger : ' + Math.max(11, 99)  ); 


//Math.min(number1 , number2) --> return the smaller number 
System.debug('which number is smaller : ' + Math.min(1, 300)  ); 

// Math.random() --> generate random value from 0.00 ~ 1
System.debug('Math.random() value is : ' + Math.random()); 

//if you want to generate some number between certain range then it's useful
Double randomDouble =Math.random();
System.debug('randomDouble value is : ' + randomDouble * 100); 

System.debug('------------------');

//https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_double.htm#apex_System_Double_intValue
//change double data type to integer data type call casting 
//casting is basically turn into data type to different data type
Double price = 15.5;
Integer priceWholeNumber = price.intValue();
System.debug('priceWholeNumber value is : ' + priceWholeNumber); 

System.debug('------------------');

// to get double random to  integer random
//to get Integer random number between 1 to 100
Double randomDouble2 =Math.random()*100 ;
Integer randomInteger = randomDouble2.intValue();
System.debug('to get random Integer  : ' + randomInteger); 

