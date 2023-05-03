//9. Create an Boolean Array with 10 elements and count the the number of true value
Boolean[] booleanArray = new Boolean[10];
booleanArray[0] = true;
booleanArray[1] = true;
booleanArray[2] = false;
booleanArray[3] = true;
booleanArray[4] = true;
booleanArray[5] = false;
booleanArray[6] = true;
booleanArray[7] = true;
booleanArray[8] = true;
booleanArray[9] = false;

Integer count = 0;
for (Boolean each : booleanArray) {
  if (each == true) {
    count++;
  }
}
System.debug('the number of true values: ' + count);