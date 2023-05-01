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



/*
     7. Write an Apex code that create List or Array of 8 String values
   - store the the index of 2 items in the middle into 2 variables mid1, mid2
   - now imagine you unknown (even) number of items in the list and find out a way to dynamically find the index of item in the middle 
     - if you have 8 items : number 4 and 6 items are in the middle
     - if you have 18 items : number 8 and 9 items are in the middle and so on
     - no loop needed here
   - print out the value of items in the middle




 */


List<String> strList1 = new List<String>{'item1','item2','item3','mid1','mid2','item6', 'item7', 'item8'};
Integer size = strList1.size();
Integer mid1 = size / 2 ;
Integer mid2 = mid1 + 1 ;
System.debug('The items in the middle are ' + mid1 + ' and ' + mid2); 


System.debug('------------------');

String[] gameOfThrones = new String[]{
  'Snow',
  'Targaryen',
  'Stark',
  'Lannister',
  'Dzhamilya',
  'Pavel',
  'Mormont',
  'Tarly',
  'Tyrell',
  'Greyworm'
};

// Integer index = (gameOfThrones.size()-1)/2;
// String mid1 = gameOfThrones.get(index);
// System.debug('mid1 value is : ' + mid1); 
// String mid2 = gameOfThrones.get(index+=1);
// System.debug('mid2 value is : ' + mid2);