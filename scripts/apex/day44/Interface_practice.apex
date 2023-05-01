Bird f1 = new Bird();
f1.fly();

System.debug('------------------');

Plane f2 = new Plane();
f2.fly();

System.debug('------------------');

List<Flyable> flyingThings = new List<Flyable>();
flyingThings.add(f1);
flyingThings.add(f2);

for(Flyable each : flyingThings){
    each.fly();  
}

System.debug('------------------');
Bird f3 = new Bird();
System.debug('f3.flyLongRange() value is : ' + f3.flyLongRange());

System.debug('------------------');

Plane f4 = new Plane();
System.debug('f4.flyLongRange() value is : ' + f4.flyLongRange());

System.debug('------------------');

