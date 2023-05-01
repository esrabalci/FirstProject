/**

Inspired by above code, 
   - Write an Apex code that 
     - store 10 random Integer values between 1-100 into a List of Integer
   - print out the value 
   - get the sum of the numbers 
   - get the average of the numbers */

 

 List<Integer> list1 = new List<Integer>();

Integer sum=0;


//store 10 random Integer values between 1-100 into a List of Integer
// convert double ~ Integer
for(Integer i=0; i<10 ;i++) {
  Integer num=(Math.random()*100).intValue(); 
    list1.add(num);
    sum+=num;
}

System.debug(list1); 
System.debug('sum '+sum);
System.debug('average '+sum/10); 