/**

1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)


 */


 //task 1
 Integer sum = 0;
 for(Integer oddNum = 1; oddNum<=100 ; oddNum+=2){
          sum += oddNum;
 }
      System.debug(sum);

//while loop
 Integer odd=1 , sumNum=0;
 while(odd <=100){
      sumNum+=odd;
      odd+=2;
 }
     system.debug(sumNum);
//while loop
Integer sumNumber=0, oddNumbers=1;
do{
   sumNumber+=oddNumbers;
   oddNumbers+=2;  

}while(oddNumbers <= 100);
    System.debug(sumNumber);
    

