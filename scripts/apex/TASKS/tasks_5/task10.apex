/**

10. Write a program that create a list of strings with 10 values and 
get the count of the items that are not equal to "Admin" or "Developer" using a for loop 
and the continue keyword.
 */

  List<String> roleList = new List<String>();
 
 roleList.add('Java SDET'); 
 roleList.add('Java Developer'); 
 roleList.add('Cybersecurity Analyst'); 
  roleList.add('Developer'); 
 roleList.add('Data Science'); 
 roleList.add('Salesforce Developer'); 
 roleList.add('Salesforce Architect'); 
 roleList.add('Admin'); 
 roleList.add('Sales Manager'); 
 roleList.add('Marketing Director'); 

//  Integer count=0;
//  for(Integer i=0; i<roleList.size() ; i++) {
//      //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
//        String name = roleList.get(i) ;
//      if(  name =='Admin'  ||  name=='Developer' ){
//           continue; //skip the rest of the code and go to next iteration
//      }
//         count++;
// }
 //System.debug('count value is : ' + count); 

  Integer count=0;
 for(Integer i=0; i<roleList.size() ; i++) {
     //System.debug('Value at index #'+ i +' is :' + roleList.get(i) );
       String name = roleList.get(i) ;
     if(  name !='Admin'  &&  name !='Developer' ){
       count++;
     }
 }
 System.debug('count value is : ' + count); 


System.debug('------------------');

String name = 'Admin';

// if the value is Admin or Developer print skip the iteration

if(name=='Admin' || name=='Developer'){
    System.debug('skip the iteration ');
}

// if the value is NOT Admin or Developer print COUNT THIS!!

if( !(name=='Admin' || name=='Developer') ){
    System.debug('COUNT THIS ');
}
