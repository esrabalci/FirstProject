/**

7. Create an Array of 10 Doubles 
 - use Array syntax to loop through each item 
 - get the count of the number is between 10 and 20 or 40-50 
 - get the sum of the numbers greater than 30
 */

 Double[]numbers = new Double[10]; 
 numbers[0] = 5.25;
numbers[1] = 9.36;
numbers[2] = 11.65;
numbers[3] = 19.55;
numbers[4] = 25.36;
numbers[5] = 27.58;
numbers[6] = 33.69;
numbers[7] = 44.58;
numbers[8] = 49.99;
numbers[9] = 50.01;

Integer count=0;
Double sum =0;

for(Double each : numbers) {
    
    if(each >10 && each <20 || each >40 && each<50){
         count++;
    }

    if(each > 30){
        sum+=each;
    }
}

System.debug('count of the number is between 10 and 20 or 40-50 : ' + count ); 
System.debug('he sum of the numbers greater than 30 : ' + sum); 
    