/**
7. Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 numbers that are more than 5

 */

  List < Integer > items = new List < Integer > {10,4,5,6,1,100,3,8,9,7};

Integer count=0;
for(Integer eachItems : items){
     
      if(eachItems>5){
          count++;
      }

      if(count == 2){
        break;
      }
}
system.debug('count value is '+ count);

