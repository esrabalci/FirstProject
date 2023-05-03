/**

3. Write a program that store List of Integer with 10 items and try to 
get the sum of values,  break out of the loop if the sum is greater than 100. 

 */

 List < Integer > items = new List < Integer > {10,4,5,6,1,100,3,8,9,7};

Integer sum =0; 

 for(Integer eachItems : items){
    sum+=eachItems;
     if(sum >100){
        break;
     }
 }
 System.debug('sum value is : ' + sum); 
  
 /*

  List<Integer> numberList = new List<Integer>{37,26,77,45,58,11,22,33,4,5,7};
 
 Integer sum = 0 ;
 
 for(Integer each : numberList) {
    System.debug('Current value : ' + each);
    sum +=  each ; 
    if( sum > 100 ){
        break; 
    }
 }
 
 System.debug('sum value is : ' + sum); 
 */