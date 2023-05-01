
// Car c1= new Car();
// System.debug('c1 value is : ' + c1);
//c1 value is : Car:[model=unknown model, price=10000]

System.debug('------------------');

List<Car> carLst = new List<Car>();

//add 2 electricCar
//add 2 gasCar

carLst.add(new ElectricCar('Tesla X',95000,10) );
carLst.add(new ElectricCar(' Lucid Air',85000,9) );
carLst.add( new GasCar ('VW ID4',50000,2 ));
carLst.add( new GasCar ('Dodge Charger',60000,3 ));

//loop through each and every car print out

for(Car each : carLst) {

System.debug('car value is : ' + each);

each.drive();

}

System.debug('------------------');
