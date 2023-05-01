/**

5. Write an Apex code that 
   - print 10 random Integer values between 1-1000 in 10 lines (loop)

 */

 for(Integer i = 0; i<10;i++){
    //don't forget the use parenthesis --> (Math.random()*1000)
    System.debug((Math.random()*1000).intValue());
}


// for(Integer i=0; i<10 ;i++) { //i - index
//   Double num1 = math.random()*1000; //it'll create new value every time when the loop
//   System.debug('Ten random Integers: ' + num1.intValue() ); 
// } 