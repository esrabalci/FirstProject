Integer num1 =100;

// Create a variable num2 and assign the value to whatever the value of num1
Integer num2 =num1;
System.debug('num1 value is: '+num2); //100

num2 = 200;
System.debug('num1 value is after num2 update : ' + num1); //100
System.debug('num2 value is after num2 update : ' + num2);  //200

System.debug('------------------');

Case c1 =new Case(Subject= 'My Case');

insert c1;
System.debug('c1 value is : ' + c1); 

// Create a variable c1 and assign the value to whatever the value of c1
Case c2= c1;
System.debug('c2 value is : ' + c2); //Subject=My Case

//they are having the same value and same id basically same person refer to different name
//they are talking about the same thing pointing the same record
//c1 value is : Case:{Subject=My Case, Id=500Dn000007jr7uIAA}
//c2 value is : Case:{Subject=My Case, Id=500Dn000007jr7uIAA}

System.debug('------------------');
//print out c1 and c2 before update 

c2.Subject = 'The guy over the wall';
System.debug('c1 value before update DML is : ' + c1.Subject); // The guy over the wall
System.debug('c2 value before update DML is : ' + c2.Subject); // The guy over the wall

/**
Jafar is a person. 

you can call/refer him as typeMaster
TypeMaster = new Jafar ();

we can also refer him as LD
LD = TypeMaster;

you can call typeMaster or LD at the end we are talking about the same person
so answer will be the same!!
because LD and TypeMaster have the same ID !!

C1 is pointing same value and c2 is pointing the same value after insert they have the same ID
even after you update the value, it'll have the same value as known as REFERENCE

Primitive data type is strait forward. But Objects are more complex
yes, c1 and c2 are just pointers referencing one and the same object. 
You can create more variables: c3, c4 etc pointing to the same Case object, 
                                   like c3 = c2 (or c1)
 
 it is very important to understand the principles of passing by value vs pass-by -reference
 */

