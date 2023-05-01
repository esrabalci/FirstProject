/**

9. Write a program that takes a list of strings that represent 
the names of account owners, and counts the number of times jon snow 
appears in the list.

 */

 //task9
List<String>AccountOwners=new List<String>{'Jon Snow','Jon Snow' ,'David C.','Ryan T.','Ezz M.'};
Integer countsNumber=0;
for(String eachAccOwners : AccountOwners){
     
    if(eachAccOwners == 'Jon Snow'){
           countsNumber++;

}
}
        System.debug('John Snow represents the names of account owners '+ AccountOwners  +'and '
 + countsNumber + ' times appears in the list. ' );