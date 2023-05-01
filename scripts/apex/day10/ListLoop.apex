/**

Create a list of 10 Decimal numbers
in 2 separate loops

in first loop ~ for loop because of index will be using
iterate over the list (go through each and every item inside of loop)
and print out the each items
skip item number 3 and 7 while printing

in second loop ~ for each loop and if/else statement
iterate over the list (go through each and every item inside of loop)
and print out the each items
break out of the loop if the number is more than 100


print out the last item value without hard coding
 */

 List<Decimal> numbers= new List<Decimal>{
                    20.3,7.5,105.7,120.6,2.2,
                    77.8,33.5,19.9,4.1,9.0};

//print out the last item value without hard coding
//basically print last index value
Integer lastItem =numbers.size()-1;
System.debug('index Of Last Item: ' + lastItem);


System.debug('---------------------------------------');

// then print out the last item value using get method 
System.debug('last Item Value: ' + numbers.get(lastItem));

System.debug('---------------------------------------');


//in first loop
  for(Integer index = 0; index < numbers.size(); index++){

     //   item 3   ||  item 7 
    if (index == 2 || index == 6){
        continue; // then skip it
    }
    System.debug ('Index ' + index + ' is '+ numbers.get(index));
  }

System.debug('---------------------------------------');
System.debug('                                       ');

//in second step
for( Decimal eachNumber : numbers){
     if(eachNumber > 100){
        break;
     }
     System.debug('Each items: '+ eachNumber);
}

System.debug('---------------------------------------');
System.debug('                                       ');


//in second step For loop version:
 for(Integer count=0; count<numbers.size(); count++){
    
         if( numbers.get(count) > 100 ){
            break;
         }
    System.debug(numbers.get(count));
 }
    