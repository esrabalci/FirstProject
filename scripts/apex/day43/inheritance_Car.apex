

Car c2 = new Car('Mustang',11000);
System.debug('c1 value is : ' + c2);
c2.drive();

System.debug('------------------');

ElectricCar c1 = new ElectricCar('Tesla X',95000,10);
System.debug('c1 value is : ' + c1);
c1.drive();
c1.recharge();


System.debug('------------------');

GasCar c3 = new GasCar('Toyota Corolla',25000,2);
System.debug('c3 value is : ' + c3);
c3.drive();
c3.fillUpGas();

System.debug('------------------');



