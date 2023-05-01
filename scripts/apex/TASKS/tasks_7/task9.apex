/**

9. Write an Apex code that create Set of 10 Integer
   - create a variable called average 
   - calculate the average  sum/item count and print it out
   - Create empty List of Integer
   - store only items above average in above Set
   - removeAll items that below average from the Set 

 */

 Set<Integer> numberSet = new Set<Integer>{
  87,
  99,
  65,
  12,
  49,
  45,
  59,
  78,
  32,
  52
};

Integer count = 0;
Integer sum = 0;
Integer average = 0;

for (Integer each : numberSet) {
  sum += each;
}

count = numberSet.size();
average = sum / count;

System.debug('the count of the numbers is ' + count);
System.debug('the sum of the numbers is ' + sum);
System.debug('the average of the numbers is ' + average);