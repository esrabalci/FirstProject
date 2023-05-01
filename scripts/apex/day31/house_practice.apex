//instantiate the house
//create an instance of the house
//create house variable assign House object

House h1 =new House();
h1.style = 'Victorian ';
h1.year = 2023;
h1.hasGarage = true;
h1.squareFootage=3000;

System.debug('h1 value is : ' + h1);

System.debug('------------------');


House h2 =new House();

h2.style= 'Floridian';
h2.year= 1999;
h2.hasGarage= false;

System.debug('h2 value is : ' + h2);


System.debug('------------------');


//House h1 = new House() ; 
// //constructor no param
// System.debug('h1 value is : ' + h1);
// //h1 value is : House:[hasGarage=null, squareFootage=null, style=null, year=null]
 House h3 = new House('Victorian');
 System.debug('h3 value is : ' + h3);
// //h2 value is : House:[hasGarage=null, squareFootage=null, style=Victorian, year=null]

 House h4 = new House('Victorian', 2023, true, 7000);
 System.debug('h4 value is : ' + h4);
// //h3 value is : House:[hasGarage=true, squareFootage=7000, style=Victorian, year=2023]