/**

4. Write a program that 
   - create two string variables with values
   - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
   - print 'Its not anagram!!'
   - HINT : use containsOnly method twice on each other

 */

 String a = 'listen';
 String b ='silent';

 if(a.containsOnly(b) && b.containsOnly(a)){
    System.debug('Its anagram!!!'); 
 }else{
    System.debug('Its not anagram!!'); 
 }


