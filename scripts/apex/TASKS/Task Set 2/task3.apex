/**
Write an Apex that store 2 Booleans value into isBaby1Laughing, isBaby2Laughing
   - if both value true print out 'both laughing'
   - if only isBaby1Laughing then print out 'only first baby laughing'
   - if only isBaby2Laughing then print out 'only second baby laughing'
   - else print 'no babies are laughing'

-----> in the same file, continue to write code to implement below logic : 
       - Print 'both in same mood'  if Both Babies are laughing or Both Babies are not laughing
      - otherwise print 'Not in a same mood' 

 */


 Boolean isBaby1Laughing = true;
 Boolean isBaby2Laughing = true;

//exclusive to boolean variables only in conditional statement
//you do not have to use ==true to check for equality
// you can simply use the variable name itself and it will do the same

 if( isBaby1Laughing && isBaby2Laughing  ){
    System.debug('both of them laughing');

 }else if( isBaby1Laughing == true  ){
     System.debug('only first baby laughing');

 }else if( isBaby2Laughing == true  ){
     System.debug('only second baby laughing');

 }else{
     System.debug('no babies are laughing');
 }

/**
in the same file, continue to write code to implement below logic : 
       - Print 'both in same mood'  if Both Babies are laughing or Both Babies are not laughing
      - otherwise print 'Not in a same mood' 
 */


if( isBaby1Laughing == isBaby2Laughing ){
       System.debug('both in same mood');
}else{
     System.debug('Not in a same mood');
}






