/**

Create a Loop that print as below to generate sample first name last name 
TestFirst1  ,  TestLast1
TestFirst2  ,  TestLast2
TestFirst3  ,  TestLast3
TestFirst4  ,  TestLast4
 */
 

 //task8
 Integer testLast = 1;
 for( Integer testFirst = testLast ;  testFirst <=4 ; testFirst++){

    System.debug('TestFirst' + testFirst + ' , '+ ' TestLast' + testLast++);
 }