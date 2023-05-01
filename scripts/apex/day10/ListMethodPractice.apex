/**

create a list of String that store 4 names
print out the size
print out the item 3
print out the item 1

print out every item using for loop

 */

 List <String> names = new List <String>{'Esra','Ugur','Mel','Jasmin','Ali'};

 System.debug('the size of the Names list: ' +names.size());
//  System.debug();

//print out the item 3
System.debug( names.get(2) );
System.debug( names[2] );


//print out the item 1
System.debug( names.get(0) );

System.debug('-----------------------------------------');

//print out every item using for loop
//we will use the indexes so we need to use for loop

for(Integer index=0  ; index<names.size() ; index++ ){
    System.debug('index ' + index+ ' is ' +names.get(index) + '\n'   ); 
}







/*
// print ONLY the name
for(String eachNames : names){
    System.debug(eachNames);
}
*/