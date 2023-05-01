/**


for( Initialization ; loop condition ; increment | decrement   ){
    //repeating stuff here
}

initialization : this is where variable is declared and initial value
 is given, IT WILL ONLY RUN ONCE WHEN THE LOOP START

 loop condition : this is where we put condition for the loop,
 as long as it's true the loop continue.

 increment | decrement : this is where we increment or decrement the value
 so we can change the condition and eventually get out of the loop,
 IMPORTANTLY , It run after each ITERATION!!!



for( Integer count=1 ; count <10 ; count ++   ){
    //repeating stuff here

}
 */



/** 
 Integer count = 1;
 while(count < 10 ){
    System.debug(count);
    count++;
 }

 */

//COUNTING 1 -10 USING FOR LOOP
for( Integer count = 1; count <10 ; count++ ){
    System.debug(count);
}

System.debug('---------------------------------------');


//skip counting by 2 from 0 - 20 using for loop
// 0 2 4 6 8 ....20 

for( Integer level = 0; level <= 20 ; level+=2  ){
    system.debug(level);
}


System.debug('-------------------------------------------');

/**

Count from 10 -1 using for loop 

  
 */

 for(Integer count =10; count > 0 ; count--){

    System.debug(count);

 }
 
System.debug('-------------------------------------------');


 //Count down from 100 - 0 decreasing number by 10 each time

 for(Integer count = 100; count >=0 ; count-=10){

    system.debug(count);

 }

