/**


10. Write an Apex code that create List of 10 Integer values as scoreList
    - get the count of numbers less than 0 or greater than 100
    - in separate loop, update the value of items as below
      - if the Integer less than 0 update it to 0 
      - if the Integer more than 100 update it to 100
    - HINT : Array syntax is much simpler when it comes to update

 */
List<Integer> numberList = new List<Integer>{71,249,-13,13,178,59,54,158,76,-33};

Integer count = 0 ;
for(Integer each : numberList) {
    if( each < 0 || each > 100 ){
        count++ ; 
    }
}
System.debug('Count of the numbers less than 0 or greater than 100 : ' + count);   

Integer index = 0 ;
for(Integer each : numberList) {
   if( each < 0 ){
    numberList.set(index, 0);
    index++;
   }else if( each > 100){
    numberList.set(index, 100);
    index++ ;
   }else {
    index++ ;
   }
}
System.debug('Updated value of the scores list : ' + numberList);