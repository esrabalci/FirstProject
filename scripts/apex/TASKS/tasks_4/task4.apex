/**

4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 

 */

 //task4
 List < Long >numbers=new List  < Long > {
                                    24256657457L,
                                    -13562443340L,
                                    865768865453L,
                                    655674314243L,
                                    884315444432L,
                                    -19998879965L,
                                    -56423267685L,
                                    332348765953L,
                                    999276482903L};
  
  Long sumPositiveNumber = 0;
  for(Long eachNum : numbers){
    if(eachNum > 0){
        sumPositiveNumber+=eachNum;
    }
  }

  Long countPositive = 0;
  Long countNegative = 0;

  for(Long eachNum : numbers){
     if(eachNum > 0){
        countPositive++;
     }
  }

  for(Long eachNum : numbers){
     if(eachNum < 0){
        countNegative++;
     }
  }

  System.debug('sum of positive numbers: ' + sumPositiveNumber);
  System.debug('count of positive numbers: ' + countPositive);
  System.debug('count of negative numbers ' + countNegative);