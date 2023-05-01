/**
Creating a Contact Variable and initializing it's value
 */

 Contact c1= new Contact();
 //assigning the field values
 c1.FirstName='Esra';
 c1.LastName='Balci';
 c1.Email='esrambalci@hotmail.com';

 System.debug('c1 value is : ' + c1); 
//or they can use directly provide field value inside()
//while assigning the value to the variable
 Contact c2 =new Contact(FirstName='Zeynep', LastName='Yildiz');
 System.debug('c2 value is : ' + c2); 

System.debug('------------------');


//create a list of Contact and initialize it's value
 List <Contact> contacts =new List<Contact>() ;

//store above 2 contact into the list
contacts.add(c1);
contacts.add(c2);
//creating new value in the same variable
contacts.add( new Contact(FirstName='ugur', LastName='mamac') );
//System.debug('contacts values : ' + contacts); 




//print out the first item in the List(either with List syntax or Array syntax)
System.debug('contacts.get(0) value is : ' + contacts.get(0)); //Contact:{FirstName=Esra, LastName=Balci, Email=esrambalci@hotmail.com}
System.debug('contacts[0] value is : ' + contacts[0]);        // Contact:{FirstName=Esra, LastName=Balci, Email=esrambalci@hotmail.com}

System.debug('------------------');

//print out the first item FirstName in the List(either with List syntax or Array syntax)
//String firstContactFirstName= contacts.get(0).FirstName;
String firstContactFirstName= contacts[0].FirstName;
System.debug('firstContactFirstName value is : ' +firstContactFirstName); // Esra

System.debug('------------------');

//Print out the second item in the List (either with list syntax or array)
System.debug('contacts.get(1) value is : ' + contacts.get(1)); //Contact:{FirstName=Zeynep, LastName=Yildiz}
System.debug('contacts[1] value is : ' + contacts[1]);        //Contact:{FirstName=Zeynep, LastName=Yildiz}

System.debug('------------------');

//Print out the second item last name in the List (either with list syntax or array)
 
//String secondContactFirstName= contacts.get(1).FirstName;
String secondContactFirstName= contacts[1].LastName;
System.debug('secondContactFirstName value is : ' + secondContactFirstName); //Yildiz


// Loop through each item and print them out

