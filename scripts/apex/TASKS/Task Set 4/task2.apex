/**

// practice List using similar approach 
2. Write a program that store the even numbers from 1 to 20 into List of Integer

  then write an apex code to get the sum of all items in the list. 

 */

 //task2
List <Integer > evenNumber = new List <Integer >();
Integer sum=0;

for(Integer count=1;count<=20;count+=2){
         evenNumber.add(count);
         sum+= count ; 
}
   system.debug(sum);
