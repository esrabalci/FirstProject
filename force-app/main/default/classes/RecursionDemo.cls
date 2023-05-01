public class RecursionDemo {

//count down from N to 1 in this method
//print out
public static void printNumber(Integer n){

System.debug('n value is : ' + n);
 //without return checks if n is bigger than 1, if yes it prints count from 1 to n 
 if(n>1){
 printNumber(n-1);
 
}

}
}

 /// OR

 /**
   public static void printNumber(Integer n){

System.debug('n value is : ' + n);
 //  with return checks if n is smaller than 1, if yes it gets out of the counting process
 if(n<=1){
 System.debug('We are Done!'); 
 return ;
 }
 printNumber(n-1);
}
  */