public class Fruit {


//every time object is being created, i want this count (public static Integer count) increment by one
//so o put some piece of code that run automatically while object is being created.

//a piece of code run automatically every time object is being created.-->Constructor is a place.!!

//if you don't assign/provide any value , you'll get NULL -->public static Integer count ;
//if you don't assign initial value you'll get null so for that reason assign it to 0
// so we can increment count by one 

    public static Integer count = 0 ; 
    
    
    public Fruit() {
     //inside the constructor, increment the count by one   
        ++count ; 
    }

   
}

/**

in an Apex Anonymous:

Every time that i create a new object, i want this count to increment by one
for the fact, every object will have one value though the lifetime of the entire program

Ex;
if you have an instance field, every time you create a new object, it'll belong to that object
However for static field--> it does not belong to any object. It shared by all 
like the house sign that the neighborhood have.
So every time i create new object, i want this count (public static Integer count) increment by one
so put some piece of code that run automatically while object is being created.

creating object 1, object 2,object 3

System.debug(Fruit.count); //0 --> not to null we assign the 0 --> public static Integer count = 0 ; 
Fruit f1 = new Fruit() ; 
System.debug(Fruit.count); //1
Fruit f2 = new Fruit() ; 
System.debug(Fruit.count); //2
Fruit f3 = new Fruit() ; 
System.debug(Fruit.count); //3
 */