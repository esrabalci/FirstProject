/**
find larger number
 */

Integer num1=10, num2=20;
Integer largerNum;

if( num1>num2 ){
    largerNum=num1;
}else{
    largerNum=num2;
}
System.debug('largerNum value is : ' + largerNum); 


//ternary statement

largerNum=(num1>num2)?num1 :num2;
System.debug('Larger number value is : ' + largerNum); 


//math.max() method
Integer resultLarger = Math.max(num1, num2);
System.debug('math.max() method to find Larger number is : ' + resultLarger); 

System.debug('------------------');

Double d1=15.7d;
System.debug('d1 value is : ' + d1); 
//convert this double to Integer
Integer score1 = d1.intValue();
System.debug('score1 value is : ' + score1); 

System.debug('------------------');

//round () method

Integer score2= Math.round(d1);
System.debug('score2 value is : ' + score2); 

System.debug('------------------');

// Math.random() ==> it doesn't include 100
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.
Double randomDBL = Math.random() *100;
System.debug('randomDbl value is : ' + randomDbl);

System.debug('------------------');


//convert to dataType but including 100 
// Math.round(your value here) return rounded up Integer
//When you use round method, you need to assign it to a Integer variable. 

Integer randomInt = Math.round(randomDBL);
System.debug('randomInt value is : ' + randomInt); 

System.debug('------------------');

System.debug('Math.round(5.4) value is : ' + Math.round(5.4)); //5
System.debug('Math.round(5.7) value is : ' + Math.round(5.7));  //6
System.debug('Math.round(5.99) value is : ' + Math.round(5.99)); //6
System.debug('Math.round(0.99) value is : ' + Math.round(0.99)); //1

System.debug('------------------');

//do in one shot
//Double randomDBL = Math.random() *100;
// Integer randomNumber =Math.round( Math.random() *100 ) ;
// System.debug('randomNumber convert to round method in one shot : ' + randomNumber); 

// print out 50 random numbers
for(Integer i=1; i<50 ;i++) {
    Integer randomNumber =Math.round( Math.random() *100 ) ;
    System.debug('randomNumber convert to round method in one shot : ' + randomNumber); 
}

