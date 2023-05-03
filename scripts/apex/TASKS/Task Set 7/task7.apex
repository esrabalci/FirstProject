/**

7. Write an Apex code that create List or Array of 5 String values
   - Create a String variable called joinedText
   - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) and last item should not have -
   - Example : Your list {'This','is','The','Way','Student'}
     - value of joinedText 'This-is-The-Way-Student'

     ---------------------------------
*/

/**
The requirement asked to not include - after last item 
loop through each item and append each item into joinedText 
when you reach last item , do not append - at the end 
 */

 List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = '' ; 


 for(Integer i=0; i<strList.size() ; i++) {
    //System.debug('Value at index #'+ i +' is :' + strList.get(i) );
    // Store the current item value into a variable so we can reuse 
    String each = strList.get(i) ; 
    // when we are at the last item in the loop 
    // do not add - at the end  joinedText += each
    if(  i == strList.size()-1  ){
        joinedText += each; 
    }else{
    // when we are not at the last item in the loop 
    // add append current item value and - at the end  joinedText += each + '-' 
        joinedText += each + '-' ; 
    }
 }

 System.debug('joinedText value is : ' + joinedText); 






// String[] text = new String[]{ 'My', 'name', 'is', 'Esra', 'Balci' };
// String joinedText = text.get(0);

// for(Integer i=1; i<text.size(); i++) {
//   joinedText+='-' + text.get(i);
// }
// System.debug(joinedText); 

// List<String> strList = new List<String>{'This','is','The','Way','Student'};
// String word1= strList.get(0);
// String word2= strList.get(1);
// String word3= strList.get(2);
// String word4= strList.get(3);
// String word5= strList.get(4);

// System.debug(word1 + '-' + word2 + '-' + word3 + '-' + word4 + '-' + word5) ; 



