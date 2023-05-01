
System.debug('-------   METHOD-----------');

//create First object , there is no argument 
// that means even if you dont create an constructor in the class
//you'll get as a default 
//given default the constructor, there is no argument
//so you can create step by step
// Employee e1 = new Employee();
// e1.name='Zeynep';
// e1.role='Developer';
// e1.id=100;

// System.debug(e1); 
// //Employee:[id=100, name=Zeynep, role=Developer]

System.debug('-------constructor -----------');

//IF WE WANT TO SET UP ALL THE ATTRIBUTE,
// ALL THE FIELD OF THE OBJECT WHILE THE OBJECT WAS CREATED
// USE CONSTRUCTOR --> we create all the attributes ready

// we can't create an value inside of our constructor
//it'll give an error because 
//you need to create a constructor with the arguments
   Employee e2 = new Employee ('Esra','Developer',101);
    System.debug(e2); 
//Employee:[id=101, name=Esra, role=Developer];

//if you want to create an object with the argument
//you should create a constructor with the argument in the class

System.debug('------------------');
// objectName.methodName 
  e2.obj();

System.debug('------------------');

 e2.print();
System.debug('------------------');

  e2.study('Methods');
//The Employee with ID of 101 is studying topic

System.debug('------------------');


//to retrieve ever each value 
//you can get the value calling by name
//objectName(e2).instanceVariableName(name)
System.debug(e2.name); 
System.debug(e2.role); 
System.debug(e2.id); 

//but if you have constructor with 3 argument
//and if you give only 2 value for this constructor
//you'll get the error 
//if you want to have specific value , you need to call



System.debug('------------------');

//num--> 2 because we have 2 exams
e2.averageScore(90.8, 72.5, 2);
//The  average score of Esra is 81.65

System.debug('------------------');

//when we use return method 
//we can get the result using by System.debug
System.debug('The  average score is '+e2.averageScore2(90.8, 72.5, 2));
//The  average score is 81.65


System.debug('-----STATIC-------------');

Employee.taxRate(); 


//After created static variable, you'll get value in your method
//even it doesn't have the variable in the argument
//we can use everywhere in the class

//before creating static variable;
//e2.print();//Employee:[id=101, name=Esra, role=Developer]


//after creating static variable
 e2.print();//Employee:[id=101, name=Esra, role=Developer, taxRate=null]

   Employee e3 = new Employee ('Ahmet','Developer',102);
   Employee e4 = new Employee ('Mehmet','Developer',103);

e3.print();
e4.print();

// declare the variable for taxRate
//even if i dont use argument in the method
Employee.taxRate = 0.2;

e2.print();//Employee:[id=101, name=Esra, role=Developer, taxRate=0.2]
e3.print();
e4.print();




