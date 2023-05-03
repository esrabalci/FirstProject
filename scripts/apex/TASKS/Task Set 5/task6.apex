/**
6. Write a program that create List of Integer with 10 items 
   get the count of the items more than 5 (try for loop and for each loop)
    and print out at the end 

 */
 List < Integer > items = new List < Integer > {10,4,5,6,1,100,3,8,9,7};

 Integer count=0;
 for(Integer i =0; i < items.size(); i++){
        
        if(items.get(i)>5){
           count++;
        }

 }
 System.debug('there is '+ count + ' items that are more than 5.');



 Integer calculate=0;
 for(Integer eachItems : items){

    if(eachItems>5){
      calculate++;
    }

 }
 System.debug('there is '+ calculate + ' items that are more than 5.');