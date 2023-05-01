/**
declare List of Integer variable and initialize it's value(empty)
Fill up the list with 100 items, starting with 1 ---> 100
 */

 List <Integer > numberList = new List <Integer > ();
  
  for(Integer count =1 ; count <=100 ; count++){

         numberList.add(count); 
        
 }

 System.debug(numberList);
 // get the size of the list using size method of the list
 System.debug(numberList.size());


System.debug('------------------------------------');
 System.debug('                                ');

 
////print Hello World 15 times
// Loop helps how many times you want to repeat
// that is nothing to do with LIST , List helps to create value
//Loop helps to repeat values

List<String> helloWorld = new List<String>();

 for(Integer c=1 ;c<=15 ; c++){
    helloWorld.add('Hello World');
 }
System.debug(helloWorld);


System.debug('------------------------------------');
 System.debug('                                ');

/**
 
 create a list of Integer and store 15 items
all item value should be 10
  */

  List<Integer> voteNumbers = new  List<Integer>();
     voteNumbers.add(10);
   for(Integer countNumbers = 1 ; countNumbers<=15;countNumbers++){
               voteNumbers.add(10);
   }
   system.debug(voteNumbers);

System.debug('------------------------------------');
 System.debug('                                ');




// How to count the items inside the list
//      variableName.size ()
// so we can get how many item you have in the list
// size() method of list


//Integer voteCount = voteNumbers.size() ;
//system.debug( voteCount );
               // OR you can directly print it out WITHOUT SAVING!
 system.debug( voteNumbers.size() ); 

System.debug('------------------------------------');
 System.debug('                                ');




 





