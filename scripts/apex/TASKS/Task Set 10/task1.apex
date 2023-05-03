/**
. Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
for example : '  DML   iS reaLly CoOl   '
   - Remove the space in the beginning and at the end then print 
         should be => 'DML   iS reaLly CoOl'
   - normalize the space then print 
         should be => 'DML iS reaLly CoOl'
   - check the normalized version of String startsWith 'DML' and print out true | false  (check out the existing method in String class)
   - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false  (check out the existing method in String class)

 */

 //Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
 String sentence ='  DML   iS reaLly CoOl   ';

 // Remove the space in the beginning and at the end then print 
 System.debug('Remove the space in the beginning and at the end : ' + sentence.trim()); 

 //normalize the space then print 
 System.debug('normalize the space : ' + sentence.normalizeSpace()); 

System.debug('------------------');


 //check the normalized version of String startsWith 'DML' and print out true | false

 String normalizedVersion =sentence.normalizeSpace();
 Boolean startsWith=false;

 if(normalizedVersion.startsWith('DML')){
         startsWith=true;
 }else{
        System.debug(startsWith); 
 }

 System.debug(startsWith); 

 System.debug('------------------');
 
//check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive) and print out true | false

if(normalizedVersion.endsWithIgnoreCase('cool')){
      System.debug('true'); 
}else{

    System.debug('false'); 
}