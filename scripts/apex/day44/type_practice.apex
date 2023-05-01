

// if you have a variable
// you can assign any object of same type (if not abstract)
//or sub type (child class type) to the variable
Animal a1 = new Dog('Sultan', 4 ,' Poodle ' );

System.debug(a1); 

System.debug('------------------');


Animal a2 = new Cat('Poncik', 2, 'Grey');

System.debug(a2); 

System.debug('------------------');

Flyable f1 = new Bird();
Flyable f2 = new Plane();


