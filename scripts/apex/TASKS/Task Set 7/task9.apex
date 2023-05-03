/*
     9. Write an Apex code that create List or Array of 8 String values
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