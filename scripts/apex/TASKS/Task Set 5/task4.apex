/**

4. Write a program that store List of Double with 10 items 
   break out of the loop if any number is between 50.5 and 99.99 


 */

 List <Double> numbers = new List<Double>{ 11.22,
  22.33,
  66.32,
  41.23,
  32.28,
  36.57,
  56.14,
  58.24,
  11.36,
  26.54};

  for(Double eachNumbers : numbers){
   system.debug(eachNumbers);
      if(eachNumbers>50.5 && eachNumbers < 99.99){
                  break;
      }

  }