//instantiate the coffeeMaker
//create an instance of the coffeeMaker
//create house variable assign coffeeMaker object
//al of the above are talking about same thing

CoffeeMaker c1 = new CoffeeMaker();
c1.brand='Nespresso';
c1.capacity=9;
System.debug('c1 value is : ' + c1);
System.debug('------------------');

c1.makeCoffee();

System.debug('------------------');

c1.setTimer(5);
c1.setTimer(10);

System.debug('------------------');

c1.clean();
c1.addWater(25);

System.debug('------------------');

c1.addFlavor('Caramel');
c1.addFlavor('Hazelnut');

System.debug('------------------');

c1.setStrength('Vanilla', 1);