/**

10. Create a Array of 10 Integers 
  - print 'ideal numbers' if it contains both 10 and 5 
  - print 'Good numbers' if it contains 10 
  - print 'Ok numbers' if it contains 5
  - print 'Not so Good numbers' if it does not contain 10 and 5
   */

   Integer[] arrayOfIntegers = new Integer[10];
arrayOfIntegers[0] = 3;
arrayOfIntegers[1] = 6;
arrayOfIntegers[2] = 9;
arrayOfIntegers[3] = 12;
arrayOfIntegers[4] = 10;
arrayOfIntegers[5] = 78;
arrayOfIntegers[6] = 3;
arrayOfIntegers[7] = 44;
arrayOfIntegers[8] = 23;
arrayOfIntegers[9] = 5;

if (arrayOfIntegers.contains(5) && arrayOfIntegers.contains(10)) {
  System.debug('Ideal Numbers');
} else if (arrayOfIntegers.contains(10)) {
  System.debug('Good numbers');
} else if (arrayOfIntegers.contains(5)) {
  System.debug('OK numbers');
} else {
  System.debug('Not so good numbers');
}