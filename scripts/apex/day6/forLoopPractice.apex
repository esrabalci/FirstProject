/**
Count from 1 -10 using for loop
print the count multiplied by 5
output should look like that :

1 * 5 = 5
2 * 5 = 10
3 * 5 = 15
..........
10 * 5 = 50

 */


 /*
Integer count =1;
//print out to display below :
//1 * 5 = 5

System.debug( count + ' X 5 = '  + (count * 5)   );
*/



 for(Integer count=1 ; count<=10; count++){
    System.debug( count + ' X 5 = '  + (count * 5)   );
 }

System.debug('-----------------------------------------');

/** 

// first number you get from variable count
//second number you get from variable num
// result you get by multiplying 2 numbers
// eventually generate this output
// in below format
//1 X 5 = 5

Integer num =5;
Integer count =1;

System.debug( count +' X ' + num +' = '+ (count * num ) );

*/

/**

Continue from above code,
Above code works great if you just want to get the
multiplication table of 5, we want to be able to
provide any number not just 5 and generate
multiplication table of any numbers

 */

Integer num = 2 ;

for( Integer count = 1; count<= 10; count++){
   
    System.debug( count +' X ' + num +' = '+ (count * num ) );

}

System.debug('---------------------------------------------');

/**

Give a number , print out below :

luckyNumber + 1 = the result
luckyNumber + 2 = the result
luckyNumber + 3 = the result
..................
luckyNumber + 10 = the result

 */

 Integer luckyNumber = 7 ;

 for( Integer i = 1; i <=10 ; i++  ){
    System.debug(luckyNumber + ' + ' +i + ' = ' + ( luckyNumber + i ));
 }





