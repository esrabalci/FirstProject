//this will not work, Abstract can not create object out of ABSTRACTOR
//Animal a1 = new Animal('abc',2);

Dog d1 = new Dog('Sharik',3,'Golden Retriever' );
System.debug('d1 value is : ' + d1);
d1.makeNoise();

System.debug('d1.getInfo(\'Hills\') value is : ' 
                + d1.getInfo('Hills'));


System.debug('------------------');

Cat c1 = new Cat('Poncik',2,'Grey');
System.debug('c1 value is : ' + c1);
System.debug('c1.getInfo(\'Fish\') value is : ' +c1.getInfo('Fish') );

System.debug('------------------');

List<Animal> animalLst = new List<Animal>();
animalLst.add(new Dog(' Bobik ', 2 ,' Toy Terrier '));
animalLst.add(new Dog( ' Roki ', 5 ,' German Shapper'));

animalLst.add(new Cat( 'Poncik ', 2 ,' Grey'));
animalLst.add(new Cat( ' Eva',  3 ,' White '));


for(Animal each : animalLst) {

System.debug('animal value is : ' + each);

each.makeNoise();

System.debug('each.getInfo(\'Fish\') value is : ' + each.getInfo('Fish'));

}