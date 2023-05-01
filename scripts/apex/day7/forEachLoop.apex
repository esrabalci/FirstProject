/**

For each loop is specifically used to
Iterate over (loop through) each and every item 
inside Collection like (List , Set )


for ( DataType each item    :yourCollectionVariable){
      //do what you want to do with each item
}

 */

List <Integer > numberList = new List <Integer > {5,7,9,4,6};

  // print out the size of this list 
System.debug('Item count: '  + numberList.size()   ); 

 for(  Integer eachNumber  : numberList  ){
 
         system.debug(eachNumber);
         
 }
     // system.debug('Each number: ' + numberList );

 System.debug('-------------------------------------------');

 // create a List of String and add 4 items
 // use for each loop  iterate over them print it out

 List < String > roles   = new List < String > {'student','mentor support',
                'type-master','screenshot-master', 'clock-master' };
  for(String eachRoles  : roles){
     
     system.debug('Each Role to Class : ' +eachRoles);

  }
  
  System.debug('-------------------------------------------');


  // create a List of Decimal and add 4 items
 // use for each loop  iterate over them print it out


 List < Decimal > price = new List < Decimal >{100.5, 25.7, 30.9, 90.9, 22.2};


 for( Decimal eachPrices : price){
     
   
                  
       System.debug('Price is : '+ eachPrices);
                    
 }


// optionally create a variable outside of your loop called sum,
// then use your for each loop to get the sum of all decimal numbers

Decimal sum = 0 ; 

 for(Decimal eachPrices  : price){
    //sum = sum + eachPrice ; 
    sum += eachPrices ; 
 }

 System.debug('Sum is ' + sum); 


