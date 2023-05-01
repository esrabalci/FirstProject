/**

2. Write an Apex code that create 1 Random double between 0 to 100
   - print it out 
   - if the number is even -> print 'even number!!!' 
   - if it can be divided by 5 with no remainder -> print 'cool number'
   - if it can be divided by 7 with remainder 3  -> print 'cooler number' 


 */
//Random double between 0 to 100
 Double num= Math.random()*100;
 System.debug(num);

//convert double to Integer
//Integer intNumber = (Math.random()*100).intValue();
Integer intNumber = num.intValue();

//if the number is even -> print 'even number!!!' 
if(Math.mod(intNumber, 2)==0){
    System.debug('Even Number!!!'); 
}

if(Math.mod(intNumber, 5)==0){
    System.debug('Cool Number'); 
}

if(Math.mod(intNumber, 7)==3){
    System.debug('cooler number'); 
}