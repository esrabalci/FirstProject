/**

3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , 
   add more items into the list and run your program again to see if it works. 

 */

 //task3
 List <Decimal> numbers =new List <Decimal> {1.29,2.9,5.7,6.7,4.3,7.8,3.3,6.9,8.8,2.2,4.5};

 System.debug('the size of the list: ' +numbers.size() );

 Decimal sum=0;
 Decimal average = 0;
 for(Decimal eachNum : numbers){
          sum+=eachNum;
          average =sum/11;
 }
   System.debug('sum of all numbers: '+ sum);
   System.debug('the average of all numbers : '+ average);
   