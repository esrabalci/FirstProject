/**

1. Write an Apex code that 
   - create a variable to store 1 Random double 
   between 0 to 100 Math.random()*100
   - print it out 
   - print 'pass' if the number is greater than 65
   - print 'A+' if the number is between 95-100
   - run multiple time to observer the result

 */

//  - create a variable to store 1 Random double between 0 to 100 Math.random()*100
//  - print it out 

//Double variable between 0 to 100 Math.random()*100
Double num= Math.random()*100;
System.debug(num); 

//print 'pass' if the number is greater than 65
if(num>65){
  System.debug('Pass'); 
}
//print 'A+' if the number is between 95-100
if(num>95 && num<100){
  System.debug('A+'); 
}