
/**

you can exit any type of loop early
using the keyword break when needed

 */

 //create a list of integer with some items in it 
 List<Integer> numList = new List<Integer>{7,12,15, 10, 17, 100, 4};

//loop through each and every item, when you find 10, stop looping
for(Integer eachNum : numList){

    System.debug(eachNum);//it will take 10 first then print 
  if( eachNum ==10 ){
      system.debug('YAY');
     // in order to break the loop to stop looking
    //you can use break statement
    break;
  } 

// if you don't want to take 10 print here
// run top the button so it wont take the 10 because it'll break before printing
// System.debug(eachNum);

}
