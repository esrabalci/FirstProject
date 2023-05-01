Person p3 = new Person();

p3.setPersonInfo('Esra', 25, 1.70);
p3.describePerson();

System.debug('------------------');

p3.changeName('Mel');
p3.printName();

System.debug('------------------');

p3.setAgeAndHeight(20, 1.76);
p3.describePerson();


System.debug('------------------');


String upperCaseName = p3.getAllCapName();

System.debug('Uppercase name value is '+upperCaseName); // MEL
//                    OR
System.debug('p3.getAllCapName() value is : ' + p3.getAllCapName()); //MEL

System.debug('------------------');

Boolean isAdult = p3.isEligibleForVote();
System.debug('isAdult value is : ' + isAdult);
//isAdult value is : true

p3.setAgeAndHeight(16, 1.80);
System.debug('p3.isEligibleForVote value is : ' + p3.isEligibleForVote());
//p3.isEligibleForVote value is : false

System.debug('------------------');

System.debug('p3.getAgeGroup() value is : ' + p3.getAgeGroup());

System.debug('------------------');

Boolean isHigher = p3.isHigherThan(1.70); //true
System.debug('MEL is higher than 1.70 : ' + isHigher);
//MEL is higher than 1.70 : true

System.debug('p3.isHigherThan(1.90) is : '+ p3.isHigherThan(1.90)); 
//p3.isHigherThan(1.90) is : false
