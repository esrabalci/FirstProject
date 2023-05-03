/**

8. Write a program that create a list of strings and print the values 
that are not equal to "Salesforce", using a for loop and the continue keyword.

 */

 List<String> wordsList = new List<String>{
  'Salesforce',
  'Java',
  'Apex',
  'Javascript',
  'CYDEO'
};

for(Integer i =0; i< wordsList.size();i++){

     if(wordsList.get(i)=='Salesforce'){
            continue;
     }
     system.debug(wordsList.get(i));
}
