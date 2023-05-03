/**

6. use for loop to count from 20 to 60 increasing by 2 each time. 
Print out  20, 22, 24.....40 yay we finished half 
42 44 46....60 (Print out 'Yay we have finished half' 
        when the count is exactly 40 as above)
 */



//Task 6

for(Integer count=20 ; count<=60 ; count+=2 ){
    System.debug(count) ; 
    if(count==40){
        System.debug('Yay we have finished half');
    }
}


/**
 for( Integer count =20 ; count <= 60 ; count +=2){
        System.debug(count) ;  
        
       if ( count <= 40 ){
          System.debug(count + ' yay we finished half ');
       }else if( count >= 42  ){
           System.debug(count + ' yay we have finished half ');
       }else {
               System.debug(count);

       }  
 }

 */
