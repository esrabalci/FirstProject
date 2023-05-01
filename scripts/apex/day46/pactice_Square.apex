//we will get the same result
//because of the polymorphism -> the ability to the object takes many form
  //Square s = new Square('Box' ,  10) ; 
  //Rectangle s = new Square('Box' ,  10) ; 
Shape s = new Square('Box' ,  10) ; 

//you can refer your child object as its super type
//then you call any method that is overwritten
//calculateArea(); is coming of Square object
//new Square('Box' ,  10) ; 

s.calculateArea();
System.debug('s value is : ' + s);
//you can generalize using the super type and
//expect the right implementation of the method
//if it is rectangle -> it'll calculate the rectangle
//if it is square -> it'll calculate the square
//it's also definition of upCasting
//changing child type to super type ->UP CASTING
   //Shape s = new Square('Box' ,  10) ; 
//changing super type to child type ->DOWN CASTING
   // Square sq  = (Square) s ; 

System.debug('------------------');

//  downcast the variable s DataType to Square 
 Square sq  = (Square) s ; 

System.debug('------------------');

// get the count of all Account and store it in Integer 
AggregateResult result  =  [SELECT Count(Id) total FROM Account]; 
// AggregateResult.get method will return type Object (grandparent of all things in Apex)
// in order to save it as Integer we need to downcast it to Integer 
// just like we did downcast the Shape to Square
Integer count = (Integer) result.get('total');
System.debug('count value is : ' + count);


// Integer x = 10 ;

// Integer y = x ; 