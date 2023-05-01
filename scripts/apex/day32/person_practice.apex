Person p1 = new Person();
Person p2 = new Person();

p1.name='Esra';
p1.age=32;
p1.height=1.72;

p1.printName();

System.debug('------------------');


p2.name='Mamac';
p2.age= 38;
p2.height=1.74;

p2.printName();

System.debug('------------------');

p1.printAge();
p2.printAge();

System.debug('------------------');

p1.describePerson();
p2.describePerson();

System.debug('------------------');

p1.changeName('Ugur M.');
p1.printName();

p2.changeName('Esra M.');
p2.printName();

System.debug('------------------');

p1.setAgeAndHeight(31, 1.75);
p1.describePerson(); // Ugur M. is 31 and Height is 1.75

p2.setAgeAndHeight(25, 1.71);
p2.describePerson(); // Esra M. is 25 and Height is 1.71

System.debug('------------------');

p1.setPersonInfo('Hyder 3.0', 18, 1.90);
p1.describePerson();

p2.setPersonInfo('AI Marina', 16, 1.70);
p2.describePerson();