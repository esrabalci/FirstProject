// since we have a class called Phone
// now we have a data type called Phone
// we can use it to create a variable
// we can create an instance of phone
// and assign it to the variable , 
// just like we did for Account, Contact
// and List , Set , and so on 
Phone p1 = new Phone(); 
p1.brand = 'Apple' ; 
p1.price = 899.99 ; 
p1.memorySize = 128 ; 

System.debug(p1) ; 
p1.price = 799.45 ; 
System.debug(p1) ; 

System.debug('------------------');

// Create a phone variable and assign Phone Object to it 
// create an instance of Phone and save it to a variable 
// instantiate a Phone and save it to a variable 
Phone p2 = new Phone(); 
p2.brand = 'Nokia';
p2.price = 499;
p2.memorySize = 512 ; 
System.debug(p2);
System.debug(p2.brand); 

System.debug('------------------');


Phone p3 = new Phone();
p3.brand = 'Google Pixel';
p3.price = 899;
p3.memorySize = 128 ; 
System.debug(p3);
