/**

2. Write a program that store List of long with 10 items with positive and 
negative numbers and print out all positive values using for loop try using the continue instead.

 */

 List<Long> measure = new List<Long>{
  852996,
  365814,
  -458712,
  965123,
  -963478,
  2547963,
  -7896345,
  -511263,
  7899541,
  3698525L
};
for (Integer index = 0; index < measure.size(); index++) {
  if (measure.get(index) < 0) {
    continue;
  }
  system.debug('Positive number is ' + measure.get(index));
}

/*
for(eachMeasure : measure){
    if(eachMeasure  < 0){
        continue;
    }
    System.debug(achMeasure)
}
*/